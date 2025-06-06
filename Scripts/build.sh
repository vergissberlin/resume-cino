#!/usr/bin/env sh

# Build PDF files for each Markdown file in the content directory
# and place them in the output directory.

################################################################################
## Include functions
################################################################################
. Scripts/functions.sh


################################################################################
## Variables
################################################################################

# Get current date in format DD.MM.YYYY
document_date=$(date +%d.%m.%Y)

# Get current year in format YYYY
document_date_year=$(date +%Y)

# Get latest git tag
document_git_tag=$(git describe --tags --abbrev=0)

# Load dot env file with variables
set -a
source .env
set +a


################################################################################
## Environment specific replacements commands
################################################################################

if [ $CI ]; then
	sedcmd="sed -i"
else
	sedcmd="sed -i ''"
fi

################################################################################
## Requirement
################################################################################

# Check if Docker is installed
if ! [ -x "$(command -v docker)" ]; then
  echo "🚨\tDocker is not installed. Please install Docker!"
  exit 1
fi

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
  echo "🚨\tDocker is not running. Please start Docker!"
  exit 1
fi

# Check if sed is installed
if ! [ -x "$(command -v sed)" ]; then
  echo "🚨\tSed is not installed. Please install Sed!"
  exit 1
fi

# Pull docker image ghcr.io/vergissberlin/pandoc-eisvogel-de from GitHub Container Registry if it doesn't exist
if ! docker image inspect ghcr.io/vergissberlin/pandoc-eisvogel-de > /dev/null 2>&1; then
    echo "👉\tPull docker image ghcr.io/vergissberlin/pandoc-eisvogel-de from GitHub Container Registry"
    docker pull ghcr.io/vergissberlin/pandoc-eisvogel-de
fi


################################################################################
## Prepare
################################################################################

# Create temporary directory
mkdir -p Temp

# Copy all Markdown files from the content directory to the temporary directory
cp -R Content/* Temp

# Create the output directory if it doesn't exist and delete all files in it
mkdir -p Results
rm -rf Results/*


################################################################################
## Modifier
################################################################################

# Replace some characters in the Markdown files which are not supported by Pandoc
# and place the modified files in the temporary directory
echo "✅\tFilter and replace characters in Markdown files"
for file in Temp/*.md; do
    sh Scripts/filter.sh ${file}
    sh Scripts/replace.sh ${file}
done

# Delete files in temporary directory which are not Markdown files
find Temp -type f -name '*.md"' -delete

################################################################################
## Generate PDF with combined content
################################################################################

echo "\n✅\tGenerate PDF with combined content"

# Remove the temporary directory containing the Markdown files
rm -rf "Temp/*.md*"

# Combine all Markdown files in the content directory into a single Markdown file with empty lines between contents
echo "👉\tCombine all Markdown files into a single Markdown file with empty lines"
for file in Content/*.md; do
  cat "$file" >> Temp/combined.md
  echo "\n" >> Temp/combined.md
  echo "\pagebreak" >> Temp/combined.md
done

# Filter and replace characters in the single Markdown file
echo "👉\tFilter and replace characters in single Markdown file"
sh Scripts/filter.sh Temp/combined.md

## Replace some characters in the single Markdown file which are not supported by Pandoc
echo "👉\tReplace characters in single Markdown file"
sh Scripts/replace.sh Temp/combined.md

# Generate a single PDF file from all Markdown files in the content directory
echo "👉\tGenerate PDF for all files"
docker run -i -v $PWD:/data ghcr.io/vergissberlin/pandoc-eisvogel-de \
  -o Results/${RESUME_FILENAME}.pdf \
  --defaults Template/Config/defaults-pdf.yml \
  --metadata-file Template/Config/metadata-pdf.yml \
  -V title="${RESUME_TITLE}" \
  -V subtitle="${RESUME_SUBTITLE}" \
  -V subject="${RESUME_SUBJECT}" \
  -V lang="${RESUME_LANGUAGE}" \
  -V author="${RESUME_AUTHOR}" \
  -V description="Bewerbung von ${RESUME_AUTHOR}" \
  -V rights="© ${document_date_year} ${RESUME_NAME}, ${RESUME_LICENSE}" \
  -V date="$document_date" \
  Temp/combined.md;

# Generate a singe epub file from all Markdown files in the content directory
echo "👉\tGenerate EPUB for all files"
docker run -i -v $PWD:/data ghcr.io/vergissberlin/pandoc-eisvogel-de \
  -o Results/${RESUME_FILENAME}.epub \
  --defaults Template/Config/defaults-epub.yml \
  --metadata-file Template/Config/metadata-epub.yml \
  -V lang="${RESUME_LANGUAGE}" \
  -V title="${RESUME_TITLE}" \
  -V subtitle="${RESUME_SUBTITLE}" \
  -V subject="${RESUME_SUBJECT}" \
  -V author="Autor: ${RESUME_AUTHOR}" \
  -V titlepage-logo="Content/Media/Avatar/andre-lademann-circle.png" \
  -V description="Bewerbung von ${RESUME_AUTHOR}" \
  -V rights="© ${document_date_year} ${RESUME_NAME}, ${RESUME_LICENSE}" \
  -V ibooks.version="$document_git_tag" \
  -V date="$document_date" \
  Temp/combined.md;


################################################################################
## Clean up
################################################################################

# Remove the temporary directory
rm -rf Temp

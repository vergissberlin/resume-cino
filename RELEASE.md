# Release Documentation

## Overview
This document describes the release process for the Resume project. Each release contains a PDF and EPUB version of the resume.

## Release Process

### 1. Preparation
- Ensure all changes are committed
- Update the version number in the Git tag
- Review changes in the changelog

### 2. Release Creation
1. Create a new Git tag:
   ```bash
   git tag X.X.X
   git push origin X.X.X
   ```
2. The GitHub Action workflow will be triggered automatically
3. PDF and EPUB files will be created
4. A new release will be created on GitHub

### 3. Release Assets
- PDF file: `andre-lademann_X.X.X.pdf`
- EPUB file: `andre-lademann_X.X.X.epub`

### 4. Release Notes
Each release contains:
- A list of changes
- Download links for PDF and EPUB
- Badges for different formats

## Version History

### Versioning
- Major Version (X.0.0): Major changes
- Minor Version (0.X.0): New features
- Patch Version (0.0.X): Bug fixes

### Changelog
Each release should include a changelog documenting the most important changes:
- New features
- Bug fixes
- Breaking changes
- Improvements

## Usage

### PDF Download
1. Go to [GitHub Releases](https://github.com/vergissberlin/resume-cino/releases)
2. Select the desired version
3. Click on the PDF download link

### EPUB Download
1. Go to [GitHub Releases](https://github.com/vergissberlin/resume-cino/releases)
2. Select the desired version
3. Click on the EPUB download link

## Troubleshooting

### Common Issues
1. **Release not created**
   - Check GitHub Actions
   - Ensure the Git tag is correct

2. **Missing assets**
   - Check build logs
   - Ensure files are generated correctly

3. **Incorrect version number**
   - Check Git tag
   - Ensure version number is correct

## Support
For issues or questions:
1. Create an issue on GitHub
2. Describe the problem in detail
3. Include relevant logs or screenshots

## License
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/). 
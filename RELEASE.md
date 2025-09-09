# Release Documentation

## Overview
This document describes the release process for the Resume project. Each release contains a PDF and EPUB version of the resume.

**New**: This project now uses [release-please](https://github.com/googleapis/release-please) for automated version management and changelog generation.

## Automated Release Process with release-please

### How it works
1. **Conventional Commits**: Use [conventional commit](https://www.conventionalcommits.org/) messages for your changes
2. **Automatic PR Creation**: release-please automatically creates release PRs based on your commit messages
3. **Automated Versioning**: Versions are bumped automatically based on commit types
4. **Changelog Generation**: CHANGELOG.md is automatically updated
5. **Automated Builds**: PDF and EPUB files are built and attached to releases automatically

### Commit Message Format
Use conventional commit messages to trigger appropriate version bumps:

- `feat:` - New feature (minor version bump)
- `fix:` - Bug fix (patch version bump)  
- `docs:` - Documentation changes (patch version bump)
- `style:` - Formatting changes (patch version bump)
- `refactor:` - Code refactoring (patch version bump)
- `chore:` - Maintenance tasks (patch version bump)

For breaking changes, add `!` after the type: `feat!:` (major version bump)

### Example Workflow
1. Make changes to your resume content
2. Commit with conventional message: `feat: add new certification section`
3. Push to main branch
4. release-please creates a release PR automatically
5. Review and merge the release PR
6. release-please creates a GitHub release with PDF and EPUB attachments

## Manual Release Process (Legacy)

### For emergencies or special cases only
1. Create a Git tag starting with "manual-": 
   ```bash
   git tag manual-X.X.X
   git push origin manual-X.X.X
   ```
2. The legacy workflow will trigger and create a manual release

## Release Assets
Each release includes:
- PDF file: `cino-andrelademann.pdf`
- EPUB file: `cino-andrelademann.epub`
- Automated changelog with all changes since last release

## Version History & Changelog

### Versioning (Semantic Versioning)
- **Major Version (X.0.0)**: Breaking changes or major content restructuring
- **Minor Version (0.X.0)**: New features, sections, or significant additions
- **Patch Version (0.0.X)**: Bug fixes, typos, minor improvements

### Changelog
The CHANGELOG.md file is automatically maintained by release-please and includes:
- New features
- Bug fixes  
- Breaking changes
- Improvements
- Links to commits and PRs

## Usage

### Download Latest Release
1. Go to [GitHub Releases](https://github.com/vergissberlin/resume-cino/releases)
2. Click on the latest release
3. Download the PDF or EPUB file

### Download Specific Version
1. Go to [GitHub Releases](https://github.com/vergissberlin/resume-cino/releases)
2. Find the desired version
3. Download the PDF or EPUB file

## Troubleshooting

### Common Issues
1. **Release PR not created**
   - Ensure you're using conventional commit messages
   - Check that commits are pushed to the main branch
   - Verify the release-please workflow is enabled

2. **Release build failed**
   - Check GitHub Actions logs
   - Ensure Docker and build dependencies are available
   - Verify the build scripts are executable

3. **Missing assets in release**
   - Check that the build completed successfully
   - Verify PDF and EPUB files were generated
   - Check upload permissions and GitHub token

### Force a Release
If you need to force a release without waiting for conventional commits:
1. Manually edit the version in package.json
2. Update CHANGELOG.md with your changes
3. Commit with message: `chore(release): manually trigger release`

## Migration from Manual Process

### What Changed
- ✅ Automated version bumping based on conventional commits
- ✅ Automated changelog generation
- ✅ Automated release PR creation
- ✅ Maintained existing build process and asset naming
- ✅ Legacy manual process still available for emergencies

### What Stays the Same
- Same PDF and EPUB build process
- Same file naming convention
- Same GitHub releases location
- Same Docker-based building

## Support
For issues or questions:
1. Create an issue on GitHub
2. Describe the problem in detail
3. Include relevant logs or screenshots

## License
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/). 
# GitHub Actions Setup for EMSDdoc

## Overview
This document describes the GitHub Actions workflow setup for automatic DOCX to Markdown conversion in the EMSDdoc repository.

## Workflow Configuration
**File:** `.github/workflows/convert-docx-to-markdown.yml`

### Triggers
- **Push events:** Automatically triggers when `.docx` files are modified and pushed to the repository
- **Manual trigger:** Can be manually triggered via GitHub Actions interface (`workflow_dispatch`)

### Functionality
The workflow performs the following steps:

1. **Environment Setup**
   - Runs on Ubuntu latest
   - Sets up Python 3.x
   - Installs pandoc for document conversion
   - Installs pypandoc Python library

2. **File Conversion**
   - Identifies changed DOCX files from the latest commit
   - Converts DOCX files to GitHub-flavored Markdown using pandoc
   - Applies filename mapping based on lookup table for specific files

3. **Filename Mapping**
   The workflow includes a lookup table that renames specific files during conversion:
   ```
   urs_ref → urs_a1.md
   ps_refp → ps_i1.md
   pdd_tem → pdd_i2.md
   pdd_refp → pdd_i1.md
   sm_ref → sm_i1.md
   sip_tem → sip_i1.md
   copm_tem → copm_i1.md
   drp_ref → drp_i1.md
   dm_tem → dm_i1.md
   aom_tem → aom_i1.md
   pm_tem → pm_i1.md
   uatp_tem → uatp_i1.md
   uatp_refp → uatp_i2.md
   stp_refp → stp_i1.md
   por_tem → por_i1.md
   hp_tem → hp_i1.md
   ```

4. **Auto-commit**
   - Commits converted Markdown files back to the repository
   - Uses GitHub Actions bot credentials for commits

## Usage Instructions

### For Repository Maintainers
1. Upload or modify DOCX files in the repository
2. Push changes to trigger automatic conversion
3. Converted Markdown files will be automatically committed

### Manual Trigger
1. Go to repository's Actions tab on GitHub
2. Select "Convert DOCX to Markdown" workflow
3. Click "Run workflow" button

### File Organization
- DOCX files can be placed in any directory within the repository
- Converted Markdown files will be created in the same directory as the source DOCX files
- If a filename mapping exists, the output file will use the mapped name

## Technical Details

### Dependencies
- **pandoc:** Document conversion engine
- **pypandoc:** Python wrapper for pandoc
- **bash:** Shell scripting for file processing

### Git Configuration
- Commits are made using `github-actions[bot]` identity
- Full git history is fetched to enable file change detection

### Error Handling
- Gracefully handles cases where no DOCX files are changed
- Creates directories as needed for output files
- Only commits if there are actual changes to commit

## Security Considerations
- Workflow runs with standard GitHub Actions permissions
- No secrets or sensitive data are required
- Uses official GitHub Actions and trusted package sources

## Troubleshooting

### Common Issues
1. **Workflow not triggering:** Ensure DOCX files are actually changed in the commit
2. **Conversion errors:** Check that DOCX files are not corrupted
3. **Permission errors:** Verify repository has Actions enabled

### Monitoring
- Check GitHub Actions tab for workflow execution logs
- Review commit history for auto-generated commits
- Monitor for any conversion errors in workflow logs

## Maintenance
- Regularly update action versions (checkout@v4, setup-python@v4)
- Review and update filename lookup table as needed
- Monitor for new pandoc features that might improve conversion quality

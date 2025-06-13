# GitHub Actions Setup for EMSDdoc

## Quick Start
This repository now includes a GitHub Actions workflow that automatically converts DOCX files to Markdown when they are pushed to the repository.

## What's Included
- **Workflow File:** `.github/workflows/convert-docx-to-markdown.yml`
- **Documentation:** `memlog/github_actions_setup.md` (detailed setup guide)
- **Task Log:** `memlog/task_log.md` (setup process tracking)

## How It Works
1. **Automatic Trigger:** When you push DOCX files to the repository, the workflow automatically runs
2. **Conversion:** DOCX files are converted to GitHub-flavored Markdown using pandoc
3. **File Naming:** Special files are renamed according to a predefined lookup table
4. **Auto-Commit:** Converted Markdown files are automatically committed back to the repository

## Next Steps
1. **Fix Personal Access Token:** Your PAT needs the `workflow` scope to push GitHub Actions files:
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Edit your existing token or create a new one
   - Ensure the `workflow` scope is checked
   - Update your local Git credentials with the new token

2. Push these files to your EMSDdoc repository: `https://github.com/ZorroCheng-MC/EMSDdoc`
3. Ensure GitHub Actions is enabled in your repository settings
4. Test by adding a DOCX file and pushing changes
5. Monitor the workflow in the "Actions" tab on GitHub

## Troubleshooting Push Error
If you see this error:
```
! [remote rejected] main -> main (refusing to allow a Personal Access Token to create or update workflow `.github/workflows/convert-docx-to-markdown.yml` without `workflow` scope)
```
Your Personal Access Token needs the `workflow` scope to create GitHub Actions files.

## Manual Trigger
You can also manually run the conversion workflow:
1. Go to your repository's "Actions" tab
2. Select "Convert DOCX to Markdown"
3. Click "Run workflow"

## File Mapping
The workflow includes automatic renaming for specific files:
- `urs_ref.docx` → `urs_a1.md`
- `ps_refp.docx` → `ps_i1.md`
- And 14 other predefined mappings

For complete documentation, see `memlog/github_actions_setup.md`.

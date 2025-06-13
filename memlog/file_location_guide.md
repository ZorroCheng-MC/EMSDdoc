# File Location Guide for DOCX to Markdown Conversion

## How File Locations Work

**Yes, the converted Markdown files are placed in the SAME folder as the original DOCX files.**

## The Logic:
```bash
dirpath=$(dirname "$file")          # Gets the directory of the original DOCX
output_file="$dirpath/$output_name.md"  # Places MD file in same directory
```

## Examples:

### Example 1: Root Directory
- **DOCX location:** `my_document.docx`
- **MD location:** `my_document.md`

### Example 2: Subdirectory
- **DOCX location:** `docs/user_guide.docx`
- **MD location:** `docs/user_guide.md`

### Example 3: Deep Directory Structure
- **DOCX location:** `project/reports/2024/quarterly_report.docx`
- **MD location:** `project/reports/2024/quarterly_report.md`

### Example 4: With Filename Mapping
- **DOCX location:** `templates/urs_ref.docx`
- **MD location:** `templates/urs_a1.md` (renamed via lookup table)

## Key Points:

1. **Same Directory:** MD files are always created in the same directory as their source DOCX files
2. **Directory Creation:** If nested directories don't exist, they're automatically created
3. **Filename Mapping:** Some files get renamed based on the lookup table, but stay in the same folder
4. **Original Files:** DOCX files remain untouched - only MD files are added

## Repository Structure Example:
```
your-repo/
├── README.md
├── document1.docx          ← Original DOCX
├── document1.md            ← Generated MD (same folder)
├── docs/
│   ├── user_guide.docx     ← Original DOCX
│   └── user_guide.md       ← Generated MD (same folder)
└── templates/
    ├── urs_ref.docx        ← Original DOCX
    └── urs_a1.md           ← Generated MD (renamed, same folder)
```

This keeps the repository organized and maintains the folder structure you've established for your documents.

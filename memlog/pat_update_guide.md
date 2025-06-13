# Personal Access Token Update Guide

## Repository Information
- **Repository:** https://github.com/ZorroCheng-MC/EMSDdoc.git
- **Account:** ZorroCheng-MC
- **Local Git User:** zorrohk (zorro.cheng@gmail.com)

## Which Token to Update
You need to update the Personal Access Token for the **ZorroCheng-MC** GitHub account since that's the account that owns the EMSDdoc repository.

## Steps to Update the Correct Token

### 1. Identify the Current Token
Since you're using macOS keychain (`credential.helper=osxkeychain`), check your keychain:
```bash
# Check what's stored in keychain for GitHub
security find-internet-password -s github.com
```

### 2. Update the Token on GitHub
1. Log into the **ZorroCheng-MC** GitHub account
2. Go to Settings → Developer settings → Personal access tokens → Tokens (classic)
3. Find the token used for this repository (or create a new one)
4. Edit the token and ensure these scopes are checked:
   - ✅ `repo` (Full control of private repositories)
   - ✅ `workflow` (Update GitHub Action workflows) **← This is the missing scope**
   - ✅ `write:packages` (if you use GitHub Packages)
5. Save the token and copy the new value

### 3. Update Local Credentials
Option A - Update via git push (recommended):
```bash
git push
# When prompted, enter your username: ZorroCheng-MC
# When prompted for password, paste the NEW token (not your GitHub password)
```

Option B - Update keychain directly:
```bash
# Remove old credential
git credential-osxkeychain erase
host=github.com
protocol=https

# Next git operation will prompt for new credentials
```

### 4. Verify the Fix
```bash
git push
```

## Troubleshooting
- If you're still getting the workflow scope error, double-check you updated the token for the **ZorroCheng-MC** account
- If you have multiple GitHub accounts, make sure you're logged into the correct one when updating the token
- The token needs the `workflow` scope specifically to create/update `.github/workflows/*.yml` files

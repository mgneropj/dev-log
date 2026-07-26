# Dev Log

Automated daily GitHub activity — one commit every morning, no manual work required.

## How it works

- Every day at **6:00 AM IST**, GitHub Actions creates a log file and commits it **as you**.
- Commits use your verified email so they count on your **green contribution graph**.
- You can still edit logs manually anytime for extra commits.

## One-time setup (required for automation)

### 1. Create a GitHub token

1. Open [github.com/settings/tokens](https://github.com/settings/tokens)
2. Click **Generate new token (classic)**
3. Name it `dev-log-automation`
4. Check **`repo`** (full control of private repositories)
5. Generate and **copy the token**

### 2. Add the token as a repo secret

1. Open [github.com/mgneropj/dev-log/settings/secrets/actions](https://github.com/mgneropj/dev-log/settings/secrets/actions)
2. Click **New repository secret**
3. Name: `GH_PAT`
4. Value: paste your token
5. Click **Add secret**

### 3. Verify your email

Make sure `kolherushikesh04@gmail.com` is verified in [GitHub email settings](https://github.com/settings/emails).

### 4. Test the workflow

1. Open [Actions](https://github.com/mgneropj/dev-log/actions)
2. Click **Daily Dev Log** → **Run workflow** → **Run workflow**
3. Check that a new commit appears under your name

After this, automation runs every day with no commands needed.

## Manual log (optional)

```powershell
notepad C:\Users\kolhe\Projects\dev-log\logs\2026-07-26.md
git add .
git commit -m "log: 2026-07-26"
git push
```

Or create a blank log locally:

```powershell
.\scripts\new-log.ps1
```

## Schedule

Runs daily at **6:00 AM IST** (00:30 UTC). Edit `.github/workflows/daily-log.yml` to change the time.

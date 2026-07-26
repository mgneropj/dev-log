# Dev Log

Daily learning and coding notes — one commit per day to keep the streak alive.

## How it works

- Every day, a GitHub Action creates a new log file under `logs/`.
- Open that day's file and fill in what you learned, built, or practiced.
- Commit your edits anytime — extra commits are welcome.

## Log format

Each file lives at `logs/YYYY-MM-DD.md` and uses this structure:

```markdown
# Dev Log — YYYY-MM-DD

## What I learned today

## What I built / practiced

## Notes
```

## Setup (one time)

1. Create a new **public** repo on GitHub named `dev-log` (or any name you like).
2. Push this project:

   ```powershell
   cd C:\Users\kolhe\Projects\dev-log
   git remote add origin https://github.com/YOUR_USERNAME/dev-log.git
   git add .
   git commit -m "Initial dev log setup"
   git branch -M main
   git push -u origin main
   ```

3. Enable GitHub Actions on the repo (on by default for public repos).
4. After the first scheduled run, you'll see a new log file each day.

## Optional: add a log manually

```powershell
.\scripts\new-log.ps1
```

## Schedule

The daily workflow runs at **6:00 AM IST** (00:30 UTC). You can change this in `.github/workflows/daily-log.yml`.

# Sage articles — GitHub Pages

Static HTML for Medium Import and public reading.

**Live URL (after deploy):** [https://vikasindoria100.github.io/sage-articles/](https://vikasindoria100.github.io/sage-articles/)

## Deploy (one command)

From your **Mac Terminal** (not Cursor's sandbox — needs browser login):

```bash
cd "/Users/viksi/Documents/Medium & Substack/content/sage/medium/github-pages"
./deploy.sh
```

First run opens GitHub login in the browser. After that it pushes `index.html` and enables Pages.

## Manual steps (if you prefer)

1. Repo → **Settings** → **Pages**
2. **Build and deployment** → Source: **Deploy from a branch**
3. Branch: **`main`** → folder **`/ (root)`** → Save
4. Wait 1–3 minutes for the green “Your site is live at…” banner

### 4. Import into Medium

1. Open your public URL: [https://vikasindoria100.github.io/sage-articles/](https://vikasindoria100.github.io/sage-articles/)
2. Confirm the article renders in the browser
3. Go to [medium.com/p/import](https://medium.com/p/import)
4. Paste that URL → **Import**
5. Add cover image + tags → Publish

If Medium is your primary home, remove “Originally published at GitHub Pages” from the draft footer.

## Update an article

Sync HTML from the source file, commit, push:

```bash
cp ../the-public-api-key-import.html index.html
git add index.html
git commit -m "Update public API key article"
git push
```

Pages redeploys automatically in ~1 minute.

## Files

| File | Purpose |
|------|---------|
| `index.html` | Import-ready article (headings, bold, italic) |
| `README.md` | This deploy guide |

# Sage articles — GitHub Pages

Static HTML for Medium Import and public reading.

**Live URL (after deploy):** `https://YOUR_GITHUB_USERNAME.github.io/sage-articles/`

## One-time setup

### 1. Create the repo on GitHub

1. Go to [github.com/new](https://github.com/new)
2. Repository name: **`sage-articles`**
3. Public
4. Do **not** add README, .gitignore, or license (this folder already has them)
5. Create repository

### 2. Push from this folder

Replace `YOUR_GITHUB_USERNAME` with your GitHub username:

```bash
cd "content/sage/medium/github-pages"
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/sage-articles.git
git push -u origin main
```

### 3. Enable GitHub Pages

1. Repo → **Settings** → **Pages**
2. **Build and deployment** → Source: **Deploy from a branch**
3. Branch: **`main`** → folder **`/ (root)`** → Save
4. Wait 1–3 minutes for the green “Your site is live at…” banner

### 4. Import into Medium

1. Open your public URL: `https://YOUR_GITHUB_USERNAME.github.io/sage-articles/`
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

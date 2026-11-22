# chiaraplizz.github.io

Single-page academic website built with Jekyll and deployed to GitHub Pages
by `.github/workflows/jekyll.yml` on every push to `source`.

## Where to edit

| What | File |
|---|---|
| Bio (header text) | `_pages/about.md` |
| Name, email, social links, photo, CV | `_config.yml` |
| News | one file per item in `_news/` (`date:` in front matter + text) |
| Publications | `_bibliography/papers.bib` |
| Teaching, Awards, Talks, Activities | `_includes/sections/*.md` |
| Co-author homepage links | `_data/coauthors.yml` |
| Styling | `assets/css/main.css` |

### Publication fields (website-only, hidden from the displayed BibTeX)

- `preview={file.png}` – teaser image in `assets/img/publication_preview/`
- `html={url}` – main link; labelled *Code* (github.com), *Project* (github.io) or *Paper*
- `pdf`, `arxiv` (id only), `code`, `website` – extra links
- `award={Oral}` – green badge

## Local preview

```bash
bundle install
bundle exec jekyll serve   # http://localhost:4000
```

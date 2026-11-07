# Changelog

## 0.1.0 (unreleased)

First version. Tested with TagBrush.css 1.2.0, TagAction 0.1.0, and the github-pages gem.

- Layouts: `default`, `home` (post list as cards), `page`, `post` (author, date, previous/next).
- Includes: `head` (TagBrush.css, optional TagAction, brand color), `header` (navigation with the current page marked), `footer`, and an empty `head-custom` to override.
- Optional table of contents beside pages and posts (`toc: true`).
- CI builds the example site with GitHub Pages' gems and checks it with TagCheck.

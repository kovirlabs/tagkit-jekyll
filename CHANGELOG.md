# Changelog

## 0.1.0 (unreleased)

First version. Tested with TagBrush.css 2.0.1, TagAction 0.2.0, and the github-pages gem. Pages load `tagbrush@2` from the CDN.

- A site at https://kovirlabs.github.io/tagkit-jekyll/ (in `docs/`, not part of the theme), in the Tag family brand.

- Layouts: `default`, `home` (post list as cards), `page`, `post` (author, date, previous/next).
- Includes: `head` (TagBrush.css, optional TagAction, brand color), `header` (navigation with the current page marked), `footer`, and an empty `head-custom` to override.
- Optional table of contents beside pages and posts (`toc: true`), written `<nav data-tag-toc hidden>` so it appears only once TagAction fills it.
- CI builds the example site with GitHub Pages' gems and checks it with TagCheck.

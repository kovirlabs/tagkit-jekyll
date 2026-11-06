# TagKit for Jekyll

Use this when you want a GitHub Pages or Jekyll site (a blog, docs, a personal site) to look clean and modern with one line of config, no CSS, and pages written in plain Markdown.

```yaml
# _config.yml
remote_theme: kovirlabs/tagkit-jekyll
plugins:
  - jekyll-remote-theme
```

That's all GitHub Pages needs. The theme is plain layouts: the page is styled by [TagBrush.css](https://github.com/kovirlabs/tagbrush) and enhanced by [TagAction](https://github.com/kovirlabs/tagaction), both loaded from a CDN, so there's nothing to build or install. It's part of [TagKit](https://github.com/kovirlabs/tagkit) in the Tag family.

## What you get

- Light and dark mode, readable text width, styled tables, footnotes, task lists, and code highlighting (Rouge, colored by TagBrush.css).
- A top bar with your site title and pages; the current page is marked for screen readers and styled.
- A blog: the home page lists posts as cards; posts show the author and date, with links to the previous and next post.
- Optional table of contents beside a page or post (`toc: true`) that follows your reading.
- Copy buttons on code, sortable tables, and "#" links on headings (TagAction). Everything still works with JavaScript off.

## Layouts

| Layout | For |
| --- | --- |
| `home` | The home page: your content, then a list of posts. Front matter: `title`, `subtitle`, `posts_title`. |
| `page` | Pages such as About. Front matter: `title`, `toc: true`. |
| `post` | Blog posts. Front matter: `title`, `author`, `toc: true`. |
| `default` | The page shell; use it for anything custom. |

GitHub Pages picks `home`, `page`, and `post` automatically (its `jekyll-default-layout` plugin). Elsewhere, set them with `defaults`:

```yaml
defaults:
  - scope: { type: posts }
    values: { layout: post }
  - scope: { type: pages }
    values: { layout: page }
```

## Settings

```yaml
title: Field Notes
description: Short essays on running a tiny software business.   # meta description and footer
author: Dana Whitfield                                           # footer
lang: en
navigation:            # the top bar; without it, every page with a title is listed (order with nav_order, hide with nav: false)
  - { title: Posts, url: / }
  - { title: About, url: /about.html }
tagkit:
  primary_color: "#0f766e"   # links, buttons, and accents
  date_format: "%B %-d, %Y"  # how post dates are shown
  tagaction: false           # leave out the TagAction script
  credit: false              # leave out "Built with TagKit" in the footer
```

To add to `<head>` (a favicon, analytics, `{% seo %}`, `{% feed_meta %}`), create `_includes/head-custom.html` in your site.

## Tested

CI builds [`example/`](example/) with the `github-pages` gem (the same Jekyll, kramdown, and plugins GitHub Pages runs) and checks every page with [TagCheck](https://github.com/kovirlabs/tagcheck): no errors or warnings, WCAG AA contrast in light and dark mode, and no sideways scrolling on phones.

```sh
scripts/build-example.sh                 # needs Ruby and Bundler (or: docker run --rm -v "$PWD":/theme -w /theme ruby:3.3 sh scripts/build-example.sh)
npm install && npm test                  # TagCheck on example/_site
```

## License

Apache-2.0

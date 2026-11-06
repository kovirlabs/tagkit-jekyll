# CLAUDE.md

Guidance for Claude Code working in kovirlabs/tagkit-jekyll, the Jekyll theme in TagKit (Tag Family Ecosystem Spec, section 7.3).

## Rules

- It must work as a GitHub Pages `remote_theme`: only `_layouts/` and `_includes/` (and `assets/` if ever needed), no custom plugins, no Sass build, Liquid that runs on GitHub Pages' Jekyll.
- Plain semantic HTML that TagBrush.css styles, no invented classes, no CSS other than variables, no page scripts. TagAction is the only script.
- Every page of `example/` must pass TagCheck with `--strict --browser` (tested in CI).
- Dates are calendar dates (`datetime="YYYY-MM-DD"`), so TagAction doesn't shift them across timezones.
- Keep README and llms.txt in step with layouts, front matter, and settings.

## Workflow

- Build with `scripts/build-example.sh`, then `npm test`, before every commit.
- Small, focused PRs with a CHANGELOG entry.

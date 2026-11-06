#!/bin/sh
# Builds example/ with the theme's layouts and includes, as GitHub Pages'
# remote_theme would, into example/_site. Needs Ruby and Bundler.
set -e
cd "$(dirname "$0")/.."
ROOT="$PWD"
rm -rf build && mkdir build
cp -R example/. build/
rm -rf build/_site
cp -R _layouts _includes build/
cd build
export BUNDLE_PATH="$ROOT/vendor/bundle"
export PAGES_REPO_NWO=kovirlabs/tagkit-jekyll # GitHub sets this on Pages
bundle install --quiet
JEKYLL_ENV=production bundle exec jekyll build --quiet --destination "$ROOT/example/_site"

# Jekyll Styleguide [![npm](https://img.shields.io/npm/v/jekyll-styleguide.svg)]() [![npm](https://img.shields.io/npm/l/jekyll-styleguide.svg)]()

## Screenshots

## Installation

```sh
# Install Bundler gem through RubyGems
~ $ gem install bundler

# Install dependencies (mostly jekyll and jekyll-sitemap)
~ $ bundle install

# Build the styleguide on the preview server
~ $ bundle exec jekyll serve
```

## Usage

Fill the properties inside `_config.yml`

```yaml
# Styleguide specific
styleguide-css: ""          # (opt) your styleguide stylesheet url
styleguide-js: ""           # (opt) your styleguide javascript url
```

or place your styleguide stylesheet inside the `/dist` folder (names should be the same):

```
dist
├── css
│   └── styleguide.css
└── js
    └── styleguide.js
```

If you want to run the demo locally to check things out

```sh
# Build the demo styleguide on the preview server
~ $ bundle exec jekyll serve --config _fixture.yml
```

## FAQ

> I don't like the `styleguide/` path in my browser url, can I change it to `dog/`?

Change your `_config.yml` collection to:

```yaml
collections:
  styleguide:
    output: true
    permalink: dog/:path/
```

> I want more than two-level secondary menu, is it possible ?

Not yet sadly.

## TODO

* Add search feature
* Make left menu collapse somehow
* Make TOC styles
* Add copy plugin
* Add footer
* Add styles
* Add screenshots

## Credits

* [Jekyll](https://jekyllrb.com/)
* [Bootstrap](https://github.com/twbs/bootstrap)
* [jekyll-boilerplate](https://github.com/HugoGiraudel/jekyll-boilerplate)

## License

Copyright (c) 2016 jekyll-styleguide Authors - Released under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

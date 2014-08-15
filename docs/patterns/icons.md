Icons
=====

Prerequisites
-------------

Before getting started, you'll need [FontForge](http://fontforge.org). It's available on Homebrew:

    brew install fontforge --with-python --with-cairo --with-pango eot-utils

Setup
-----

In your `Gemfile`, add:

```ruby
gem 'fontcustom'
```

Now, create a folder called `icons` in in `assets/fonts`. This will house Font Custom's configuration file, the Sass template, and the SVG files.

`assets/fonts/icons/fontcustom.yml`

```yml
# http://jaydenseric.com/blog/font-icons-like-a-boss-with-sass-and-font-custom
# https://github.com/FontCustom/fontcustom#configuration

font_name: icons
no_hash: true
autowidth: true
output:
  fonts: ..
  _icon.sass: ../../stylesheets/components
templates: [_icon.sass]
```

`assets/fonts/icons/_icon.sass`

```sass
// *************************************
//
//  Icon
//  -> Based on:
//   * http://jaydenseric.com/blog/font-icons-like-a-boss-with-sass-and-font-custom
//
// *************************************

@font-face
  font-family: <%= font_name %>
  src: font-url('<%= font_name %>.eot')
  src: font-url('<%= font_name %>.eot?#iefix') format('embedded-opentype'), font-url('<%= font_name %>.woff') format('woff'), font-url('<%= font_name %>.ttf') format('truetype'), font-url('<%= font_name %>.svg#<%= font_name %>') format('svg')
  font-weight: normal
  font-style: normal

i::before,
.icn::before
  -moz-osx-font-smoothing: grayscale
  -webkit-font-smoothing: antialiased
  display: inline-block
  font-family: "<%= font_name %>"
  font-style: normal
  font-weight: normal
  speak: none

// -------------------------------------
//   Modifiers
// -------------------------------------

<% @glyphs.each do |name, value| %>
.icn--<%= name.to_s %>::before
  content: "\<%= value[:codepoint].to_s(16) %>"
<% end %>
```

Note that this Sass file is treated like an ERB template - it'll compile into your `assets/stylesheets/components` directory, but changes and additions should be made to the root template file.

`assets/stylesheets/application.sass`

```sass
...

// -------------------------------------
//   Components
// -------------------------------------

@import "components/icon"

...

```

SVG Guidelines
--------------

The best SVG files:

 *  are placed on a **512 × 512** artboard (FontCustom will trim horizontal space for you, unless you tell it otherwise in your `fontcustom.yml` file.)
 *  are given a baseline of 448px from the top (cap height is at 64px from the top)
 *  have “squared” icons at a height of 384px and centered (i.e., flush with baseline & cap height)
 *  have circular icons at a height of *around* 432px (384 × 1.125) and centered *(this can be adjusted to taste according to the icon; see [Overshoot](http://en.wikipedia.org/wiki/Overshoot_(typography)))*
 *  do not exceed the edges of the artboard
 *  are fully *outlined* (meaning all overlapping shapes have been merged, no transparent shapes are present, all shapes are a solid color, and all strokes have been expanded + merged)

Compile
-------

Drop your SVG files into `assets/fonts/icons`.

Navigate to your `assets/fonts/icons` directory in Terminal and run `fontcustom watch`. This'll keep an eye out for any changes or new additions, and recompile as necessary.

Usage
-----

With `arrow.svg`, you'd use this pattern:

```haml
%i.icn--arrow{'aria-hidden' => 'true'}
```

or

```haml
%h2.icn.icn--arrow A Header
```

Components - Panel
==================

The `panel` Component is useful for layouts, such as web applications, that need absolutely positioned, sticky panels.

Basic Usage
-----------

```html
<div class="panel panel--left--1of4">
  <!-- ... -->
</div>

<div class="panel panel--right--3of4">
  <!-- ... -->
</div>
```

In its most basic form, you define a `panel` class alongside some class modifiers for the side (`top`, `right`, `bottom`, `left`), and then the sizing (`1of4`, `1of2`, etc.). Those modifier numbers correspond to the appropriate side's positioning values (`1/4 = 25%`, etc.).

Content
-------

If you want to add some spacing within a `panel`, use the `panel-content` scaffolding class, like so:

```html
<div class="panel panel--left--1of4">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>

<div class="panel panel--right--3of4">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>
```

Responsiveness
--------------

If you want your panels to adapt responsively, you just need to add additional modifiers. For example:

```html
<div class="panel panel--left--1of4 panel--desk--left--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>

<div class="panel panel--right--3of4 panel--desk--right--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>
```

Now, at the `desk` breakpoint, which is defined in the variables (covered below), each `panel` will be sized at `50%` on their respective side.

### Vertical & Horizontal Adjustments

You can also make vertical and horizontal adjustments responsively.

```html
<div class="panel panel--top--1of4 panel--top--desk--1of1 panel--left--desk--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>

<div class="panel panel--bottom--3of4 panel--bottom--desk--1of1 panel--right--desk--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>
```

Now we have a set of two panels that are 25/75 stacked horizontally until the `desk` size, and then they convert to vertical 50/50. Simple as that.

Customization
-------------

There are variables at the top of the file that you can overwrite in your `_config.sass` Foundation file.

```sass
// -------------------------------------
//   Variables
// -------------------------------------

// ----- Sizes ----- //

$panel-s: 56em !default
$panel-m: 64em !default
$panel-l: 82em !default

// ----- Settings ----- //

$panel-defaults: 'tablet' $panel-s, 'desk' $panel-m, 'wide' $panel-l !default
$panel-columns: 5 !default
$panel-whitespace: 1.25em !default
```


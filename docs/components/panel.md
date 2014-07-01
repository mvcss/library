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
<div class="panel panel--left--1of4 panel--m--left--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>

<div class="panel panel--right--3of4 panel--m--right--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>
```

Now, at the `m` breakpoint, which is defined in the variables (covered below), each `panel` will be sized at `50%` on their respective side.

### Vertical & Horizontal Adjustments

You can also make vertical and horizontal adjustments responsively.

```html
<div class="panel panel--top--1of4 panel--top--m--1of1 panel--left--m--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>

<div class="panel panel--bottom--3of4 panel--bottom--m--1of1 panel--right--m--1of2">
  <div class="panel-content">
    <!-- ... -->
  </div>
</div>
```

Now we have a set of two panels that are 25/75 stacked horizontally until the `m` size, and then they convert to vertical 50/50. Simple as that.

Customization
-------------

There are variables at the top of the file that you can overwrite in your `_config.sass` Foundation file.

```sass
// -------------------------------------
//   Variables
// -------------------------------------

// ----- Breakpoints ----- //

$panel-s: 44em !default
$panel-m: 64em !default

// ----- Settings ----- //

$panel-defaults: 's' $panel-s, 'm' $panel-m !default
$panel-columns: 5 !default

// ----- Sizing ----- //

$panel-space: 1.25em !default
```


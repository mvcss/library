# Modules - Grid

## Basic Grid

**Haml**

```haml
.grid
  .grid-box.grid-box--1of1
    %p 1/1

.grid
  .grid-box.grid-box--1of2
    %p 1/2
  .grid-box.grid-box--1of2
    %p 1/2
```

### Silent Classes

If you don't want to explicitly call any of the `.grid` classes in your HTML, you can set the `$grid-silent` variable to true to use Sass placeholder selectors, like so:

**Sass**

```sass
.main
  @extend %grid
  .content,
  .sidebar
    @extend %grid-box
  .content
    @extend %grid-box--2of3
  .sidebar
    @extend %grid-box--1of3
```

## Responsive Grid

In order to set up breakpoints for the grid, you'll need to set the `$grid-defaults` variable for your specified breakpoints. Then, either in your HTML or through `@extends` (when using `$grid-silent`), you'll do something like this:

**Haml**

```haml
.grid
  .grid-box.grid-box--desk--1of2.grid-box--lap--1of1
    %p 1/2
  .grid-box.grid-box--desk--1of2.grid-box--lap--1of1
    %p 1/2
```

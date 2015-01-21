z-index
=======

To manage your `z-index` using the `zi` mixin, you first need to create a `$zi-global` list.

```sass
$zi-global: 'tooltip', 'popover', 'modal'
```

Next, in your styles, you can set the `z-index`.

```sass
.tooltip
  // ...
  z-index: zi('tooltip')

.popover
  // ...
  z-index: zi('popover')

.modal
  // ...
  z-index: zi('modal')
```

If you want a new scope of ordering, you can create a new list.

```sass
$zi-course: 'course-badge', 'course-content'
```

Then you can use your new list in your styles.


```sass
.course-badge
  // ...
  z-index: zi('course-badge', $zi-course)

.course-content
  // ...
  z-index: zi('course-content', $zi-course)
```

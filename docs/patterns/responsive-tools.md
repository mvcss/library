Responsive Tools
================

As is the M.O. of the [Tools](http://mvcss.github.io/foundation/tools), we don't want to be forced to create too many new, unnecessary Structures for one-off alterations of styles. Additionally, with responsiveness, we have to make small one off changes at various viewport sizes.

- Show a particular element until it hits a higher viewport, then hide it
- Float an element to a side once it gets to a higher viewport

Etc. etc.

Working Solution
----------------

As of now, we add responsive tool classes to handle this for us. For example:

```sass
// -------------------------------------
//   Display
// -------------------------------------
 
.db
  display: block
.di
  display: inline
.dib
  display: inline-block
.dn
  display: none
 
// ----- Responsive ----- //
 
+respond-to($g-m)
 
  .db--m
    display: block
 
+respond-to($g-l)
 
  .db--l
    display: block
 
// -------------------------------------
//   Positioning
// -------------------------------------
 
// ----- Float ----- //
 
.fl
  float: left
.fr
  float: right
 
// Responsive
 
+respond-to($g-m)
 
  .fr--m
    float: right
 
+respond-to($g-l)
 
  .fr--l
    float: right
```

**Note**: This assumes you have `$g-m`, `$g-l`, and the `+respond-to` mixin set up in your project, which are set up in the base version of MVCSS.

Usage
-----

Now, in your markup, you can utilize these responsive tools, like so:

```html
<div class="element fr--m">
  <!--- ... --->
</div>
```

```html
<div class="element dn db--m">
  <!--- ... --->
</div>
```

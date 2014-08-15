Sticky Footer
=============

http://mystrd.at/modern-clean-css-sticky-footer/

`foundation/_settings.sass`

```sass
$b-whitespace: 1.25em
$footer-height: 12.5em // ~200px
```

`foundation/_base.sass`

```sass
html
  min-height: 100%
  position: relative
  
body
  margin-bottom: $footer-height + $b-whitespace
```

`structures/_footer.sass`

```sass
.footer
  bottom: 0
  left: 0
  height: $footer-height
  position: absolute
  right: 0
  width: 100%
```

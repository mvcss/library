# Component - Hash URLs

## Markup

**Haml**

```haml
%ul.sectionList
  %li
    %a(href="#example-01" data-hash="#example-01") Example 1
  %li
    %a(href="#example-02" data-hash="#example-02") Example 2

.contentSection#example-01
  %h2 Example 01
.contentSection#example-02
  %h2 Example 02
```

## Styles

**Sass**

```sass
.contentSection
  display: none
  &.is-active
    display: block
```

## How to call

```javascript
$(function() {
  options = {
    list: $('.sectionList a'),
    content: $('.contentSection')
  };
  new HashURLs(options);
});
```

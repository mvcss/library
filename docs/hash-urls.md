# Hash URLs

## Markup

`index.haml`
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

`domready.js`
```javascript
$.hashURLs({
  list: $('.sectionList a'),
  content: $('.contentSection')
});
```

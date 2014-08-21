Dropdown
========

There are a few variants of the dropdown.

Standard
--------

```html
<div class="dropdown js-dropdown">
  <a href="#" class="dropdown-btn js-dropdown-btn">Button</a>
  <ul class="dropdown-menu js-dropdown-menu">
    <li class="dropdown-menu-item">
      <a href="#" class="dropdown-menu-item-link">Menu Item</a>
    </li>
    <li class="dropdown-menu-item">
      <a href="#" class="dropdown-menu-item-link">Menu Item</a>
    </li>
  </ul>
</div>
```

Floating
--------

```html
<div class="dropdown dropdown--floating js-dropdown">
  <a href="#" class="dropdown-btn js-dropdown-btn">Button</a>
  <ul class="dropdown-menu js-dropdown-menu">
    <li class="dropdown-menu-item">
      <a href="#" class="dropdown-menu-item-link">Menu Item</a>
    </li>
    <li class="dropdown-menu-item">
      <a href="#" class="dropdown-menu-item-link">Menu Item</a>
    </li>
  </ul>
</div>
```

### Centered

```html
<div class="dropdown dropdown--center dropdown--floating js-dropdown">
  <a href="#" class="dropdown-btn js-dropdown-btn">Button</a>
  <ul class="dropdown-menu js-dropdown-menu">
    <li class="dropdown-menu-item">
      <a href="#" class="dropdown-menu-item-link">Menu Item</a>
    </li>
    <li class="dropdown-menu-item">
      <a href="#" class="dropdown-menu-item-link">Menu Item</a>
    </li>
  </ul>
</div>
```

JavaScript
----------

In CoffeeScript, you can use the following JavaScript to trigger your dropdown:

```coffeescript
$('.js-dropdown-btn').on 'click', (e) ->
  e.preventDefault()
  e.stopPropagation()
  $(@).closest('.js-dropdown').toggleClass('is-active')

$(document).on 'click', ->
  $('.js-dropdown').removeClass('is-active')
```

**Note**: This should go in a document ready call.


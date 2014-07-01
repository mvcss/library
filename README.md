MVCSS Library
=============

Foundation
----------

Choose the Sass extends, functions, and mixins from `/foundation` to include in your [MVCSS](http://mvcss.github.io/) project.

Components
----------

Choose the Sass components from `/components` to include in your [MVCSS](http://mvcss.github.io/) project.

### Authoring Example

```sass
// *************************************
//
//   Component
//   -> Description
//
// -------------------------------------
//   Template (Haml)
// -------------------------------------
//
// .component[.component--modifier](.is-state)(.has-context)
//   .component-scaffolding
//
// *************************************

// -------------------------------------
//   Helpers
// -------------------------------------

// ...

// -------------------------------------
//   Variables
// -------------------------------------

// ----- Colors ----- //

// ... (with the !default flag)

// ----- Sizing ----- //

// ... (with the !default flag)

// -------------------------------------
//   Base
// -------------------------------------

.component
  // ...

// -------------------------------------
//   Modifiers
// -------------------------------------

// ----- Modifier Name ----- //

.component--modifier
  // ...

// -------------------------------------
//   Scaffolding
// -------------------------------------

// ----- Scaffolding Name ----- //

.component-scaffolding
  // ...
```

Documentation
-------------

The documentation, for anything that requires more full documentation than the source file, is included in `/docs`.

Versioning
----------

We use [Semantic Versioning](http://semver.org) for all versioning.

MVCSS Library
=============

Foundation
----------

Choose the Sass extends, functions, and mixins from `/foundation` to include in your [MVCSS](http://mvcss.github.io/) project.

### Authoring Example

**Extends**

```sass
// ----- Extend Name ----- //

.extend
  // ...
```

**Functions**

```sass
// ----- Function Name ----- //
// -> Description
//
// $arg - the argument description

@function name($arg)
  // ...
```

**Mixins**

```sass
// ----- Mixin Name ----- //
// -> Description
//
// $arg - the argument description

=name($arg)
  // ...
```

**Tools**

```sass
// -------------------------------------
//   Tool Section Name
// -------------------------------------

.name
  // ...
```

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
// .has-context
//
// .component[modifier](state)
//
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

Structures
----------

Choose the Sass structures from `/structures` to include in your [MVCSS](http://mvcss.github.io/) project.

### Authoring Example

```sass
// *************************************
//
//   Structure
//   -> Description
//
// -------------------------------------
//   Dependencies
// -------------------------------------
//
//   - components/grid
//
// -------------------------------------
//   Template (Haml)
// -------------------------------------
//
// .has-context
//
// .structure[modifier](state)
//
//   .structure-scaffolding
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

.structure-scaffolding
  // ...
```

Documentation
-------------

The documentation, for anything that requires more full documentation than the source file, is included in `/docs`.

Contributing
------------

We use [Semantic Versioning](http://semver.org) for all versioning. When you make a **Major**, **Minor**, or **Patch** update, you'll need to the do the following:

- Update the `CHANGELOG.md` file
- Add the new tag locally
- Push the tag (along with your commit(s))

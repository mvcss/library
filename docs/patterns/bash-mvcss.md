Bash MVCSS
==========

If you want to easily pull down and copy various files from MVCSS and the Library via the command line, this is how you can do it.

Bash Functions
--------------

```bash
curl -s https://raw.githubusercontent.com/drewbarontini/dotfiles/master/bash/functions/mvcss >> ~/.bash_profile
```

Yes, it's a lot, but you can also, [like I do](https://github.com/drewbarontini/dotfiles/blob/master/bash_profile), create a `.bash` root directory and have a `functions` file in there. Then, in your `bash_profile`, use `source ~/.bash/functions` to pull that file in.

Usage
-----

That's it! Here's the interface for using it.

To download a ZIP of MVCSS in the current directory, run:

```bash
mvcss all
```

To pull a specific Foundation/Component/Structure file:

```bash
mvcss components grid
```

To pull a specific Library file:

```bash
mvcss-library components list
```

To copy a file to your clipboard:

```bash
mvcss copy components grid
mvcss-library copy components list
```

### Aliases

You can also shorten these up with some aliases. For example:

```bash
alias mc='mvcss components'
```

Then, you can just run `mc grid` to get the grid component.

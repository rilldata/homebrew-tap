# Rill Developer Homebrew Tap

This repository is home to the homebrew tap for [rill-developer](https://github.com/rilldata/rill-developer). 

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install rilldata/tap/rill
```

You can also only add the tap which makes formulae within it
available in search results (`brew search` output):

```sh
brew tap rilldata/tap
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap rilldata/tap https://github.com/rilldata/homebrew-tap
```

While you may search across taps, it is necessary to always use
fully qualified name (incl. the `rilldata/tap/` prefix)
when refering to formulae in external taps such as this one
outside of search.

## What packages are available?

With the following commands, you can install the latest version of each product:
```sh
# Formulae
brew install rilldata/tap/rill
```

## Why should I install packages from this tap?

- Formulae _in this tap_ are maintained by Rill Data.
- Updating of formulae is automated, which means that updates become available as they're released.

# homebrew-backspacer

Homebrew tap for [Backspacer](https://backspacer.dev/), the Mac app that finds and
removes the caches and build leftovers eating a developer's disk.

```bash
brew install --cask anton-g-kulikov/backspacer/backspacer
```

or, in two steps:

```bash
brew tap anton-g-kulikov/backspacer
brew install --cask backspacer
```

`brew upgrade backspacer` follows new releases. The cask points at the notarized DMG
published on the [releases page](https://github.com/anton-g-kulikov/backspacer/releases)
and checks its SHA-256.

The cask bumps itself: a workflow here looks at the latest release every six hours (and
on demand) and updates `version` and `sha256`. Report app problems in the
[app's issue tracker](https://github.com/anton-g-kulikov/backspacer/issues); problems
with installing via Homebrew belong here.

Backspacer itself is distributed under the PolyForm Noncommercial License 1.0.0; this
tap only describes where to download it.

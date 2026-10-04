# OpenShelf for Homebrew

The official Homebrew tap for [OpenShelf](https://github.com/brian4685380/OpenShelf), a native macOS shelf for files, images and text.

## Install

Requires **macOS 13+ and Apple Silicon**.

```sh
brew tap brian4685380/openshelf
brew install --cask openshelf
open /Applications/OpenShelf.app
```

The cask installs the app and links its bundled `shelf` command:

```sh
shelf ~/Desktop/report.pdf ~/Downloads/photos
shelf --help
shelf --version
```

The CLI starts OpenShelf when needed and confirms delivery to the shelf. No separate CLI install step is required.

## Update

Save temporary shelf content and quit OpenShelf first; shelf contents are session-only.

```sh
brew update
brew upgrade --cask openshelf
open /Applications/OpenShelf.app
```

## Trust and support

The cask downloads versioned ZIPs from the project's GitHub Releases and verifies their SHA-256 checksum. Releases are ad-hoc signed, **not Apple-notarized**. See the [main README](https://github.com/brian4685380/OpenShelf#install) for first-launch guidance.

Report app bugs in [OpenShelf](https://github.com/brian4685380/OpenShelf/issues); report tap/installation problems in [this repository](https://github.com/brian4685380/homebrew-openshelf/issues).

Maintainers: update the cask from the app's generated `dist/openshelf.rb` only after the matching release ZIP is public. Follow the [release checklist](https://github.com/brian4685380/OpenShelf/blob/main/docs/releasing.md).

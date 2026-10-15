# Homebrew tap for Bellek

[Bellek](https://bellek.si) is shared memory for Claude Code sessions. This tap installs the `bellek` command on macOS.

## Install

```bash
brew install bellek-si/tap/bellek
```

Upgrade with `brew upgrade bellek`. Then add your API key and the plugin as the [bellek README](https://github.com/bellek-si/bellek#quick-start) shows.

The formula is for macOS only. On Linux, download the release tarball or build with `go install`, both in the same README.

## How the formula changes

Every release of [bellek-si/bellek](https://github.com/bellek-si/bellek/releases) writes `Formula/bellek.rb` here, with the new version and the checksums of its macOS tarballs. Do not edit the formula by hand: the next release overwrites it.

## Issues

Report problems at [bellek-si/bellek](https://github.com/bellek-si/bellek/issues).

## License

[Apache 2.0](LICENSE)

# homebrew-tap

Homebrew tap for Coot.

## Install

```bash
brew install coot-ai/tap/coot
```

## Upgrade

```bash
brew update
brew upgrade coot
```

or

```bash
# This can fix version caching issues.
cd /opt/homebrew/Library/Taps/coot-ai/homebrew-tap
git pull
brew upgrade coot
```

可以解决版本缓存的问题

## Test

```bash
brew test coot
coot version
```

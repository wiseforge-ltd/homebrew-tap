# WiseForge Homebrew Tap

Homebrew casks for [WiseForge](https://wiseforge.co.uk) apps.

## Voce

On-device push-to-talk dictation for macOS.

```sh
brew tap wiseforge-ltd/tap
brew trust wiseforge-ltd/tap
brew install --cask voce
```

Homebrew 6 asks you to `trust` a third-party tap once before it will install
from it. After that, `brew upgrade` keeps Voce current (Voce also self-updates
in-app via Sparkle).

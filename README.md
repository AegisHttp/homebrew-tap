# Aegis HTTP Homebrew Tap

Official Homebrew tap for the Aegis HTTP native messaging host daemon.

## Installation

You can install `aegis-host` directly:

```bash
brew install AegisHttp/tap/aegis-host
```

Or add this tap to your Homebrew list first:

```bash
brew tap AegisHttp/tap
brew install aegis-host
```

## Post-Installation Setup

The installation automatically registers the native messaging host for your browsers. No manual setup is needed!

If you need to re-register it at any time, simply run:

```bash
aegis-host --install
```

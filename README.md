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

Once installed, you must register the native messaging host manifest for your browsers:

```bash
aegis-host --install
```

This will automatically write the required JSON manifests to your browser's native messaging hosts configuration directory.

<div align="center">

# Homebrew Tap

**Four macOS apps as Homebrew casks: dictation, meeting transcription, voice coding, and tasks**

Tap it once, then install or remove any of them with `brew` instead of dragging a `.dmg` around.

</div>

## Install

```bash
brew tap mblode/tap
```

## Quickstart

```bash
brew install --cask mblode/tap/commandment
```

The full cask name works without tapping first, so a single command is enough if you only want one app.

## Casks

| Cask | What it is | Install |
|------|------------|---------|
| [Commandment](https://github.com/mblode/commandment) | Menu bar dictation, transcribed with OpenAI. | `brew install --cask mblode/tap/commandment` |
| [Convene](https://github.com/mblode/convene) | Meeting transcription, using your own AssemblyAI and Anthropic keys. | `brew install --cask mblode/tap/convene` |
| [Done Bear](https://donebear.com) | Desktop app for the local-first task manager. | `brew install --cask mblode/tap/done-bear` |
| [Rubber Duck](https://github.com/mblode/rubber-duck) | Menu bar voice coding agent. | `brew install --cask mblode/tap/rubber-duck` |

## Requirements

- Commandment, Convene, and Rubber Duck need macOS Sequoia or later.
- Done Bear ships separate Apple silicon and Intel builds and sets no minimum macOS version.
- All four set `auto_updates true`, so the apps update themselves. `brew upgrade` leaves them alone unless you pass `--greedy`.

## Notes

- Commandment, Convene, and Rubber Duck are downloaded from their GitHub releases. Done Bear is downloaded from donebear.com, so `brew livecheck` skips it.
- Each cask defines a `zap` list, so `brew uninstall --zap --cask mblode/tap/commandment` also removes the app's preferences and support files.

## License

MIT

---

Crafted by [<img src="https://blode.co/avatar-circle.png" width="20" align="top" />](https://blode.co) [Matthew Blode](https://blode.co)

# 📌 Post-it

A Claude plugin that generates a visual sticky-note summary of the ongoing conversation. Built for long threads where the important stuff slips out of view.

Type `/postit` and Claude re-reads everything discussed and returns a scannable note with 3–5 key points: **decisions made**, **key data**, and **next steps**. If the conversation covers several topics, it generates up to 3 post-its, one per topic.

## Installation

### In Claude Code

```bash
# Add the marketplace
/plugin marketplace add hianadee/postit

# Install the plugin
/plugin install postit@anadee
```

### In Claude.ai

1. Clone the repo and run `./build.sh` (generates `dist/postit.plugin`), or download the `.plugin` from Releases.
2. Upload the file in **Settings → Capabilities → Plugins**.

## Usage

At any point in the conversation:

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
It also responds to natural requests like *"summarize the conversation in a post-it"* or *"give me the post-it"*.

### What it returns

A visual note with each point labeled by type:

- **Decision:** closed agreements, chosen options, things ruled out
- **Data:** figures, dates, names, URLs, or parameters worth keeping
- **Next:** pending actions, with an owner if one was mentioned

No filler: if the conversation is short or there are no decisions yet, it summarizes the topic and current state.

## Structure
## Configuration

No connectors, environment variables, or additional setup required.

## Roadmap

- [ ] Incremental mode (`/postit delta`): summarize only since the last post-it
- [ ] Type filters: `/postit pending`, `/postit decisions`, `/postit data`
- [ ] Export/persistence: copy as text, save to Notion

## License

MIT — [Ana Dee](https://anadee.es)

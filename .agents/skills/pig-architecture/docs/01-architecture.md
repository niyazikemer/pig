# 01 — Architecture

pig keeps the reusable agent core separate from the coding-agent application and from any UI.

## Layers

### `pig_ai`

Owns provider-specific model streaming. It will translate provider responses into pig's provider-neutral events.

### `pig_agent`

Owns the portable agent brain: messages, tools, events, the agent loop, harness, and session primitives.
This package must not import CLI, Rich, Textual, or application resource loading code.

### `pig_coding`

Owns the coding-agent application: CLI commands, built-in coding tools, project instructions, skills,
prompt templates, sessions on disk, and UI adapters.

## Dependency direction

```text
pig_coding -> pig_agent -> pig_ai
```

UI packages consume emitted events. The core does not render UI directly.

## Guiding split

```text
AgentHarness = reusable brain
AgentSession = coding-agent environment
TUI = one possible frontend
```

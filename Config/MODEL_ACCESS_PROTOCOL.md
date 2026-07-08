# Model Access Protocol

> Replace the example paths with your real local paths when you deploy this kit on another machine.

## Core principles

- There is one long-term memory base.
- Retrieval engines are not the memory base.
- Raw notes are not the memory base.
- Assistants are callers and collaborators, not separate long-term memory systems.
- Long-term writes go only to approved structured locations.

## Default startup summary

Use a small injected summary, not the full vault:

```text
Long-term memory base: <MEMORY_ROOT>
Default behavior: do not load the full system.
Identity, goals, preferences, and boundaries: read on demand.
Knowledge retrieval: query the index layer first, then inspect only a few relevant pages.
Long-term writes: only write to the approved knowledge and identity workspaces.
```

## Four access levels

| Level | When to use | What to read |
| --- | --- | --- |
| L0 | Normal coding, one-off commands, formatting, tests | Nothing from the memory system |
| L1 | Architecture and system questions | This file and the lightweight entry pages |
| L2 | Questions that require knowledge lookup | Search results plus a small set of matched files |
| L3 | Strategy, identity, long-term decision support | Identity, memory layers, and curated synthesis pages |

## Retrieval rules

- Search before reading.
- Read a small number of high-signal files.
- Avoid loading raw archives when a synthesis page already exists.
- Prefer structured notes over raw dumps.

## Write rules

- Write curated knowledge to the approved knowledge base.
- Write personal cognition and digital-self material to the personal agent workspace.
- Keep the raw memory layers read-only unless a system-level change is explicitly requested.
- Do not treat local chat caches as authoritative memory.

## Standard answer

When asked about the roles of the system pieces, answer like this:

```text
The long-term memory base is the unified memory system.
The index/search layer is the retrieval engine.
Obsidian is the raw content source.
Hermes, Claude Code, and Codex are the execution and collaboration layers.
```

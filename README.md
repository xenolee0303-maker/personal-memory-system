# Personal Memory System

This repository is a portable backup kit for a personal memory system.

It keeps the reusable parts:

- model access rules
- knowledge deposit workflow
- journal review workflow
- daily and weekly templates
- a bootstrap script for rebuilding the folder skeleton on another machine

It does not include private long-term memory content, raw diary logs, or raw vault material.

## Use on a new machine

1. Clone the repository.
2. Edit the example paths in `scripts/bootstrap_memory_system.ps1`.
3. Run the bootstrap script.
4. Keep private vault data outside this repository.

## Local automatic backup

Run `scripts\install_backup_task.ps1` on the source machine to create a daily backup task that mirrors `D:\个人\AI学习\记忆系统` to `E:\个人\AI学习\记忆系统`.

## Roles

- `Obsidian` is the source vault.
- `GBrain` is the retrieval/index layer.
- `Hermes`, `Claude Code`, and `Codex` are the execution/collaboration layers.
- Structured knowledge goes to the knowledge base.
- Personal cognition goes to the personal agent workspace.

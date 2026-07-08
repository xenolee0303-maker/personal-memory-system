# Knowledge Deposit Workflow

> Goal: separate raw material collection from durable knowledge and personal digital-self memory.

## One-line rule

Raw material goes to the source vault; reusable knowledge goes to the structured knowledge base; personal cognition and digital-self material go to the personal agent workspace.

## Routing table

| Content type | Default destination | Deposit? | Notes |
| --- | --- | --- | --- |
| Web clippings, temporary articles | Obsidian raw clipping area | No | Keep the original source first |
| Daily AI/tools/materials | Resource/material library | No | Useful as input, not always knowledge |
| Annual reports, public articles, long raw documents | Archive/source library | No | Treat as source material |
| Methodologies, solutions, strategy plans, department summaries | Structured knowledge pages | Yes, as synthesis | Write Markdown synthesis, not raw slides/PDFs |
| Personal goals, decision rules, identity updates, collaboration preferences | Personal agent workspace | Yes | This is the digital-self layer |

## Structured knowledge base

Use the structured knowledge base for reusable pages:

- `concepts/` for frameworks, methods, and playbooks.
- `entities/` for people, companies, teams, and products.
- `syntheses/` for strategic analysis, solutions, and review pages.

## Personal agent workspace

Use the personal agent workspace for material that should shape the digital self:

- Long-term goals.
- Decision principles.
- Boundaries and preferences.
- Collaboration rules.
- Stable insights from major reviews.

## Workflow

1. Classify the content.
2. Decide whether it has long-term reuse value.
3. Search for an existing page before creating a new one.
4. Produce a structured Markdown page if the item is worth depositing.
5. Keep raw source material outside the structured long-term layers.

## Decision template

```markdown
## Deposit Decision

- Type:
- Destination:
- Long-term deposit:
- Reason:
- Suggested filename:
- Needs user confirmation:
```

## Guardrails

- Do not dump raw PPT/PDF/article text directly into the structured knowledge base.
- Do not overwrite identity or memory pages silently.
- Prefer updates to existing pages over duplicates.
- Keep the raw memory layers read-only unless explicitly instructed.

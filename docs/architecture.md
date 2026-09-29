# Architecture Notes

The diagrams in this repository use four evidence levels: documented, observed, inferred, and hypothetical.

A technically plausible diagram is not automatically evidence.

## Google API workflow

```text
Developer
   |
   v
Gemini API
   |
   +--> Files API, when used
   |
   v
Gemini model
   |
   v
Response
```

The 48-hour file-retention rule belongs to the Files API workflow.

## Prodia workflow

```text
Application
   |
   v
Prodia API
   |
   v
Prodia Gemini image endpoint
   |
   v
Image generation or editing
   |
   v
Result
```

Prodia documents the model endpoints and async result expiry.

## Consumer Gemini workflow

The simplified model is:

```text
User
   |
   v
Gemini consumer product
   |
   v
Google services
   |
   v
Gemini image capability
   |
   v
User
```

The internal services behind this path are not publicly mapped in enough detail to treat a complete architecture diagram as fact.

## The Prodia question

The specific question is whether an internal step like this exists:

```text
Gemini consumer product
        |
        v
      Prodia
```

No public source reviewed for this repository establishes that path.

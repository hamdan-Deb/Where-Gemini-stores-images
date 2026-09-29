# Where Does Gemini Store Images?

Independent security research into Gemini image handling, Prodia, authentication, retention, and third-party AI infrastructure.

**Status:** Active research  
**Last reviewed:** 29 September 2026  
**Author:** [Your Name / GitHub Handle]

## Research question

When a user uploads an image to Gemini, where does that image go?

The part I am trying to verify is whether Prodia is involved in Google's first-party Gemini image workflow, or whether Prodia is simply a separate service that exposes Google's image models through its own API.

The project keeps these systems separate:

- Gemini consumer products
- Gemini API and Files API
- Google AI Studio and Google Cloud
- Prodia API and Prodia's model endpoints
- Prodia's authentication layer

The repository also separates documented facts from observations, inferences, and unanswered questions.

## What the public evidence shows

Prodia currently exposes Google's Gemini image models through its own API. The current mapping documented by Google and Prodia includes:

| Product name | Model |
|---|---|
| Nano Banana | Gemini 2.5 Flash Image |
| Nano Banana Pro | Gemini 3 Pro Image |
| Nano Banana 2 | Gemini 3.1 Flash Image |

Prodia also documents image-to-image Gemini workflows.

Google separately documents these models in its own products and developer platforms.

That does not prove that `gemini.google.com` sends image requests to Prodia.

### Current finding

> Public evidence establishes that Prodia provides API access to Google's Gemini image models. It does not currently establish that Google's first-party Gemini consumer service uses Prodia as its image-processing or image-storage backend.

That is the position of the repository unless new evidence changes it.

## Why the question matters

An image can contain much more than pixels. A single upload may include faces, identity documents, screenshots, GPS data, private messages, source code, credentials, or business information.

Whenever another service is involved, there is another trust boundary to examine. That means looking at input handling, authentication, output delivery, retention, logs, storage, and access controls.

This project is about tracing those boundaries, not starting with a conclusion.

## Model name vs infrastructure

The same model can appear in more than one service. A model name alone does not identify the backend that handled a particular request.

```text
Model name
    !=
Application
    !=
Backend service
    !=
Storage system
```

This distinction is important when comparing Google and Prodia.

## Retention is not one number

The project keeps several documented mechanisms separate.

- Google Gemini Files API: uploaded files are documented as being deleted after 48 hours.
- Gemini Apps: consumer activity has separate retention controls and should not be treated as the same storage mechanism.
- Prodia Async API: async job results are documented as expiring after one hour.

An API expiry time also does not prove that every copy, cache, backup, or log entry has been physically deleted.

## Authentication track

A separate part of the research looks at `stytch.com` appearing in the Prodia sign-in flow.

At this stage, that is treated as an observation to test, not proof that Prodia sends AI images to Stytch. Authentication and inference are different data paths.

## Evidence labels

The project uses these labels:

- **DOCUMENTED**: stated by an authoritative source.
- **OBSERVED**: seen during a controlled test.
- **CORROBORATED**: supported by more than one independent source.
- **INFERRED**: a technical interpretation that is not directly documented.
- **HYPOTHETICAL**: a threat or test scenario.
- **UNKNOWN**: the available evidence cannot answer it.

## Repository layout

```text
where-does-gemini-store-images/
├── README.md
├── SECURITY.md
├── CONTRIBUTING.md
├── LICENSE
├── docs/
├── research/
├── findings/
├── diagrams/
└── .github/
```

## Research plan

The next useful step is controlled network testing with a synthetic image and a test account. The goal is to record exactly which domains and endpoints are contacted during a known workflow.

The test template is in `research/observations/test-001-template.md`.

Do not publish cookies, bearer tokens, API keys, session identifiers, or private images.

## Limitations

This project cannot see Google's private backend, private vendor contracts, internal logs, or server-to-server traffic that never reaches the browser.

A browser capture can show what the tested client talks to. It cannot, by itself, prove the entire server-side architecture.

## Sources

The main source list is in [`research/sources.md`](research/sources.md).

## License

MIT. See [`LICENSE`](LICENSE).

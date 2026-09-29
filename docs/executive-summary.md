# Executive Summary

## Question

Is Prodia part of the image-processing or image-storage path used by Google's first-party Gemini products?

## Current answer

Not established.

The public record shows that Prodia exposes Google's Gemini image models through its own API. It also shows a public Google Cloud relationship with Prodia. None of that, by itself, proves that the consumer Gemini application sends user images to Prodia.

## Established facts

- Google documents the Nano Banana model family.
- Prodia documents Gemini image endpoints and image-to-image jobs.
- Prodia documents one-hour expiry for async job results.
- Google documents 48-hour retention for files uploaded through the Gemini Files API.
- Google publishes material describing Prodia's use of Google Cloud infrastructure.

## Not established

The repository has not found public evidence showing this path:

```text
Gemini consumer app
        |
        v
      Prodia
        |
        v
image processing or storage
```

That remains a research question.

## Security angle

The interesting security issue is broader than the Google-to-Prodia question. A third-party AI provider can create another trust boundary around prompts, images, authentication, outputs, logs, and temporary data.

The project therefore studies both the specific Prodia question and the general risks of third-party AI infrastructure.

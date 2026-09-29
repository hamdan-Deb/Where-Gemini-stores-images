# Prodia Investigation

## Scope

This document covers Prodia's publicly documented Gemini services. It does not try to reconstruct Prodia's private infrastructure.

## Gemini models exposed by Prodia

Prodia currently documents these image models:

- Nano Banana / Gemini 2.5 Flash Image
- Nano Banana Pro / Gemini 3 Pro Image
- Nano Banana 2 / Gemini 3.1 Flash Image

Prodia also documents text-to-image and image-to-image workflows for relevant Gemini models.

This proves that Prodia offers API access to those model families.

It does not prove that Google routes consumer Gemini traffic through Prodia.

## Google Cloud relationship

Google Cloud has published material describing Prodia's use of Google Cloud infrastructure and its use of Nano Banana.

That is evidence of a Google Cloud and Prodia relationship. It is not evidence that the consumer Gemini application uses Prodia.

Those are two different questions:

```text
Prodia uses Google Cloud

and

Google consumer Gemini uses Prodia
```

The first is publicly documented. The second is not established by the sources reviewed here.

## Output handling

Do not assume that every Prodia image is stored behind a public image URL. Prodia documents API responses that can return image bytes directly, depending on the request.

For that reason, `images.prodia.com` is not treated in this repository as a confirmed universal image-storage layer.

## API authentication

Prodia's current API documentation describes Bearer authentication and JWT API tokens for inference requests.

This is separate from the dashboard login flow and should be tested separately.

## Finding

**DOCUMENTED:** Prodia provides API access to Gemini image models.

**NOT ESTABLISHED:** Prodia is the image-processing or image-storage backend for Google's first-party Gemini consumer service.

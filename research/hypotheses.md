# Research Hypotheses

## H1. Prodia is visible in a third-party Prodia workflow

A third-party application using Prodia's Gemini API should contact Prodia infrastructure during an image request.

**Status:** Testable.

## H2. The Gemini consumer client uses a Google-controlled path

The official Gemini consumer application may not expose Prodia endpoints in the browser even if backend services use other providers.

**Status:** Testable only from client-side observation.

## H3. Shared model names cause infrastructure confusion

The same Gemini or Nano Banana model family appearing in Google and Prodia can make it easy to assume that the two products share the same backend.

**Status:** Supported as a research explanation, not a network finding.

## H4. Temporary storage means different things in different systems

Google's file retention policy and Prodia's async result expiry are separate mechanisms.

**Status:** Documented.

## H5. Browser testing has a visibility limit

A clean browser trace cannot rule out backend-to-backend traffic that is invisible to the client.

**Status:** Methodological principle.

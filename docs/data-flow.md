# Data Flow Analysis

An image request can carry more than image pixels. Depending on the product, the request may also involve prompts, filenames, MIME types, timestamps, IP information, authentication data, job IDs, and generated output.

## Example data categories

| Category | Example |
|---|---|
| Image | Uploaded or generated image |
| Prompt | User instruction |
| Metadata | Filename, MIME type, timestamps |
| Network data | IP address and connection data |
| Authentication | Session or API token |
| Job data | Request or job ID |
| Output | Generated image |

These are possible categories, not a claim that every service collects all of them.

## Google

When the Gemini Files API is used, Google documents 48-hour storage for uploaded files.

That does not prove that every Gemini image workflow uses the Files API.

## Prodia

Prodia documents one-hour expiry for async job results.

That is an API result policy. It does not tell us the retention period for every log, cache, backup, or internal copy.

## Why the word "temporary" needs care

Temporary can mean different things:

- API job result
- uploaded input
- generated output
- cache
- log entry
- backup
- CDN object
- application history

These should be tracked separately in any investigation.

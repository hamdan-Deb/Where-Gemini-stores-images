# Retention Analysis

## Google Gemini Files API

Google documents automatic deletion of uploaded Files API files after 48 hours. The API also provides a deletion operation.

## Gemini Apps

The consumer Gemini application has separate activity-retention settings. Those settings are not the same thing as the Files API policy.

## Prodia Async API

Prodia documents that async job results expire after one hour. The API returns `404 Not Found` after the documented result window has expired.

An expired API object does not prove that every underlying copy has been erased.

It does not by itself prove:

- physical deletion from storage
- removal from backups
- removal from logs
- removal from monitoring systems
- cryptographic erasure

## Questions for further testing

- Does Prodia document backup retention?
- How long are logs kept?
- Are input images retained separately from outputs?
- Are different job types treated differently?
- What deletion guarantees are documented?
- Does behavior vary by region or product?

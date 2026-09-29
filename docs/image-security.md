# Image Security

## Images can contain metadata

Depending on the source file, relevant metadata may include:

- EXIF data
- GPS coordinates
- timestamps
- camera model
- software information
- embedded thumbnails
- text inside the image

## Screenshots

Screenshots can contain passwords, API keys, session identifiers, private messages, internal URLs, cloud-console data, or source code.

## Identity documents

Passports, national ID cards, driving licences, bank documents, and similar material should be treated as highly sensitive test data.

## Faces

Images containing faces can raise questions about identification, re-identification, and biometric processing.

This project does not make a legal determination about whether a particular image counts as biometric data.

## Metadata test

A simple controlled test is:

```text
Original image
     |
     v
Extract metadata
     |
     v
Upload / process
     |
     v
Download result
     |
     v
Extract metadata again
     |
     v
Compare
```

This can show whether metadata survives a specific workflow. It cannot reveal every internal processing step.

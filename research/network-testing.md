# Authorized Network Testing

## Purpose

This guide covers controlled browser testing with your own account and a synthetic image.

## Test setup

Use:

- your own account
- your own browser and device
- a synthetic image
- no private documents
- no credentials inside the test image

## Procedure

1. Open browser developer tools.
2. Open the Network panel.
3. Clear old requests.
4. Use the target product normally.
5. Perform one image generation or image-editing operation.
6. Record the domains involved.
7. Record request methods and response status codes.
8. Repeat the test.
9. Compare the results.

Useful domain categories are:

- Google-controlled
- Prodia-controlled
- application-controlled
- CDN or storage
- unknown

## What a positive observation can show

If the tested application directly contacts a Prodia endpoint, you can report that the tested workflow communicated with Prodia.

## What it cannot show by itself

It does not reveal Google's full backend architecture. It also does not prove a contract between companies, retention outside documented policies, or that the same path is used for every region or user.

## Do not publish

Never publish cookies, bearer tokens, API keys, session identifiers, or private user data.

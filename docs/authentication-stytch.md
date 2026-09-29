# Prodia Authentication and Stytch

## Why Stytch is in the investigation

During the research, `stytch.com` appeared in the Prodia login flow. This is worth documenting because authentication is another trust boundary around the application.

The current status is **OBSERVED / RESEARCH LEAD**. The repository does not claim that Prodia officially uses Stytch until the flow is reproduced and the relevant requests are documented.

## What Stytch provides

Stytch documents passwordless email and magic-link authentication, session management, and JWT-based authentication.

Those documents show what the Stytch platform can do. They do not prove exactly how Prodia has configured it.

## Keep two planes separate

### Identity plane

```text
User
  |
  | email / sign-in
  v
Stytch (if confirmed)
  |
  | auth result / session
  v
Prodia application
```

### AI data plane

```text
User / developer
  |
  | prompt + image
  v
Prodia API
  |
  v
Inference workflow
  |
  v
Generated output
```

Seeing Stytch in the login process does not show that Stytch receives prompts or images.

## Questions to test

### Authentication

- Which Stytch endpoints are contacted?
- What information is sent?
- Is the email address sent directly to Stytch?
- Are tokens visible in redirects or URLs?
- Which cookies are set?
- What are the cookie attributes?
- How long does the session last?
- What happens on logout?

### Separation of data paths

- Do any Stytch requests contain image data?
- Do they contain image URLs?
- Do they contain prompts?
- Do they contain inference job IDs?
- Are image requests sent only to Prodia inference endpoints?

### Prodia API authentication

Prodia's API documentation describes Bearer authentication and JWT API tokens for inference requests. That should be treated as a separate security boundary from the dashboard login process.

## What a useful finding looks like

> During TEST-00X, the Prodia login page contacted a Stytch endpoint for the observed authentication flow. No prompt or image payload was present in the captured authentication requests.

That is much stronger than assuming that Stytch has access to Prodia's AI data.

## Safety

Use your own account and synthetic test data. Never publish magic-link tokens, cookies, bearer tokens, session identifiers, or private images.

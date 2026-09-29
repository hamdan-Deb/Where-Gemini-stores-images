# GitHub repository setup

This file contains the GitHub metadata that cannot be stored inside normal repository files.

## Repository name

`Where-Gemini-store-images`

For long-term consistency, the preferred slug is:

`where-does-gemini-store-images`

## Repository description

> Independent cybersecurity research into Gemini image handling, Prodia infrastructure, authentication, retention, data flows, and third-party AI security.

## Suggested topics

```text
cybersecurity
ai-security
ai-privacy
google-gemini
gemini
prodia
cloud-security
privacy-research
security-research
network-analysis
data-flow
threat-modeling
osint
image-security
ai-infrastructure
```

## Set topics with GitHub CLI

If GitHub CLI is installed and authenticated:

```bash
gh repo edit hamdan-Deb/Where-Gemini-store-images \
  --description "Independent cybersecurity research into Gemini image handling, Prodia infrastructure, authentication, retention, data flows, and third-party AI security." \
  --add-topic cybersecurity \
  --add-topic ai-security \
  --add-topic ai-privacy \
  --add-topic google-gemini \
  --add-topic gemini \
  --add-topic prodia \
  --add-topic cloud-security \
  --add-topic privacy-research \
  --add-topic security-research \
  --add-topic network-analysis \
  --add-topic data-flow \
  --add-topic threat-modeling \
  --add-topic osint \
  --add-topic image-security \
  --add-topic ai-infrastructure
```

## Social preview

Use `assets/research-banner.png` as the repository social preview image in:

**GitHub → Settings → Social preview → Edit**

A 1200 × 630 crop works well for the social-preview slot. The provided banner is intentionally wider so it can also be used inside the README.

## README search strategy

The README intentionally uses the project keywords in natural prose:

- Gemini image storage
- Gemini image processing
- Google Gemini
- Prodia
- AI security
- AI privacy
- cloud security
- image retention
- network analysis
- third-party AI infrastructure
- authentication
- Stytch
- threat modeling

The goal is relevance rather than repeating the same keywords unnaturally.

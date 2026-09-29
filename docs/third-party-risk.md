# Third-Party AI Infrastructure Risk

An AI application can depend on several organizations at once.

```text
User
  |
  v
Application
  |
  v
Application cloud
  |
  v
AI API provider
  |
  v
Inference infrastructure
  |
  v
Storage / delivery
```

Each boundary needs its own security review.

## Main risk areas

**Confidentiality**  
Sensitive prompts and images may cross organizational boundaries.

**Integrity**  
A compromised service could change or manipulate results.

**Availability**  
An external provider outage can affect the application.

**Authentication**  
API keys, tokens, and sessions become sensitive assets.

**Logging**  
Prompts, metadata, identifiers, or error details may appear in operational logs.

**Compliance**  
Vendor arrangements can affect data location, retention, deletion, subprocessors, and auditability.

The security of an AI application depends on the surrounding system, not only on the model itself.

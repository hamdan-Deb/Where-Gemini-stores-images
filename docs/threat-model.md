# Threat Model

## Scope

This model is for applications that send user content to an external AI service. It is a security model, not evidence that any particular attack has happened.

## Assets

- input images
- generated images
- prompts
- API credentials
- session data
- metadata
- user identity
- application configuration
- proprietary information

## Threat actors

- external attackers
- compromised accounts
- malicious insiders
- compromised dependencies
- supply-chain attackers
- credential thieves

## Threat scenarios

### 1. Credential exposure

An application exposes an AI provider token.

Possible impact: unauthorized API use, cost, abuse, or access to application resources.

### 2. Sensitive image exposure

An application sends a sensitive image to an external AI provider without adequate controls or disclosure.

Possible impact: privacy loss, regulatory exposure, or loss of confidential information.

### 3. Output URL exposure

A service returns an output through a URL and the URL is disclosed to the wrong person.

This is a scenario to test. It is not a claim that Prodia's image URLs are publicly readable.

### 4. Storage misconfiguration

A temporary object store or cache is configured incorrectly.

Possible impact: unauthorized access to stored images.

### 5. Supply-chain compromise

A provider or dependency is compromised.

Possible impact: data exposure, altered output, service disruption, or credential theft.

## Controls

Useful controls include short-lived credentials, least privilege, encryption in transit, encryption at rest, access logging, data-loss prevention, vendor review, deletion verification, network monitoring, and dependency monitoring.

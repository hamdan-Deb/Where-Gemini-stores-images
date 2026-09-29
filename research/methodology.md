# Research Methodology

## 1. Start with the question

The main question is whether Prodia is part of the image-processing or storage path used by Google's first-party Gemini products.

## 2. Source order

Use sources in this order:

1. Google documentation
2. Prodia documentation
3. Google Cloud documentation
4. technical standards
5. academic work
6. reputable reporting
7. user reports

## 3. Classify every claim

Each important claim gets an evidence label. Repetition across websites does not turn an unverified claim into a fact.

## 4. Compare the systems

Compare model names, API endpoints, authentication, input handling, output handling, retention, and public infrastructure statements.

## 5. Run controlled tests

For browser or application testing, record:

- date
- application and version
- browser and OS
- account type
- region
- test image hash
- domains contacted
- request methods
- response codes
- relevant headers
- output location

Never record credentials.

## 6. Keep observation and interpretation separate

Use this order in research notes:

```text
Observation
   |
   v
Evidence
   |
   v
Interpretation
   |
   v
Conclusion
```

## 7. Phrase negative findings narrowly

Good:

> Prodia traffic was not observed during TEST-001.

Bad:

> Gemini never uses Prodia.

The first statement describes a test. The second claims knowledge of the entire backend.

## 8. Reproducibility

Another researcher should be able to repeat a test without needing private data or credentials.

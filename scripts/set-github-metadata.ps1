# Requires GitHub CLI: https://cli.github.com/
# Run after: gh auth login

$repo = "hamdan-Deb/Where-Gemini-store-images"
$description = "Independent cybersecurity research into Gemini image handling, Prodia infrastructure, authentication, retention, data flows, and third-party AI security."
$topics = @(
  "cybersecurity",
  "ai-security",
  "ai-privacy",
  "google-gemini",
  "gemini",
  "prodia",
  "cloud-security",
  "privacy-research",
  "security-research",
  "network-analysis",
  "data-flow",
  "threat-modeling",
  "osint",
  "image-security",
  "ai-infrastructure"
)

gh repo edit $repo --description $description
foreach ($topic in $topics) {
  gh repo edit $repo --add-topic $topic
}

Write-Host "Repository metadata updated."
Write-Host "Set the social preview manually in GitHub Settings using assets/social-preview.png."

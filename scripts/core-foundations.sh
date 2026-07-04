#!/usr/bin/env bash

set -euo pipefail

echo "🚀 Bootstrapping Google Cloud Architecture Master Guide..."

#############################################
# Documentation Sections
#############################################

DOC_SECTIONS=(
  "14-Decision-Trees"
  "15-Comparison-Guides"
  "16-Enterprise-Reference-Architectures"
  "17-Interview-Guide"
  "18-Terraform-Blueprints"
  "19-Platform-Engineering"
  "20-AI-Infrastructure"
  "21-Production-Checklists"
  "22-Golden-Rules"
  "23-Common-Traps"
  "24-Service-Selection"
  "25-Mermaid-Diagrams"
)

for section in "${DOC_SECTIONS[@]}"; do
    mkdir -p "docs/$section/images"
    touch "docs/$section/README.md"
    touch "docs/$section/index.md"
done

#############################################
# Directories
#############################################

DIRS=(
    terraform/examples
    terraform/modules
    terraform/landing-zones
    terraform/reference-architectures

    architecture/decision-records
    architecture/reference-designs

    examples/cloud-run
    examples/gke
    examples/networking
    examples/security
    examples/databases
    examples/ai

    templates

    assets/images
    assets/icons
    assets/logos

    scripts/docs
    scripts/diagrams
    scripts/terraform

    practice-questions/foundations
    practice-questions/compute
    practice-questions/networking
    practice-questions/storage
    practice-questions/databases
    practice-questions/security
    practice-questions/iam
    practice-questions/operations
    practice-questions/reliability
    practice-questions/migration
    practice-questions/finops
    practice-questions/architecture
    practice-questions/case-studies
    practice-questions/mock-exams
)

mkdir -p "${DIRS[@]}"

#############################################
# Root Files
#############################################

FILES=(
    ROADMAP.md
    STYLE_GUIDE.md
    CONTRIBUTION_GUIDE.md
    CONTENT_PLAN.md
    RELEASE_PLAN.md
)

touch "${FILES[@]}"

echo ""
echo "✅ Repository scaffold created successfully!"
echo ""
echo "New documentation sections : ${#DOC_SECTIONS[@]}"
echo "Directories created        : ${#DIRS[@]}"
echo "Root files created         : ${#FILES[@]}"
echo ""
echo "Happy Architecting 🚀"
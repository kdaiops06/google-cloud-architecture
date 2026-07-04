#!/usr/bin/env bash

set -euo pipefail

echo "======================================================="
echo " Google Cloud Architecture Handbook Bootstrap"
echo "======================================================="

############################################
# Cleanup
############################################

echo "Cleaning old directories..."

find docs -type d -path "*/images/images" -exec rm -rf {} + 2>/dev/null || true

############################################
# Documentation Sections
############################################

echo "Creating documentation sections..."

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
"26-Architecture-Decision-Records"
"27-Reference-Architectures"
"28-Interview-Patterns"
"29-Design-Patterns"
"30-Best-Practices"
)

for section in "${DOC_SECTIONS[@]}"; do
    mkdir -p "docs/$section/images"
    touch "docs/$section/README.md"
    touch "docs/$section/index.md"
done

############################################
# Decision Tree Categories
############################################

TREE_DIRS=(
compute
networking
storage
databases
security
identity
migration
observability
architecture
ai
)

for dir in "${TREE_DIRS[@]}"; do
    mkdir -p "docs/14-Decision-Trees/$dir"
done

############################################
# Comparison Categories
############################################

COMPARE_DIRS=(
compute
networking
storage
databases
security
iam
ai
)

for dir in "${COMPARE_DIRS[@]}"; do
    mkdir -p "docs/15-Comparison-Guides/$dir"
done

############################################
# Architecture Decision Records
############################################

ADR_DIRS=(
compute
networking
security
storage
databases
platform
ai
)

for dir in "${ADR_DIRS[@]}"; do
    mkdir -p "docs/26-Architecture-Decision-Records/$dir"
done

############################################
# Enterprise Reference Architectures
############################################

REFERENCE_ARCHS=(
landing-zone
platform-engineering
developer-platform
observability
finops
ai-platform
banking
healthcare
retail
ecommerce
media
manufacturing
hybrid-cloud
saas
)

for arch in "${REFERENCE_ARCHS[@]}"; do
    mkdir -p "docs/27-Reference-Architectures/$arch"
done

############################################
# Root Directories
############################################

mkdir -p \
terraform/examples \
terraform/modules \
terraform/reference-architectures \
terraform/landing-zones \
examples/cloud-run \
examples/gke \
examples/networking \
examples/security \
examples/databases \
examples/ai \
architecture/reference-designs \
architecture/decision-records \
assets/images \
assets/icons \
assets/logos \
templates \
scripts/docs \
scripts/terraform \
scripts/diagrams \
scripts/generators

############################################
# Practice Questions
############################################

QUESTION_DIRS=(
foundations
compute
networking
storage
databases
security
iam
operations
reliability
migration
finops
architecture
case-studies
mock-exams
)

for dir in "${QUESTION_DIRS[@]}"; do
    mkdir -p "practice-questions/$dir"
done

############################################
# Templates
############################################

TEMPLATES=(
service-template.md
decision-tree-template.md
comparison-template.md
reference-architecture-template.md
case-study-template.md
golden-rules-template.md
production-checklist-template.md
interview-template.md
terraform-template.md
)

for file in "${TEMPLATES[@]}"; do
    touch "templates/$file"
done

############################################
# Generator Scripts
############################################

GENERATORS=(
create-service.sh
create-decision-tree.sh
create-comparison.sh
create-reference-architecture.sh
create-case-study.sh
create-interview-guide.sh
create-golden-rules.sh
)

for script in "${GENERATORS[@]}"; do
    touch "scripts/generators/$script"
    chmod +x "scripts/generators/$script"
done

############################################
# Project Docs
############################################

mkdir -p project

PROJECT_FILES=(
ROADMAP.md
CONTENT_PLAN.md
STYLE_GUIDE.md
RELEASE_PLAN.md
CONTRIBUTION_GUIDE.md
)

for file in "${PROJECT_FILES[@]}"; do
    [[ -f "$file" ]] && mv "$file" project/
done

############################################
# Rename Operations
############################################

if [[ -d docs/09-Operations ]]; then
    mv docs/09-Operations docs/09-Observability-and-SRE
fi

############################################
# Summary
############################################

echo ""
echo "======================================================="
echo " Bootstrap Complete"
echo "======================================================="
echo ""
echo "Documentation Sections : ${#DOC_SECTIONS[@]}"
echo "Decision Categories    : ${#TREE_DIRS[@]}"
echo "Comparison Categories : ${#COMPARE_DIRS[@]}"
echo "Reference Architectures: ${#REFERENCE_ARCHS[@]}"
echo "Templates             : ${#TEMPLATES[@]}"
echo "Generators            : ${#GENERATORS[@]}"
echo ""
echo "Repository ready for content generation."
echo ""
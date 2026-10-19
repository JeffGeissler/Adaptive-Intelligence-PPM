#!/usr/bin/env bash
# Fictional demo: creates a PUBLIC GitHub repo of synthetic AIPM records for the fictional Lumen Ridge Outfitters.
#
# Usage: ./create_demo_repo.sh [repo-name] [owner]
#   repo-name  default: aipm-demo-resolve-faster
#   owner      default: the currently authenticated gh user
#
# Requires: gh (authenticated), git, python3 (stdlib only, to read issues.json).
# Refuses to run if the repository already exists. Not idempotent.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$SCRIPT_DIR/repo-template"
ISSUES_JSON="$SCRIPT_DIR/issues.json"
PROJECT_TITLE="Resolve Faster – AIPM Records"

die() { echo "Error: $*" >&2; exit 1; }

for cmd in gh git python3; do
  command -v "$cmd" >/dev/null 2>&1 || die "'$cmd' is required but not installed."
done
[[ -d "$TEMPLATE_DIR" ]] || die "Template directory not found: $TEMPLATE_DIR"
[[ -f "$ISSUES_JSON" ]] || die "Issues file not found: $ISSUES_JSON"

gh auth status >/dev/null 2>&1 || die "gh is not authenticated. Run: gh auth login"

REPO_NAME="${1:-aipm-demo-resolve-faster}"
OWNER="${2:-$(gh api user --jq .login)}"
REPO="$OWNER/$REPO_NAME"

if gh repo view "$REPO" >/dev/null 2>&1; then
  die "Repository $REPO already exists. Refusing to modify it. Choose another name or delete it yourself."
fi

echo "This will create a PUBLIC repository: https://github.com/$REPO"
echo "It will contain fictional demo records (issue forms, labels, milestones, $(python3 -c 'import json,sys;print(len(json.load(open(sys.argv[1]))["issues"]))' "$ISSUES_JSON") issues)."
read -r -p "Create public repo $REPO? [y/N] " answer
if [[ ! "$answer" =~ ^[Yy]$ ]]; then
  echo "Aborted. Nothing was created."
  exit 1
fi

WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

# 1. Repository with template contents
echo "==> Creating repository and pushing template"
mkdir -p "$WORK_DIR/repo"
cp -R "$TEMPLATE_DIR/." "$WORK_DIR/repo/"
git -C "$WORK_DIR/repo" init -q -b main
git -C "$WORK_DIR/repo" add -A
GIT_IDENTITY=()
if [[ -z "$(git config user.email || true)" ]]; then
  GIT_IDENTITY=(-c user.name="AIPM demo" -c user.email="aipm-demo@example.invalid")
fi
git -C "$WORK_DIR/repo" ${GIT_IDENTITY[@]+"${GIT_IDENTITY[@]}"} commit -q -m "Add fictional AIPM demo records template"
gh repo create "$REPO" --public \
  --description "Fictional AIPM demo: Resolve Faster records (synthetic data)" \
  --source "$WORK_DIR/repo" --remote origin --push

# 2. Labels
echo "==> Creating labels"
create_label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force >/dev/null; echo "    $1"; }
create_label "aipm:outcome"    "0E8A16" "Outcome agreement (True North)"
create_label "aipm:evidence"   "1D76DB" "Evidence brief or evidence gap"
create_label "aipm:decision"   "B60205" "Decision brief"
create_label "aipm:experiment" "5319E7" "Experiment card (Break the Mold)"
create_label "aipm:dependency" "D93F0B" "Dependency, risk, issue, or blocker record"
create_label "aipm:lesson"     "FBCA04" "Applied lesson"
create_label "aipm:benefits"   "006B75" "Benefits and adoption review"
create_label "status:proposed" "C5DEF5" "Proposal; not yet approved by a named owner"
create_label "status:approved" "0E8A16" "Approved by the named owner"

# 3. Milestones (title|due date|description)
echo "==> Creating milestones"
while IFS='|' read -r title due desc; do
  gh api --method POST "repos/$REPO/milestones" \
    -f title="$title" -f due_on="${due}T23:59:59Z" -f description="$desc" >/dev/null
  echo "    $title"
done <<'EOF'
Steering committee 2026-10-23|2026-10-23|Resolve Faster steering committee (fictional)
Security approval needed 2026-11-06|2026-11-06|Latest date for production order-data access approval (fictional)
Q1 2027 portfolio decision 2026-11-13|2026-11-13|CFO planning review (fictional)
Holiday change freeze 2026-11-20|2026-11-20|Change freeze 2026-11-20 to 2027-01-08 (fictional)
Outcome review 2027-03-31|2027-03-31|Resolve Faster target date (fictional)
EOF

# 4. Issues
echo "==> Creating issues"
ISSUE_DIR="$WORK_DIR/issues"
mkdir -p "$ISSUE_DIR"
python3 - "$ISSUES_JSON" "$ISSUE_DIR" <<'PY'
import json, os, sys
src, out = sys.argv[1], sys.argv[2]
for i, issue in enumerate(json.load(open(src, encoding="utf-8"))["issues"], start=1):
    d = os.path.join(out, f"{i:02d}")
    os.makedirs(d)
    for name, value in (("title", issue["title"]), ("body", issue["body"]),
                        ("labels", ",".join(issue["labels"])), ("milestone", issue.get("milestone", ""))):
        with open(os.path.join(d, name), "w", encoding="utf-8") as f:
            f.write(value)
PY

ISSUE_URLS=()
for d in "$ISSUE_DIR"/*/; do
  title="$(cat "$d/title")"
  labels="$(cat "$d/labels")"
  milestone="$(cat "$d/milestone")"
  args=(--repo "$REPO" --title "$title" --body-file "$d/body")
  [[ -n "$labels" ]] && args+=(--label "$labels")
  [[ -n "$milestone" ]] && args+=(--milestone "$milestone")
  url="$(gh issue create "${args[@]}")"
  ISSUE_URLS+=("$url")
  echo "    $url"
done

# 5. Project board (only if the token has the project scope)
if gh auth status 2>&1 | grep -q "'project'"; then
  echo "==> Creating project: $PROJECT_TITLE"
  project_number="$(gh project create --owner "$OWNER" --title "$PROJECT_TITLE" --format json --jq .number)"
  for url in "${ISSUE_URLS[@]}"; do
    gh project item-add "$project_number" --owner "$OWNER" --url "$url" >/dev/null
  done
  gh project link "$project_number" --owner "$OWNER" --repo "$REPO" >/dev/null 2>&1 || true
  echo "    Added ${#ISSUE_URLS[@]} issues to project #$project_number"
else
  echo
  echo "Skipped the Project board: your gh token lacks the 'project' scope."
  echo "To add it, run:"
  echo "    gh auth refresh -s project"
  echo "then create the project manually:"
  echo "    gh project create --owner \"$OWNER\" --title \"$PROJECT_TITLE\""
  echo "    gh project item-add <number> --owner \"$OWNER\" --url <issue-url>   # once per issue"
fi

echo
echo "Done: https://github.com/$REPO"

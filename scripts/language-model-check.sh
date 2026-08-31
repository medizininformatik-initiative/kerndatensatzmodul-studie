#!/usr/bin/env bash
# language-model-check.sh — guard the German-default / English-translation model.
#
# MIGRATION NOTE (2026-08-31): this module is DE-FIRST per KDS-Governance §4.4
# and the meta-wiki Release-2027 plan ("IG Umbau – DE First") — the INVERSE of
# the template scaffold's English-default model. The template's guard would
# fail the sanctioned configuration itself, so its PATTERNS are inverted here:
# this IG renders in GERMAN by default (sushi-config.yaml
# `i18n-default-lang: de`) with an ENGLISH translation under
# `input/translations/en/`. Prose that calls English the default/leading/
# authoritative/source language contradicts the shipped configuration and
# fails here. Upstream template issue: the guard needs a DE-first mode.
#
#   scripts/language-model-check.sh        # scan the tracked text files
#
# Exit 0 = clean, 1 = residue found. Run by .github/workflows/convention-check.yml.
#
# Legitimate hits go in ALLOW below, one "<path>|<substring>" per entry — do NOT
# weaken PATTERNS.
#
# Not scanned: input/translations/de/** (the German translation itself),
# ig-template/** (the vendored mirror — fix it in ig-template-mii-kds and
# re-sync), and this file. Binary files are skipped by `git grep -I`.
#
# Bash 3.2 compatible.
set -u
cd "$(dirname "$0")/.." || exit 1

# Phrases that assert the wrong language model. Curated, not fuzzy: every entry
# below was an actual defect in this repo.
#
# Word boundaries are written as `[^A-Za-z]` / `(^|[^A-Za-z])` / `([^A-Za-z]|$)`,
# NOT as `\b`: git's built-in regex engine is not the GNU one, and it silently
# matches nothing for a `\b` pattern on some platforms — a guard that quietly
# under-matches is worse than no guard. The sibling ig-template-mii-kds script
# writes them the same way.
PATTERNS=(
  'english[^.]{0,30}[^A-Za-z](default|leading|authoritative|binding)([^A-Za-z]|$)'
  'english[^A-Za-z]{0,6}(is|stays|remains|as)?[^A-Za-z]{0,6}(the[^A-Za-z]{0,6})?(source|original)([^A-Za-z]|$)'
  'falls back to english'
  '(^|[^A-Za-z])en-default([^A-Za-z]|$)'
  'englisch \(standardsprache\)'
  'i18n-lang:[^]]{0,20}[^A-Za-z]de([^A-Za-z]|$)'
  'i18n-default-lang: en([^A-Za-z]|$)'
)

# Reviewed exceptions: "<path>|<substring of the offending line>", one per line.
# A module author writing their own prose can record a legitimate hit here
# without blanking a whole file from the scan.
ALLOW=''

args=()
for pattern in "${PATTERNS[@]}"; do
  args+=(-e "$pattern")
done

hits="$(git grep -n -I -i -E "${args[@]}" -- . \
  ':(exclude)input/translations/en' \
  ':(exclude)ig-template' \
  ':(exclude)docs' \
  ':(exclude)migration-log' \
  ':(exclude)README.simplifier-legacy.md' \
  ':(exclude)ImplementationGuide-2026.x.x' \
  ':(exclude)ImplementationGuide-2027.x.x-DE' \
  ':(exclude)ImplementationGuide-2027.x.x-EN' \
  ':(exclude)scripts/language-model-check.sh')"
rc=$?

# git grep exits 0 on a hit, 1 on no hit, and >1 on an error. The error case
# must not be mistaken for a clean tree, so the status is handled explicitly.
case "$rc" in
  1) echo "language-model-check: no English-default residue found."; exit 0;;
  0) ;;
  *) echo "ERROR: git grep failed (exit $rc)." >&2; exit "$rc";;
esac

status=0
while IFS= read -r hit; do
  [ -n "$hit" ] || continue
  f="${hit%%:*}"
  allowed=0
  while IFS= read -r entry; do
    [ -n "$entry" ] || continue
    case "$entry" in
      "$f|"*)
        needle="${entry#*|}"
        case "$hit" in *"$needle"*) allowed=1;; esac;;
    esac
  done <<EOF
$ALLOW
EOF
  [ "$allowed" = 1 ] && continue
  echo "$hit"
  status=1
done <<EOF
$hits
EOF

if [ "$status" != 0 ]; then
  cat >&2 <<'MSG'

English-default language residue found (see the lines above).

This IG is German-default with an English translation (DE-first,
KDS-Governance §4.4 + meta-wiki Release-2027):
  - input/pagecontent/**            German  — the source
  - input/translations/en/**        English — the translation, renders on /en/
  - input/includes/menu.xml         German  — the source menu
There is no input/translations/de/.

If a hit is legitimate, add it to ALLOW in scripts/language-model-check.sh with a
reason in the commit message. Do not widen the exclusions or relax PATTERNS.
MSG
else
  echo "language-model-check: no English-default residue found."
fi
exit "$status"

# Migration report — MII KDS Modul Medizinisches Forschungsvorhaben (Studie) → MII KDS module template

**In-place migration branch** (venue changed from the sandbox demonstrator to this repository on the explicit operator instruction of 2026-08-31 — see DEC-9). The run migrates
`medizininformatik-initiative/kerndatensatzmodul-studie` (master `6cc63c5`, 2026-08-31) onto
`mii-kds-module-template` **v0.13.2** (`a2390dea`) per skill **mii-ig-migration v0.25.0**
(agent-skills `5c0cc0c`), IG template `ig-template-mii-kds` **v1.3.4** referenced by URL
(no vendored copy). It is a decision-input for the module owners; **nothing is published**,
and applying it to the real repository is an owner decision (see ①-DEC-9).

## Summary — read this first

- **Shape A, in-place on a source snapshot.** FSH artefacts untouched (`comm -3` proof: only
  logged scaffold additions). SUSHI (pinned 3.20.1): **0 errors / 0 warnings**.
- **Same-module verification:** published artifact set **IDENTISCH** (59), canonical URLs
  **identisch** (42/42). Identity divergences = exactly the 3 recorded decisions (title,
  licence, IG-level publisher).
- **QA:** unmigrated source baseline (same publisher 2.3.2, same tx) **err = 41** → migrated
  **err = 17, broken links 2** — every remaining error is a **baseline-proven source-inherent
  class** (15× R5-backport ValueSet bindings unresolvable in R4; Library-example empty-anchor
  narrative). Migration-introduced defects found during QA (a leftover template-example link,
  a missing 12th special-url) were fixed in-run.
- **DE-first** (meta-wiki Release-2027 »IG Umbau – DE First«, KDS-Governance §4.4): German is
  the default language; the English pages are the **owner-authored** translations from the
  `ImplementationGuide-2027.x.x-EN` tree (no machine translation; tree versions match 2027.0.0).
- **Mechanical verification** (`verify-migration.py`): **93 IDENTISCH / 37 DIVERGIERT /
  22 NICHT PRÜFBAR** — all 37 DIVERGIERT rows adjudicated below (16 C4 = the known
  URL-stripping checker limitation + deliberately dropped labels of generated views; 14 C7 =
  cascade of those C4 rows; F1/F2 = recorded Gate-A decisions; P4 = no published Simplifier
  guide version exists; 4 R2 = publisher-own `{{title}}` chrome). One REAL content loss was
  found by the C4 triage and **restored** (the source index preamble).
- **Convention checks emulated locally** (they trigger only on dev/main/release branches):
  M1–M11 **PASS in dev AND release mode**; scripts test suite **107/107**;
  language-model-check green after inverting the guard to the DE-first model (upstream
  template finding).

## Where the evidence lives

Everything under `migration-log/` on this branch: `run.log` (append-only protocol, every
command + measured exit), `identity-claims.tsv`, `page-map.tsv` (the reviewed routing
contract, 15 `[MAP-EDIT]` rows), `derived-content.tsv`, `verification-findings.tsv` +
`verification.md`, `preflight-analysis.json` / `postflight-analysis.json`,
`same-module-compare.md`, `prepost-delta.md`/`.tsv`, `qa-checklist.md`,
`comparison-table.md`, re-measured verifier manifests (`template-pages-v0.13.2.tsv`,
`template-artifacts-v1.3.4.tsv`), guide-version evidence (`guide-versions-*.html`), and the
per-step raw logs. The rendered output is not committed; CI builds the branch preview.

## ① Decision queue (Gate A — someone must choose)

| Id | Decision taken in-run | Who confirms | If nobody acts |
| --- | --- | --- | --- |
| DEC-1 | **Licence CC-BY-4.0** from tier-R evidence (guide »© 2019+ TMF e. V., CC BY 4.0«, all trees + live EN guide). No machine source declares one (`license-align`: `license-missing`, exit 1). Template CC-BY-4.0 text kept under this decision. | TMF / module owners | Licence stays legally unconfirmed; ideally also add a LICENSE file + `license:` upstream |
| DEC-2 | **Version 2026.0.1** (the source tree's; skill default). Contradictions recorded, never resolved: registry `latest` **2026.0.2** (published 10 min after merge `44e01c0`, no git tag — offered as probable basis) and guide.yaml **2027.0.0** (ballot guides). | Module owners | Target stays at 2026.0.1; the 2027 ballot bump remains the owners' move |
| DEC-3 | **Title** »MII Implementation Guide Medizinisches Forschungsvorhaben« (absent in every machine source; template pattern, try-run precedent; guide titles recorded as tier-H evidence). | Module owners | Title stands as chosen |
| DEC-4 | **Dependency surface**: old-style `hl7.fhir.extensions.r5: 4.0.1` → explicit `hl7.fhir.uv.xver-r5.r4: 0.1.0` (identical materialized dependsOn; ends the hand-delete-vs-CI-bot churn of `19ab7b1`); + `hl7.fhir.uv.crmi 2.0.0`, `hl7.terminology.r4 7.3.0`, `hl7.fhir.uv.extensions.r4 5.3.0` (template machinery / auto-inject guard). F2 flags this by design. | Module owners | Pins stand; F2 row remains adjudicated |
| DEC-5 | **IG-level publisher NUM-DIZ** (template default; Dokument precedent); resource-level publisher stays »Medizininformatik Initiative« via the module's own `publisher.fsh`. | TF-KDS | Stands |
| DEC-6 | **example.org canonicals** (2 CS + 2 VS) carried unchanged via `special-url` (with the CapabilityStatement/metadata url = the predicted 12th entry). Upstream fix candidate: real canonicals for these four. | Module owners | QA keeps tolerating them via special-url |
| DEC-7 | **Date stand-ins**: `date`/`approvalDate` = 2026-01-09 (the v2026.0.1 release date); contact `office@medizininformatik-initiative.de`. | Module owners | Stand-ins persist until Gate D |
| DEC-8 | **NCI topic C15206** (»Clinical Study«, try-run precedent). | Module owners | Stands |
| DEC-9 | **Venue**: executed first in the FGDH sandbox (`mii-kds-studie-ig-inoffiziell` PR #6, now closed with a pointer), then pushed IN-PLACE to this repository on the explicit operator instruction of 2026-08-31; repository identity retargeted (9 files). Module-owner sanction of the migration itself remains the Gate-A/D question. | Module owners | The branch sits unreviewed on this repository |
| DEC-10 | **M9 measured**: keep extensions(14)/search-parameters(15)/value-sets(2)/code-systems(2)/metadata; **remove** researcher-guidance + operations(0). | Module owners | Stands |
| DEC-11 | **DE-first language guard inverted** (`scripts/language-model-check.sh` PATTERNS now guard German-default; the template guard protects EN-default and fails the sanctioned config itself). Upstream template issue proposed: a DE-first mode. NOTE: the Dokument migration branch ships the guard byte-identical — latently red if it ever runs there. | Template maintainers | Guard stays inverted in this module |

## ② Review queue (Gates B/C — someone must check)

Derived content (GENERATED from `migration-log/derived-content.tsv` — 4 `bridge` markers,
gate B, rendered as visible review boxes): the merged-search-parameters bridge and the
code-systems pointer, each in both languages.

Hand-written review items:

- REV-1 (B): the **authoritative DE-2027 tree's publication table** still reads
  »Version 2026.0.1 / Datum 09.01.2026« — carried **verbatim** (4th member of the version
  contradiction; upstream content fix for the owners).
- REV-2 (B): **Release Notes end at v2026.0.1** — no 2027 section exists in the source yet.
- REV-3 (B): the Terminologie note claims »keine eigenen CodeSystems und ValueSets« while the
  package ships **2 CS + 2 VS** — carried verbatim on `value-sets.md`, flagged there.
- REV-4 (B): the »erster Release 2025.0.0« link deep-links to the Organization page of the
  static export (source link bug, carried).
- REV-5 (B): the Datensatz FQL targeted the **retired ext-space LM canonical** — replaced by
  the artifact-page link with an explanatory note.
- REV-6 (C): EN nav labels keep German lead terms (»Dokument (DocumentReference)« …) — the
  owners' own style in the EN tree, carried.
- REV-7 (C): EN pages = owner-authored translations **transferred** (per-page provenance
  headers cite the exact 2027-EN path); Gate C is a correspondence review, not a translation
  review. DE↔EN page coverage 22/22.
- REV-8 (B): orphan `FHIR-Profile.page.md` RETIRED (in no toc of any tree; near-duplicate
  older variant of the family index — content preserved via that row).
- REV-9 (upstream courtesy): the DE-2027 guide key is **broken on Simplifier** (»Could not
  determine guide folder«); this build render-validates the DE tree for the first time.
- REV-10 (B): source qc rule checked the wrong canonical space (`…/fhir/ext/modul-studie/`)
  — fixed to the real bare space in the target qc; upstream fix candidate.

## ③ QA triage

Baseline (unmigrated source, publisher 2.3.2, tx.fhir.org, `-no-sushi` on the committed
`fsh-generated`): **err 41 / warn 629 / broken 0**. Migrated (same toolchain): **err 17 /
warn 653 / broken 2**.

| Class | Count | Whose problem |
| --- | --- | --- |
| R5-backport ValueSet bindings unresolvable in R4 (10 SD + 5 instance refs; verbatim in source FSH) | 15 | Source-inherent (baseline-proven); upstream fix = real R4 bindings |
| Library-example empty-anchor narrative (2 validation + 2 rendered `null` links = the 2 broken links) | 2+2 | Source-inherent (`Library/mii-exa-studie-register` `.text.div`) |
| CapabilityStatement id/url mismatch | 0 (was 3) | Fixed in-run: the predicted 12th `special-url` |
| Links to the deleted template example | 0 (was 2) | Fixed in-run: `examples.md` cleaned (both languages) |

## Identity (GENERATED — `migration-log.sh claims --markdown`)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| canonical | C | sushi-config.yaml | https://www.medizininformatik-initiative.de/fhir/modul-studie |  |
| id | C | sushi-config.yaml | mii-ig-studie |  |
| name | C | sushi-config.yaml | MII_IG_Medizinisches_Forschungsvorhaben |  |
| status | C | sushi-config.yaml | active |  |
| version | C | sushi-config.yaml | 2026.0.1 | YES -- Gate A |
| fhirVersion | C | sushi-config.yaml | 4.0.1 |  |
| packageId | C | sushi-config.yaml | de.medizininformatikinitiative.kerndatensatz.studie |  |
| copyrightYear | C | sushi-config.yaml | 2024+ |  |
| releaseLabel | C | sushi-config.yaml | ci-build |  |
| publisher | C | sushi-config.yaml | Medizininformatik Initiative |  |
| dependency:hl7.fhir.extensions.r5 | C | sushi-config.yaml | 4.0.1 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | C | sushi-config.yaml | 2026.0.0 |  |
| version | J | package.json | 2026.0.1 | YES -- Gate A |
| packageId | J | package.json | de.medizininformatikinitiative.kerndatensatz.studie |  |
| description | J | package.json | Medizininformatik Initiative - Modul Medizinisches Forschungsvorhaben |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | J | package.json | 2026.0.0 |  |
| version | H | ImplementationGuide-2027.x.x-DE+EN/guide.yaml (2027 Ballot guide metadata) | 2027.0.0 | YES -- Gate A |
| title | H | guide.yaml titles (DE/EN v2027, guide-level not IG-level) | Medizininformatik Initiative - ImplementationGuide - Medizinisches Forschungsvorhaben |  |
| license | R | guide Index.page.md (c) 2019+ TMF e.V. 'CC BY 4.0' (all 3 trees, DE+EN prose; live EN ballot guide footer 2026-08-31) | CC-BY-4.0 |  |
| packageId | P | package/package.json | de.medizininformatikinitiative.kerndatensatz.studie |  |
| version | P | package/package.json | 2026.0.2 | YES -- Gate A |
| description | P | package/package.json | Medizininformatik Initiative - Modul Medizinisches Forschungsvorhaben |  |
| fhirVersions | P | package/package.json | ["4.0.1"] |  |
| jurisdiction | P | package/package.json | urn:iso:std:iso:3166#DE |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:hl7.fhir.r4.core | P | package/package.json (source pin) | 4.0.1 |  |


## Verification

Full tables: `migration-log/verification.md` + `verification-findings.tsv` (93 IDENTISCH /
37 DIVERGIERT / 22 NICHT PRÜFBAR). Adjudication of every DIVERGIERT class:

| Check | Rows | Adjudication |
| --- | --- | --- |
| C4 | 16 | 1 REAL loss found + **restored** (source index preamble); the rest = the known URL-stripping checker limitation (link-bearing runs; probed present in the target by symmetric normalization + direct grep) and deliberately dropped `**Differential**`/`**Snapshot**`-label runs of removed generated views (the artifact pages render those; R1 covers it) |
| C7 | 14 | Cascade of the C4 limitation rows (»C4 misses + no DERIVED marker«); the actual migration-written text carries its 4 markers (derived-scan clean) |
| F1 | 1 | title — recorded decision DEC-3 |
| F2 | 1 | `hl7.fhir.extensions.r5` absent — recorded decision DEC-4 (replaced by the explicit xver pin) |
| P4 | 1 | No published Simplifier guide version exists (evidence `migration-log/guide-versions-*.html`); narrative came from the in-repo trees, pinned at commit `6cc63c5` |
| R2 | 4 | Publisher-own `{{title}}` chrome (searchform client-side template + retired-artifact boilerplate on `-definitions` pages) — Dokument-identical checker artifact |

The 22 NICHT PRÜFBAR rows are conditions that do not hold for this run (shape A: no goFSH /
harvest / discovery steps; zero-page R1 comparisons; the F1 version-confirmation row that is
always a human act) — each carries its action and gate in `verification.md`.

## Content map

`migration-log/comparison-table.md` renders every source page → target page pair as clickable
links (repo-file source links; the branch preview URL for the target). The reviewed
`page-map.tsv` is the contract: 22 authoritative-tree pages + 2 union pages routed, 6 RETIRED
rows with reasons, 15 `[MAP-EDIT]` corrections of the generated proposal.

## Protocol (generated from `migration-log/run.log`)

Steps executed (deduplicated `done`/`result` lines):

| Step / action | Exit |
| --- | --- |


WARN/ERROR census: 58 lines, each actioned in-run (`grep -E '  (WARN |ERROR)  ' migration-log/run.log`);
the notable ones: the anticipated non-zero exits (license-missing, fql-scan strict findings,
verify-migration findings), the identity contradictions (version ×3 — Gate A), the corrected
premature »test suite passes« claim (7 collateral failures found + fixed), and the
prepost-delta licence »REGRESSION« adjudicated as the SPDX-vs-prose normalization echo.

## Sign-off (GENERATED — `migration-log/qa-checklist.md`)

_(migration-log/qa-checklist.md not present)_

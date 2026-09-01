# Migration report — MII KDS Modul Medizinisches Forschungsvorhaben (Studie) → MII KDS module template

**Edition: v2027.0.0-ballot.rc1, in step with upstream's own RC.** This branch migrates the
module onto `mii-kds-module-template` **v0.13.2** (skill **mii-ig-migration v0.25.0**, IG template
v1.3.4 by URL) and **contains the module owners' own `v2027.0.0-ballot.rc1` release** (master
`8205e02`, PRs #67/#68 — merged into this branch after the owners released it while the migration
ran). The earlier `migration/2026.0.1-template-v0.13.2` branch (PR #66) is the superseded
source-version edition. Nothing is published; Gate D (TF-KDS/AG IOP/NSG) decides the merge.

## Summary — read this first

- **Fidelity vs the source of record (master@8205e02 = the owners' RC):** published artifact set
  **IDENTISCH** (59), canonical URLs **identisch** (42/42), **version identisch**
  (2027.0.0-ballot.rc1). Identity deltas = the recorded decisions only (title added — none exists
  in any machine source; licence CC-BY-4.0 per tier-R evidence; IG-level publisher NUM-DIZ).
- **QA:** unmigrated-source baseline err=41 → **final err=15, broken links=0**. All 15 remaining
  errors are ONE class: the R5-backport ValueSet bindings (5 R5-only canonicals across 3 backport
  extensions) — unresolvable in any R4 package; disposition = ①-DEC-11 (owner choice; carried
  unchanged like the Simplifier-era source).
- **Mechanical verification:** **93 IDENTISCH / 37 DIVERGIERT / 22 NICHT PRÜFBAR** — every
  DIVERGIERT adjudicated below (C4 checker limitation + deliberately dropped generated-view
  labels; C7 cascade; F1 title decision; F2 dependency decision; P4 no published guide version;
  R2 publisher chrome).
- **DE-first** (meta-wiki Release-2027): German default, English = the owners' own translations
  (2027-EN tree). Convention check passes in **release mode**; scripts tests 107/107.
- **Fixes applied beyond the pure migration** (each logged, each reversible):
  F-1 logical-model recursive `contentReference` → canonical#element-id (rendered publisher
  exception on the LM pages, present in the source; now renders as an anchor) ·
  F-2 Library example documentation link → `relatedArtifact.url` + `document.url` (renderer read
  url; profile mandates document 1..1; killed the last 2 broken links) ·
  F-3 full version alignment: 15 SearchParameters were hardcoded `1.0.0-ballot`, the
  CapabilityStatement `2026.0.1`, 5 resources version-less — all now flow through the module's
  own Version/PR_CS_VS_Version rulesets (census asserted: 43 conformance @ ballot RC, 17 example
  instances version-less by design) · F-4 version literals on version-history/metadata pages ·
  F-5 the owners' 2027 release-notes sections ported into `changes.md` (both languages).
- **Upstream findings for the owners (courtesy, ② queue):** their RC ships the CapabilityStatement
  version literal as `"2027.0.0-ballot.rc1§§"` (stray characters — this branch uses the Version
  ruleset instead) and a qc `version-filled` predicate with broken syntax; the Terminologie page
  still claims "keine eigenen CodeSystems und ValueSets" while the package ships 2+2; the
  registry's published 2026.0.2 has no git tag (probable basis: commit `44e01c0`).

## ① Decision queue (Gate A — owners)

| Id | State |
| --- | --- |
| DEC-1 licence | CC-BY-4.0 from tier-R evidence (guide © TMF prose); **owner confirmation pending**; ideal: add LICENSE + `license:` upstream |
| DEC-2 version | **RESOLVED BY UPSTREAM ACTION**: the owners released v2027.0.0-ballot.rc1 themselves; this branch carries their version and their `releaseLabel: release` (PR #68) |
| DEC-3 title | "MII Implementation Guide Medizinisches Forschungsvorhaben" (absent in every machine source; template pattern) |
| DEC-4 dependency surface | old-style `hl7.fhir.extensions.r5` → explicit `hl7.fhir.uv.xver-r5.r4 0.1.0`; + crmi 2.0.0, THO 7.3.0, extensions.r4 5.3.0 (template machinery). NOTE: the owners' RC release notes claim the xver dependsOn was removed, but their sushi-config still carries the old-style package that regenerates it — the explicit pin here ends that churn |
| DEC-5 publisher | IG-level NUM-DIZ (template default), resource-level stays MII (module ruleset) |
| DEC-6 example.org canonicals | 2 CS + 2 VS carried unchanged via `special-url` (12 entries incl. CapabilityStatement/metadata) |
| DEC-7 dates | `date`/`approvalDate` stand-ins (2026-01-09) — refresh when the owners set the ballot publication date |
| DEC-8 NCI topic | C15206 (Clinical Study) |
| DEC-9 venue | executed in the FGDH sandbox first, then in-place on this repository by explicit operator instruction; sandbox = historical mirror |
| DEC-10 M9 pages | keep extensions/search-parameters/value-sets/code-systems/metadata (measured counts); remove researcher-guidance/operations |
| DEC-11 R5-backport bindings | **the 15 remaining QA errors.** Options: (a) accept as known R4-backport limitation (source + advisor precedent — the shipped state), (b) vendor the 5 R5 ValueSets with special-url (breaks artifact-set parity), (c) re-point to THO equivalents (semantic re-binding). Recommendation: (a); owner call |
| DEC-12 DE-first guard | `language-model-check.sh` PATTERNS inverted to guard the DE-first model (template guard protects EN-default and fails the sanctioned config); upstream template issue candidate |

## ② Review queue (Gates B/C) — unchanged items from the migration

Derived content: 4 `bridge` markers (search-parameters merge note + code-systems pointer, both
languages), rendered as visible boxes; `derived-scan` clean. Hand items: the 2025.0.0
first-release deep-link bug (carried); EN nav labels keep German lead terms (owner style,
carried); orphan `FHIR-Profile.page.md` RETIRED (near-duplicate); Terminologie contradiction
(above); breadcrumb "Table of Contents" not yet in the de .po (template-level, also on the 2026
preview — upstream template issue).

## Content map (where every source page went)

### Comparison table (GENERATED by comparison-table.py — do not retype; regenerate instead)

This table belongs inside `migration-log/migration-report.md` (section *Content map*), whose glossary explains every term used here; `references/codes.md` of the skill is the backstop. "Agreed page" = a page of the template's fixed menu; "migration-written blocks" = passages the migration WROTE rather than carried, marked in the rendered guide and listed per page in `derived-content.tsv`. Found a discrepancy while comparing? Record it as a report item (REV-n) — never fix a page ad hoc.

**Where every source page went** — one row per page-map row; open both links side by side to compare manually. *(constructed)* marks a source link derived from the guide root rather than read from the harvest manifest.

| Rendered source page | Rendered target page | What moved | Migration-written blocks on the target |
|---|---|---|---|
| [`MIIIGModulStudie/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/Index.page.md) *(repo file, not rendered)* | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/index.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/Release-Notes.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/Release-Notes.page.md) *(repo file, not rendered)* | [`input/pagecontent/changes.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/changes.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/BeschreibungModul.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/BeschreibungModul.page.md) *(repo file, not rendered)* | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/index.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/KontextimGesamtprojektBezgezuanderenModulen.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/KontextimGesamtprojektBezgezuanderenModulen.page.md) *(repo file, not rendered)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/implementer-guidance.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/Referenzen.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/Referenzen.page.md) *(repo file, not rendered)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/implementer-guidance.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulStudie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md) *(repo file, not rendered)* | [`input/pagecontent/guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/guidance.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md) *(repo file, not rendered)* | [`input/pagecontent/logical-models.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/logical-models.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/AnwendungsflleInformationsmodell/UML.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/AnwendungsflleInformationsmodell/UML.page.md) *(repo file, not rendered)* | [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/uml-diagrams.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/TechnischeImplementierung/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/Index.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md) *(repo file, not rendered)* | [`input/pagecontent/capability-statements.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/capability-statements.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md) *(repo file, not rendered)* | [`input/pagecontent/value-sets.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/value-sets.html) | merged into an agreed page | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md) *(repo file, not rendered)* | [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/profiles.html) | a section on a family index page | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-dokument-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-dokument.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/EvidenceVariable.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/EvidenceVariable.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-ein-auschluss-kriterium-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-register-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-register.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Organization.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Organization.page.md) *(repo file, not rendered)* | [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/profiles.html) | a section on a family index page | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-beteiligte-person-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-beteiligte-person.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-studie-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-studie.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-proband-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-proband.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/StudyInclusion.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/StudyInclusion.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-studie-studieneinschluss-anfrage-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`index.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/input/pagecontent/index.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`ImplementationGuide-2026.x.x/**`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/ImplementationGuide-2026.x.x/**) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`ImplementationGuide-2027.x.x-EN/**`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/ImplementationGuide-2027.x.x-EN/**) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |

**The template's own pages** — the template puts these pages in EVERY module, so their EXISTENCE needs no source page; per row whether their CONTENT stayed template-default or also receives source content. Class: `scaffold` = the template ships it and every module keeps it · `optional` = kept only while artefacts of its type exist (check M9) · `demo` = must be gone on a release branch (check M8).

| Template page | Class | Receives source content? | Migration-written blocks |
|---|---|---|---|
| [`input/pagecontent/capability-statements.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/capability-statements.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/changes.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/changes.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/code-systems.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/code-systems.html) | optional | no — template content | 2 |
| [`input/pagecontent/downloads.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/downloads.html) | scaffold | no — template content | — |
| [`input/pagecontent/examples.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/examples.html) | scaffold | no — template content | — |
| [`input/pagecontent/extensions.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/extensions.html) | optional | no — template content | — |
| [`input/pagecontent/guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/guidance.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/implementer-guidance.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/index.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/logical-models.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/logical-models.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/metadata.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/metadata.html) | optional | no — template content | — |
| [`input/pagecontent/operations.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/operations.html) | optional | no — template content | — |
| [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/profiles.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/rendering-artifacts.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/rendering-artifacts.html) | demo | no — template content | — |
| [`input/pagecontent/researcher-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/researcher-guidance.html) | optional | no — template content | — |
| [`input/pagecontent/search-parameters.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/search-parameters.html) | optional | no — template content | 2 |
| [`input/pagecontent/security-and-privacy.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/security-and-privacy.html) | scaffold | no — template content | — |
| [`input/pagecontent/translationinfo.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/translationinfo.html) | scaffold | no — template content | — |
| [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/uml-diagrams.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/value-sets.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/value-sets.html) | optional | yes — see its rows above | — |
| [`input/pagecontent/version-history.md`](https://medizininformatik-initiative.github.io/kerndatensatzmodul-studie/branches/migration/2027.0.0-ballot.rc1-template-v0.13.2/version-history.html) | scaffold | no — template content | — |

## Verification adjudication (final run, vs master@8205e02)

| Check | Rows | Adjudication |
| --- | --- | --- |
| C4 | 16 | URL-stripping checker limitation (link-bearing runs probed PRESENT by symmetric normalization + grep) + deliberately dropped `**Differential**`/`**Snapshot**` label runs of removed generated views; the ONE real loss found in-run (source index preamble) was restored |
| C7 | 14 | cascade of the C4 limitation rows; actual migration-written text carries its 4 markers |
| F1 | 1 | title — DEC-3 |
| F2 | 1 | `hl7.fhir.extensions.r5` absent — DEC-4 |
| P4 | 1 | no published Simplifier guide version exists (evidence `migration-log/guide-versions-*.html`) |
| R2 | 4 | publisher-own `{{title}}` chrome (searchform + retired-artifact boilerplate) |

prepost-delta vs the RC source: 1 REGRESSION = the licence normalization echo (SPDX id vs licence
name vs official title — same licence; known analyzer limitation), adjudicated; everything else
unchanged/improved/expected-change.

## Identity (GENERATED)

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


## Where the evidence lives

`migration-log/` on this branch: `run.log` (4 runs, 96 WARN/ERROR lines, each actioned),
`identity-claims.tsv`, `page-map.tsv` (15 [MAP-EDIT]), `derived-content.tsv`,
`verification-findings.tsv` + `verification.md`, pre/postflight + `prepost-delta.*`,
`same-module-compare.md`, `qa-checklist.md`, `comparison-table.md` (clickable source↔preview
pairs), re-measured template manifests, guide-version evidence, per-step raw logs.

## Protocol (generated from run.log — last completed instance per step)

| Step | Exit |
| --- | --- |


## Sign-off (GENERATED — migration-log/qa-checklist.md)

### QA checklist (GENERATED by qa-checklist.py — do not retype; regenerate instead)

One checkbox per open obligation, from the machine ledgers. Ticking a box asserts the *named person* did the *named thing*. This list belongs inside `migration-log/migration-report.md` (section *Sign-off*): the detail behind every item id, the glossary for every code, term, gate owner and source shape, and the *How to re-run* commands all live there (and in the skill's `references/codes.md`). Pages named bare live in `input/pagecontent/`; names ending in `-intro` live in `input/intro-notes/`. 93 finding(s) verdicted IDENTISCH owe nobody anything and are not listed.

#### Gate A — identity (module maintainer, with TF-KDS)

- [ ] **F1-b5b102** (F1 - module identity unchanged): the SOURCE wins (spec 2.2); restore it or record the divergence as a Gate-A decision -- never normalise silently — *fix it, or accept it with a named reason in the report*
- [ ] **F2-a51d44** (F2 - dependency pins identical to the source's): carry the dependency over — *fix it, or accept it with a named reason in the report*
- [ ] **F2 ×4** (F2 - dependency pins identical to the source's): confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition — *do the named action so the check can run - this is not a pass*  <sub>ids: F2-fd0e73, F2-047205, F2-e78ce4, F2-8f9355</sub>
- [ ] **identity `version`** claims 3 different values: `2026.0.1` (sushi-config.yaml) vs `2027.0.0` (ImplementationGuide-2027.x.x-DE+EN/guide.yaml (2027 Ballot guide metadata)) vs `2026.0.2` (package/package.json) — *choose one and record why*

#### Gate B — narrative (the module's clinical and technical authors)

- [ ] **C4 ×3** (C4 - the source's narrative text present somewhere): conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-7b2767, C4-fc1144, C4-d47516</sub>
- [ ] **C4 ×16** (C4 - the source's narrative text present somewhere): map the missing text to a target page section, or record the loss in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: C4-811435, C4-196ae3, C4-b96f0f, C4-6a7c10, C4-0d5125, C4-49d110, C4-f261ca, C4-b4c8d4, C4-b4415b, C4-e9c444, C4-fe91db, C4-03ec0a, C4-8f44e7, C4-f03204, C4-33f027, C4-ef59ff</sub>
- [ ] **C6 ×7** (C6 - text landed on the page the map promised): a split is legitimate when the source page was deliberately divided; confirm the routing or correct the page map — *do the named action so the check can run - this is not a pass*  <sub>ids: C6-9629d9, C6-9bf5f1, C6-fa135e, C6-32f0c1, C6-dd2f30, C6-c8ed00, C6-7057c8</sub>
- [ ] **C6-b580a9** (C6 - text landed on the page the map promised): no page-map row declares where this page's text was MEANT to go, so 'right page' has no mechanical meaning -- read the landing distribution and confirm the routing (spec section 9) — *do the named action so the check can run - this is not a pass*
- [ ] **R2 ×4** (R2 - page header/footer metadata render correctly): rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) — *fix it, or accept it with a named reason in the report*  <sub>ids: R2-afba10, R2-48ed52, R2-16b769, R2-d1da9a</sub>
- [ ] **R1-76f413** (R1 - tables, tabs and images render with content): harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference — *do the named action so the check can run - this is not a pass*
- [ ] **`code-systems`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`search-parameters`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md` RETIRED**: [MAP-EDIT] deliberately-empty Simplifier folder index ("Diese Seite wurde absichtlich leer gelassen") — navigation moves to the template menu — *confirm nothing in it is needed*
- [ ] **`MIIIGModulStudie/TechnischeImplementierung/Index.page.md` RETIRED**: [MAP-EDIT] deliberately-empty Simplifier folder index ("Diese Seite wurde absichtlich leer gelassen") — navigation moves to the template menu — *confirm nothing in it is needed*
- [ ] **`MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md` RETIRED**: [MAP-EDIT] orphan (in no toc.yaml of any tree) and near-duplicate older variant of FHIR-Profile/Index.page.md ("WARNUNG!" text cell instead of the image) — content preserved via the Index row above — *confirm nothing in it is needed*
- [ ] **`index.md` RETIRED**: [MAP-EDIT] source input/pagecontent/index.md is the 3-line SUSHI boilerplate stub ("Feel free to modify this index page") moved by 19ab7b1 — no module content; superseded by the guide tree's Index.page.md — *confirm nothing in it is needed*
- [ ] **`ImplementationGuide-2026.x.x/**` RETIRED**: historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) — *confirm nothing in it is needed*
- [ ] **`ImplementationGuide-2027.x.x-EN/**` RETIRED**: parallel-language tree - the owner-authored EN translation, consumed page-by-page into input/translations/en/ (5.1a #2; same version 2027.0.0 as the authoritative tree -> stale-tree caveat inapplicable) — *confirm nothing in it is needed*

#### Gate C — language (a reviewer competent in both languages)

- [ ] **C7 ×14** (C7 - migration-written content is marked as such): mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead — *fix it, or accept it with a named reason in the report*  <sub>ids: C7-0209b1, C7-9191f0, C7-2a031c, C7-e9d23e, C7-8c8c7d, C7-093a42, C7-cb08b7, C7-3f7797, C7-5b9833, C7-283e85, C7-4f50d8, C7-12d2ac, C7-b541e0, C7-c672c0</sub>

#### Gate D — release (TF-KDS / AG IOP / NSG; merging is what publishes)

- [ ] **P3-c39a79** (P3 - IG Publisher version matches the workflow pin): upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here — *do the named action so the check can run - this is not a pass*
- [ ] **P4-379bde** (P4 - source guide pinned to a published version): re-harvest from a PUBLISHED version; `current` is not reproducible. Where the guide has no published version at all, that is the finding -- record it as such rather than leaving the pin unstated — *fix it, or accept it with a named reason in the report*
- [ ] **L2-7163a2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The repository's LICENSE text is the only machine source for `license` — the field that must never default (spec §2.2). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-07bdbb** (L2 - every expected step wrote a log line): confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-930ba2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. — *do the named action so the check can run - this is not a pass*
- [ ] **L4-106e61** (L4 - the log's counts agree with the tree): shape B only; for shape A there is nothing to convert — *do the named action so the check can run - this is not a pass*
- [ ] **L4-f17740** (L4 - the log's counts agree with the tree): harvest the guide (step 2c) where the narrative is not in the repo — *do the named action so the check can run - this is not a pass*
- [ ] **pre/post delta**: `prepost-delta.md` shows no REGRESSION row, or every regression is explained in the report — *never merged unexplained*
- [ ] **CI**: the module's own checks are green on the migration branch
- [ ] **gates A–C**: signed by the named reviewers above
- [ ] **publication decision**: recorded with name and date — *merging is what publishes*

<!-- REPORT-AUTHORED ITEMS - the generator cannot enumerate judgement.
     Add ONE checkbox per DEC-n / REV-n / QA-n block of this report,
     under the gate that owns it, in the form:
     - [ ] **DEC-1** <its one-line what> - *<its next action>*  -->


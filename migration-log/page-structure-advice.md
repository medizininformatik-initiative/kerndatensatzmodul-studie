# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/0afac26a-e740-4b1b-ae89-7e9976f6722c/scratchpad/mig/source-view` |
| target repo | `.` |
| routing table | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/0afac26a-e740-4b1b-ae89-7e9976f6722c/scratchpad/agent-skills/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/0afac26a-e740-4b1b-ae89-7e9976f6722c/scratchpad/mig/work/migration-log/preflight-analysis.json` |
| artefact census | Gate 0 preflight artifacts_detail (59 declarations; no fsh-generated tree) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-31T17:56:05Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/ImplementationGuide-2027.x.x-DE`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-2026.x.x` | Medizininformatik Initiative – ImplementationGuide – Medizinisches Forschungsvorhaben v2026 | 2026.x.x | 2026.0.1 | DE | 22 | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `ImplementationGuide-2027.x.x-DE` | Medizininformatik Initiative – ImplementationGuide – Medizinisches Forschungsvorhaben DE v2027 | 2027.x.x | 2027.0.0 | DE | 22 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |
| `ImplementationGuide-2027.x.x-EN` | Medizininformatik Initiative – ImplementationGuide – Medizinisches Forschungsvorhaben EN v2027 | 2027.x.x | 2027.0.0 | EN | 22 | parallel-language tree - harvest seed for the translation skill, not a machine translation (5.1a #2) |

**Chosen: `ImplementationGuide-2027.x.x-DE`** - HUMAN OVERRIDE: --guide-tree ImplementationGuide-2027.x.x-DE (the spec 5.1a ranking below was not applied).

The module's narrative language read from `sushi-config.yaml` `language:` is **DE**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/ImplementationGuide-2027.x.x-DE/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 5 | 23% |
| 2 | 7 | 32% |
| 3 | 10 | 45% |
| **total** | **22** | 100% |

Maximum depth used: **3**. Total words across the 22 source pages: **4880**. Pages in `input/pagecontent/`: **1**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md` exists on disk but is **not listed in MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulStudie/Index.page.md`
   |- Release Notes  `MIIIGModulStudie/Release-Notes.page.md`
   |- Beschreibung Modul Medizinisches Forschungsvorhaben  `MIIIGModulStudie/BeschreibungModul.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulStudie/KontextimGesamtprojektBezgezuanderenModulen.page.md`
   |- Referenzen  `MIIIGModulStudie/Referenzen.page.md`
   |- Index  `MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulStudie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md`
   |  `- UML  `MIIIGModulStudie/AnwendungsflleInformationsmodell/UML.page.md`
   `- Index  `MIIIGModulStudie/TechnischeImplementierung/Index.page.md`
      |- CapabilityStatement  `MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md`
      |- Terminologie  `MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md`
      `- Index  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md`
         |- Dokument (DocumentReference)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md`
         |- Ein- und Ausschlusskriterium (EvidenceVariable)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/EvidenceVariable.page.md`
         |- Register (Library)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md`
         |- Organisation (Organization)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Organization.page.md`
         |- Beteiligte Person (PractitionerRole)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md`
         |- Studie (ResearchStudy)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md`
         |- Proband:in (ResearchSubject)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md`
         |- Studieneinschluss (StudyInclusion)  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/StudyInclusion.page.md`
         `- FHIR-Profile  `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-studie.md` | 253 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 32 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 531 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 132 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 300 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 116 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 121 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 29 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 436 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 34 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 1920 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `profiles.md` | 68 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 98 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 396 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 70 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 160 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 504 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 23 | 33 | 10 |
| widest dropdown (Artefakte) | 9 | 10 | 1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Anleitung | 4 | 6 |
| Konformität | 5 | 5 |
| Artefakte | 9 | 1 |
| Metadaten | 2 | 8 |

After the proposals in section 4: total 10 free, top level 1 free, freest dropdown Metadaten (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulStudie/Index.page.md` | 1 | 6 | 287 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulStudie/Release-Notes.page.md` | 1 | 0 | 317 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `MIIIGModulStudie/BeschreibungModul.page.md` | 1 | 0 | 601 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulStudie/KontextimGesamtprojektBezgezuanderenModulen.page.md` | 1 | 0 | 207 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulStudie/Referenzen.page.md` | 1 | 0 | 57 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md` | 2 | 3 | 10 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulStudie/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 7 | `MIIIGModulStudie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md` | 2 | 0 | 139 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 8 | `MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md` | 2 | 0 | 84 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 9 | `MIIIGModulStudie/AnwendungsflleInformationsmodell/UML.page.md` | 2 | 0 | 3 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 10 | `MIIIGModulStudie/TechnischeImplementierung/Index.page.md` | 2 | 3 | 12 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulStudie/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 11 | `MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 83 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 12 | `MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md` | 2 | 0 | 20 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulStudie/TechnischeImplementierung/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 13 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md` | 3 | 9 | 116 | 2 section on index page | h3/h4 section on search-parameters.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 9 children, 4 anchoring distinct artefacts (SearchParameter) |
| 14 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md` | 3 | 0 | 448 | 1 intro-note | input/intro-notes/SearchParameter-DocumentReference-size-intro.md | compact match on DocumentReference-size (2 candidate artefacts) |
| 15 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/EvidenceVariable.page.md` | 3 | 0 | 277 | 1 intro-note | input/intro-notes/SearchParameter-EvidenceVariable-characteristic-description-intro.md | compact match on EvidenceVariable-characteristic-description (1 candidate artefact) |
| 16 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md` | 3 | 0 | 321 | 1 intro-note | input/intro-notes/SearchParameter-Library-quellregister-intro.md | compact match on Library-quellregister (2 candidate artefacts) |
| 17 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Organization.page.md` | 3 | 0 | 114 | 2 section on index page | h3/h4 section on search-parameters.md | child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 18 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md` | 3 | 0 | 329 | 2 section on index page | h3/h4 section on search-parameters.md | child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 19 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md` | 3 | 0 | 733 | 1 intro-note | input/intro-notes/SearchParameter-ResearchStudy-label-intro.md | compact match on ResearchStudy-label (12 candidate artefacts) |
| 20 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md` | 3 | 0 | 378 | 2 section on index page | h3/h4 section on search-parameters.md | child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 21 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/StudyInclusion.page.md` | 3 | 0 | 233 | 2 section on index page | h3/h4 section on search-parameters.md | child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 22 | `MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md` | 3 | 0 | 111 | 2 section on index page | h3/h4 section on search-parameters.md <br>_(on disk but not listed in MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/toc.yaml)_ | child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |

Branch totals: 1 intro-note = 4, 2 section on index page = 6, 3 merge into agreed page = 8, 4 own page = 4.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md - nested under MIIIGModulStudie/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md - nested under MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulStudie/TechnischeImplementierung/Index.page.md - nested under MIIIGModulStudie/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md - nested under MIIIGModulStudie/TechnischeImplementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulStudie/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulStudie/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulStudie/BeschreibungModul.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulStudie/KontextimGesamtprojektBezgezuanderenModulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulStudie/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulStudie/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulStudie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulStudie/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulStudie/AnwendungsflleInformationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulStudie/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulStudie/TechnischeImplementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md	branch=2	h3/h4 section on search-parameters.md	9 children, 4 anchoring distinct artefacts (SearchParameter)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md	branch=1	input/intro-notes/SearchParameter-DocumentReference-size-intro.md	compact match on DocumentReference-size (2 candidate artefacts)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/EvidenceVariable.page.md	branch=1	input/intro-notes/SearchParameter-EvidenceVariable-characteristic-description-intro.md	compact match on EvidenceVariable-characteristic-description (1 candidate artefact)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md	branch=1	input/intro-notes/SearchParameter-Library-quellregister-intro.md	compact match on Library-quellregister (2 candidate artefacts)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Organization.page.md	branch=2	h3/h4 section on search-parameters.md	child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md	branch=2	h3/h4 section on search-parameters.md	child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md	branch=1	input/intro-notes/SearchParameter-ResearchStudy-label-intro.md	compact match on ResearchStudy-label (12 candidate artefacts)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md	branch=2	h3/h4 section on search-parameters.md	child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/StudyInclusion.page.md	branch=2	h3/h4 section on search-parameters.md	child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/FHIR-Profile.page.md	branch=2	h3/h4 section on search-parameters.md	child of family overview MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	map rows=25 retired=2 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **25** total - 23 routed source pages (22 from the primary tree, 1 union pages outside it) and 2 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `index.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: in input/pagecontent but not in the primary page tree)_ |

### 7.2 RETIRED guide trees

| Tree | Reason |
| --- | --- |
| `ImplementationGuide-2026.x.x/**` | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `ImplementationGuide-2027.x.x-EN/**` | parallel-language tree - harvest seed for the translation skill, not a machine translation (5.1a #2) |

### 7.3 Coverage validation

Universe re-derived from disk: **23** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 23 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 14 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 15 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 2 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 2 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

Artefact types in the census's OTHER bucket - each has NO template page and needs its own named placement (its own `5.4a` line; a type nobody placed is a queue-1 item):

| `artifacts.other` type | Count | Proposed placement |
| --- | ---: | --- |
| EvidenceVariable | 2 | h3/h4 section on `artifacts.md` |
| Library | 1 | h3/h4 section on `artifacts.md` |

Declared-vs-generated mismatches Gate 0 reports (3) - the GENERATED counts above are the authoritative ones: `examples` 17->14, `other:EvidenceVariable` 0->2, `other:Library` 0->1.


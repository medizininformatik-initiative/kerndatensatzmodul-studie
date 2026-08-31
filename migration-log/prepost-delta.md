# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (studie-source-master-6cc63c5, 6cc63c5, 2026-08-31T17:29:42Z) |
| post | postflight-analysis.json (studie-migrated, 108710b, 2026-08-31T18:16:43Z) |

Verdicts: **unchanged** 25 · **improved** 1 · **expected-change** 5 · **REGRESSION** 1 · **not-measurable** 2.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-studie | mii-ig-studie | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/modul-studie | https://www.medizininformatik-initiative.de/fhir/modul-studie | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.studie | de.medizininformatikinitiative.kerndatensatz.studie | unchanged |  |
| `identity.name` | MII_IG_Medizinisches_Forschungsvorhaben | MII_IG_Medizinisches_Forschungsvorhaben | unchanged |  |
| `identity.version` | 2026.0.1 | 2026.0.1 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | - | CC-BY-4.0 | not-measurable | the field is absent from the pre measurement |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik Initiative | NUM-DIZ | expected-change | descriptive metadata, not machine identity -- confirm the change is deliberate in the report |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | - | MII Implementation Guide Medizinisches Forschungsvorhaben | not-measurable | the field is absent from the pre measurement |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | false | false | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 7 | 7 | unchanged |  |
| `artifacts.extensions` | 14 | 14 | unchanged |  |
| `artifacts.valuesets` | 2 | 2 | unchanged |  |
| `artifacts.codesystems` | 2 | 2 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 15 | 15 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 17 | 17 | unchanged |  |
| `artifacts.rulesets` | 8 | 44 | expected-change | the count rose by 36 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 0 | 0 | unchanged |  |
| `artifacts.mappings` | 0 | 0 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 59 | 59 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 0 | 19 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 7 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 19 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 0 | 0 | unchanged |  |


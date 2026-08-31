# MII KDS Modul Medizinisches Forschungsvorhaben (Studie)

<!-- TODO:REVIEW — README rewritten during the 2026-08-31 template migration
     (migration-written text, ①-review queue). The previous Simplifier-era
     README is preserved as README.simplifier-legacy.md; merge anything still
     wanted from it, then delete that file. -->

FHIR® R4 Implementation Guide des Moduls **Medizinisches Forschungsvorhaben**
des Kerndatensatzes der
[Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de).
Das Modul beschreibt Metadaten klinischer Studien und anderer
Forschungsvorhaben — Studie (`ResearchStudy`), Proband:in (`ResearchSubject`),
Studieneinschluss (`ServiceRequest`), Ein-/Ausschlusskriterien
(`EvidenceVariable`), Register (`Library`) und begleitende Profile,
Terminologien und Beispiele.

- **Package:** `de.medizininformatikinitiative.kerndatensatz.studie`
- **Canonical:** `https://www.medizininformatik-initiative.de/fhir/modul-studie`
- **Version:** 2026.0.1 (Quellstand; Versionskonflikt 2026.0.2/2027.0.0 → Gate A,
  siehe `migration-log/migration-report.md`)
- **Lizenz:** CC BY 4.0 (Gate-A-Entscheidung aus Guide-Evidenz; siehe [LICENSE](LICENSE))

## Aufbau (seit Migration auf das MII-KDS-Modul-Template)

Dieses Repository ist auf das
[mii-kds-module-template](https://github.com/medizininformatik-initiative/mii-kds-module-template)
migriert (IG Publisher statt Simplifier-Rendering; Migration:
`migration-log/migration-report.md`). Deutsch ist die Standardsprache des
Guides, Englisch die Übersetzung unter `input/translations/en/` — die
englischen Seiten stammen aus dem von den Modulverantwortlichen erstellten
2027-EN-Guide-Baum.

| Pfad | Inhalt |
| --- | --- |
| `input/fsh/` | FSH-Quellen (Profile, Extensions, Terminologien, Beispiele) |
| `input/pagecontent/` | Guide-Seiten (deutsch, Standardsprache) |
| `input/translations/en/` | Englische Übersetzungen |
| `fsh-generated/` | Von SUSHI generierte FHIR-Ressourcen |
| `ImplementationGuide-*/` | Simplifier-Guide-Bäume der Quelle (Ablösung nach Gate D) |
| `docs/` | Template-Dokumentation (Konzepte, Rezepte) |

## Build

```bash
npx --yes fsh-sushi@3.20.0 .          # FSH → FHIR-Ressourcen
# vollständiger Guide-Build: siehe .github/workflows/ig-publisher.yml
# bzw. docs/recipes/first-build-in-devcontainer.md
```

## Mitwirken

Issues und Pull Requests bitte gegen dieses Repository. Nicht-triviale Änderungen folgen dem MII Module Release Workflow
([kerndatensatz-meta Wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki)).

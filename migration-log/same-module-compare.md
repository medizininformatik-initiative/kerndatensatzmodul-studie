# IG-Vergleich (2 IGs)

_Same-Module-Vergleich: alle Eingaben tragen dieselbe packageId (`de.medizininformatikinitiative.kerndatensatz.studie`) — der Report prüft **Migrations-/Zustandstreue** statt Portfolio-Umfang. Referenz ist die ERSTE Eingabe._

## Same-Module-Verifikation

_Migrations-/Zustandstreue eines EINEN Moduls über mehrere Stände: Identitätsfelder, Artefakt-Satz und Canonical-URLs müssen identisch sein; die Narrative-Tabelle zeigt Seiten/Wörter je Sprach-Ebene (verbleibende Plattform-Quellseiten getrennt), die Wort-Abdeckung ist ein heuristischer Vollständigkeits-Indikator. Alles gezählt — keine Prognose._

<div align="center">

| Identitätsfeld | studie-source-master-6cc63c5 | studie-ballot-rc1 | Befund |
|---|---|---|---|
| id | mii-ig-studie | mii-ig-studie | ✓ identisch |
| canonical | https://www.medizininformatik-initiative.de/fhir/modul-studie | https://www.medizininformatik-initiative.de/fhir/modul-studie | ✓ identisch |
| packageId | de.medizininformatikinitiative.kerndatensatz.studie | de.medizininformatikinitiative.kerndatensatz.studie | ✓ identisch |
| name | MII_IG_Medizinisches_Forschungsvorhaben | MII_IG_Medizinisches_Forschungsvorhaben | ✓ identisch |
| title | — | MII Implementation Guide Medizinisches Forschungsvorhaben | ⚠ DIVERGIERT |
| version | 2026.0.1 | 2027.0.0-ballot.rc1 | ⚠ DIVERGIERT |
| status | active | active | ✓ identisch |
| fhirVersion | 4.0.1 | 4.0.1 | ✓ identisch |
| license | — | CC-BY-4.0 | ⚠ DIVERGIERT |
| publisher | Medizininformatik Initiative | NUM-DIZ | ⚠ DIVERGIERT |

</div>

### Narrative je Sprach-Ebene (Seiten / Wörter)

<div align="center">

| Ebene | studie-source-master-6cc63c5 | studie-ballot-rc1 |
|---|---|---|
| Default-Sprache (input/pagecontent) | 1 / 18 | 19 / 8391 |
| Übersetzungen (input/translations) | 0 / 0 | 19 / 9727 |
| Plattform-Quellseiten (verbleibend) | 0 / 0 | 0 / 0 |
| sonstige | 0 / 0 | 7 / 1449 |

</div>

_Wort-Abdeckung relativ zur Referenz (Heuristik; ein bilingualer Stand überschreitet 100 %):_  **studie-ballot-rc1: Default 46617 % · Übersetzungen 54039 %**

### Befund

- Identität: **⚠ 4 Feld(er) DIVERGIEREN**
- Publizierter Artefakt-Satz (Kategorie+Name): **IDENTISCH** (59 Artefakte)
- Canonical-URLs der Artefakte: ✓ identisch (42 URLs)
_Interne FSH-Konstrukte (informativ, kein Befund): studie-ballot-rc1: 0 fehlend, 36 zusätzlich (z.B. Template-Rulesets)._

## Kennzahlen (je IG)

<div align="center">

| Metrik | studie-source-master-6cc63c5 | studie-ballot-rc1 |
|---|---|---|
| Artefakte gesamt | 59 | 59 |
| Profile | 7 | 7 |
| ValueSets | 2 | 2 |
| CodeSystems | 2 | 2 |
| Beispiele | 17 | 17 |
| Narrative-Inhalts-Seiten | 0 | 18 |
| Wörter gesamt | 0 | 8377 |
| Plattform-Direktiven | 0 | 0 |
| Doppelte Inhaltsblöcke | 0 | 2 |
| Nicht referenzierte Bilder | 0 | 0 |
| Dependencies (floating) | 2 (0) | 5 (0) |
| Ø Wörter / Seite | 0 | 465,4 |
| Median Wörter / Seite | 0 | 296 |
| Hersteller-Lock-in /100 | 0 | 0 |
| Standard-Terminologie % | 87 | 96 |
| Bus-Faktor % (Top-Autor) | 39 | 38 |

</div>

_Artefakte mit identischem Namen in mehreren IGs deuten auf Konsolidierungspotenzial (gemeinsames Basis-Modul) hin; senkt den Gesamt-Wartungsaufwand._

## Normalisierte Kennzahlen (fairer Vergleich)

<div align="center">

| Metrik | studie-source-master-6cc63c5 | studie-ballot-rc1 |
|---|---|---|
| Direktiven je Seite | 0 | 0.0 |
| Beispiele je Profil | 2.43 | 2.43 |

</div>

## Umfang: Artefakte vs. Plattform-Direktiven

<div align="center">

```mermaid
%%{init: {'theme':'base','themeVariables':{"quadrant1Fill": "#4E79A7", "quadrant2Fill": "#F28E2B", "quadrant3Fill": "#59A14F", "quadrant4Fill": "#E15759", "quadrant1TextFill": "#FFFFFF", "quadrant2TextFill": "#FFFFFF", "quadrant3TextFill": "#FFFFFF", "quadrant4TextFill": "#FFFFFF", "quadrantPointFill": "#1A1A1A", "quadrantPointTextFill": "#1A1A1A", "quadrantXAxisTextFill": "#1A1A1A", "quadrantYAxisTextFill": "#1A1A1A", "quadrantTitleFill": "#1A1A1A"}}}%%
quadrantChart
    title Artefakte vs. Direktiven
    x-axis Wenige_Artefakte --> Viele_Artefakte
    y-axis Wenige_Direktiven --> Viele_Direktiven
    quadrant-1 viele & direktivenlastig
    quadrant-2 wenige & direktivenlastig
    quadrant-3 wenige & direktivenarm
    quadrant-4 viele & direktivenarm
    "studie-source-master-6cc63c5": [1.0, 0.0]
    "studie-ballot-rc1": [1.0, 0.0]
```

</div>

# Anhang: Methodik & Metrik-Erklärung

_Beschreibung jeder im Report verwendeten Kennzahl - was sie misst und wie sie ermittelt wird - zur Nachvollziehbarkeit._

<div align="center">

| Kennzahl | Was es misst | Herkunft / Berechnung |
|---|---|---|
| Artefakte (publiziert) | Anzahl der vom IG bereitgestellten FHIR-Konformitätsressourcen je Typ (Profile, Extensions, ValueSets, CodeSystems, Logical Models, CapabilityStatements, Beispiele). | Zählung der Deklarationen in input/fsh (bzw. generierten Ressourcen); interne FSH-Konstrukte (RuleSets/Invarianten/Mappings) separat, nicht im Total. |
| Plattform-/Simplifier-Direktiven | Vorkommen plattformspezifischer Platzhalter in den Erklärseiten, die ein generischer IG Publisher nicht versteht. | Mustererkennung je Direktiven-Typ in den Narrative-Seiten; nicht abgedeckte -> UNBEKANNT. |
| Linguistik (Wörter/Seite) | Textumfang der Inhalts-Seiten als Durchschnitt, Median und Extremwerte - Indikator für Dokumentations- und Übersetzungsumfang. | Wortzählung je Inhalts-Seite (ohne Stubs). |
| Inhaltliche Dopplungen | Identische Textabsätze (>= 12 Wörter) bzw. identische Seiten - Hinweis auf Redundanz/Aufräumpotenzial. | Hash-Vergleich normalisierter Absätze/Dateien. |
| Repo-Hygiene (ungenutzte Dateien) | Bilder/Beispiele, die in keiner Erklärseite referenziert sind (Dead-Code-Analogie). | Heuristik: Datei-/Artefaktname kommt im Seitentext nicht vor (kein Beweis für Ungenutztheit). |
| Reife-Komponenten | Status, Doku-Vollständigkeit (Inhalt vs. Stubs), Beispiel-Abdeckung der Profile und Governance-Merkmale — nebeneinander, bewusst nicht zu einem Score verdichtet. | Gezählt/abgeleitet aus sushi-config, Narrative, artifacts_detail und Repo-Dateien; die Freigabe-Einordnung bleibt menschlich. |
| Hersteller-Lock-in | Bindung an die Quellplattform durch proprietäre Direktiven (0-100, Band). | Grobe Heuristik aus Direktiven je Seite. |
| Standard-Terminologie-Anteil | Anteil standardisierter Terminologie (SNOMED/LOINC/ICD/UCUM) gegenüber Eigen-Terminologie. | Grobe Heuristik aus Textvorkommen der Standardsysteme vs. Anzahl lokaler CodeSystems. |
| Wiederverwendung externer Profile | Anteil der Profil-Parents, die auf externen Basisbausteinen statt eigenem Material beruhen. | FSH Parent:-Referenzen; abstrakte LM-Basistypen (Element/Base/...) ausgeschlossen. |
| FHIR-Versions-Aktualität | Wie aktuell die FHIR-Basis ist (R4/R4B/R5) - Zukunftssicherheit. | fhirVersion aus sushi-config, gegen bekannte Versionslinie eingeordnet. |
| Pflege-Kadenz | Lebendigkeit der Pflege (Commits/Jahr, Tage seit letztem Commit). | Git-Historie des analysierten Repos. Erfordert vollständige Git-Historie: bei einem shallow clone (jeder URL-Input wird shallow geklont) nicht ermittelbar und daher null. |
| Bus-Faktor (Wissenskonzentration) | Schlüsselpersonen-Risiko: Anteil des Top-Autors an allen Commits. | Git-Historie, Autoren nach E-Mail gruppiert (Alias-robust). Erfordert vollständige Git-Historie: bei einem shallow clone (jeder URL-Input wird shallow geklont) nicht ermittelbar und daher null. |
| Terminologie-Lizenz | Lizenz-/IP-Risiko gebundener Terminologien (z.B. SNOMED CT lizenzpflichtig). | Erkennung der Standardsysteme im FSH + hinterlegte Lizenzeinstufung. |
| Unterdrückte Warnungen | Risiko, dass ausgeblendete QA-Meldungen echte Fehler verbergen (breit/Wildcard vs. eng). | Klassifikation der Einträge in input/ignoreWarnings.txt. |
| Datenschutz-Substanz | Ob die Datenschutz-Seite substanziell ist und ob Beispiele PII-artige Daten enthalten. | Wortzahl der security-privacy-Seite + Heuristik (birthDate/name) in Beispielen. |
| Breaking-Change-Risiko | Kompatibilitätsbruch gegenüber der publizierten Vorversion. | Nur per Build/Vorversions-Diff ermittelbar - im statischen Modus nicht erhoben (null). |
| Statisch vs. Build | Erhebungsmodus jeder Kennzahl. | static = nur Quelldateien/Git; build = erfordert IG-Publisher-Lauf (qa.json); extern = Registry/Netz. Nicht statisch erhebbare Größen bleiben null und sind so markiert. |

</div>

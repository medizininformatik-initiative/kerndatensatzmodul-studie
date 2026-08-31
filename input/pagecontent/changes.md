<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung der Standardsprachseite input/pagecontent/changes.md
     — beide Dateien müssen dasselbe aussagen. Struktur aus kerndatensatz-basis
     input/pagecontent/changes.md (Branch main) — ein Abschnitt je Version,
     neueste zuerst — und aus der MII-Release-Notes-Vorlage
     (kerndatensatz-meta/implementation-guides/MedizininformatikInitiative-ImplementationGuide-Template/
     MII-IG-Modul--Modul/Release-notes.page.md), die "Keep a Changelog" vorgibt.

     Pflegeregel: Für jedes Release oben einen neuen Abschnitt
     `#### Version <x>` ergänzen, in BEIDEN Sprachen, als Teil des
     Release-Pull-Requests. Einen veröffentlichten Abschnitt danach nicht mehr
     ändern. -->

Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des
Moduls **Medizinisches Forschungsvorhaben** fest, die neueste Version zuerst. Sie folgt
[Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem
KDS-CalVer-Schema, das die Seite [Versionierung](version-history.html)
beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach
Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder
  Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt
  werden sollen.
* **Entfernt** — zurückgezogene Artefakte.

<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/Release-Notes.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     NOTE queue-②: newest entry is v2026.0.1 — no 2027 section exists yet in the source) -->
#### Änderungen finale Version v2026.0.1 (veröffentlicht 09.01.2026)

### Neue Profile und Funktionalität

- **ResearchSubject Profil**: Übernahme des Profils zur Erfassung von Studienteilnehmern (Probanden) aus dem Modul Person
  - **Integration**: In Implementation Guide mit Capability Statements
  - **Proband-Snapshot**: Zur IG hinzugefügt
  - **Beispiele**: Für ResearchSubject hinzugefügt
  - **Referenzressourcen**: Für Beispiele ergänzt

- **Studieneinschlussempfehlung Profil**: Neues Profil für Studieneinschlussempfehlungen
  - **Beispiele**: Für Studieneinschluss-Anfragen hinzugefügt
  - **Integration**: In Implementation Guide

- **UML-Diagramme**: Umfassendes UML-Diagramm für MII-Studienmodell angepasst
  - **Visuelle Dokumentation**: Der Modularchitektur verbessert

### Implementation Guide Verbesserungen

- **Dokumentation aktualisiert**:
  - CapabilityStatement-Dokumentation korrigiert (Tippfehler behoben)
  - Referenzen.md mit aktuellen Informationen aktualisiert
  - Kontext-Dokumentation (KontextimGesamtprojektBezgezuanderenModulen.md) aktualisiert
  - Verweise auf veraltetes ART-DECOR entfernt
  - Simplifier-Issue-Verweise durch GitHub ersetzt
  - Verweise auf Basis- und Erweiterungsmodule wo nicht mehr anwendbar entfernt

### Beispieldaten-Erweiterungen

- **Test-Bundle und Beispiele hinzugefügt**:
  - Umfassendes Beispiel-Bundle für Tests hinzugefügt
  - ResearchStudy-Beispiele mit Extension-Elementen erweitert
  - EvidenceVariable-Beispiele mit zusätzlichen Elementen erweitert
  - Patient- und Consent-Beispiele aktualisiert
  - Proband (Teilnehmer) Identifier-Struktur modifiziert
  - Beispiel-URLs für Konsistenz aktualisiert
  - Aktuelle Beispielstruktur neu geordnet
  - ValueSets für Beispiele hinzugefügt

### Validierung und Qualitätsverbesserungen

- **HDB-Issues behoben**:
  - HDB-722: FHIR-Profile in FHIR-Profile Unterordner verschoben
  - HDB-723: Defekte Bild-Referenzen in Dokumentation korrigiert
  - HDB-725: meta.profile für Ein- und Ausschlusskriterium korrigiert
  - HDB-726: meta.profile für Register, PractitionerRole, ResearchStudy, ResearchSubject korrigiert
  - HDB-727: ResearchStudy-Beispiel nicht inkludiert - behoben

- **Suchparameter und Logical Model**:
  - Nummerierung in Suchparametern korrigiert
  - MS-Flag von reasonReference entfernt wo nicht anwendbar

### Technische Verbesserungen

- **Dependencies und Package Management**:
  - package.json Abhängigkeiten aktualisiert
  - Meta-Dependency auf neueste Version aktualisiert
  - Konkrete Meta-Dependency-Version gesetzt
  - Versionsinformationen im gesamten Modul aktualisiert

### Konformität und Standards

- **KDS Release Guideline 2025.0.0 Konformität**:
  - Konformität mit KDS Release Guideline 2025.0.0 sichergestellt
  - Daten und Metadaten korrigiert
  - Checkliste für Implementation Guide Veröffentlichung für Kommentierungsversion abgeschlossen

### Translations

- Translations Pull Request zusammengeführt
- Mehrsprachige Unterstützung verbessert

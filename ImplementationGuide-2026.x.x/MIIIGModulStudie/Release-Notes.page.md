---
parent: 
---

## {{page-title}}
Hier sind alle Änderungen aufgelistet. 

## Änderungen finale Version v2026.0.1 (veröffentlicht 09.01.2026)

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
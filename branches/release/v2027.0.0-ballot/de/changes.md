# Änderungshistorie - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Änderungshistorie**

## Änderungshistorie

Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des Moduls **Medizinisches Forschungsvorhaben** fest, die neueste Version zuerst. Sie folgt [Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem KDS-CalVer-Schema, das die Seite [Versionierung](version-history.md) beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt werden sollen.
* **Entfernt** — zurückgezogene Artefakte.

#### Änderungen Ballot-Version v2027.0.0-ballot.rc1 (Stand 31.08.2026)

##### Neue Profile und Funktionalität

* **ProbandIn im Logical Model ergänzt**: Neues BackboneElement "ProbandIn" (Person, die an einer Studie teilnimmt) hinzugefügt 
* Felder: SubjektIdentifizierungscode, Rechtsgrundlage, BeginnTeilnahme, EndeTeilnahme, StatusDerTeilnahme, BezeichnungDerStudie
 
* **Übersetzungen (Translations) für Profile ergänzt**: 
* ResearchSubject (Proband)-Profil: Titel, Beschreibung sowie Elemente (identifier, status, period, study, individual, consent) um deutsche und englische Übersetzungen erweitert
* Studieneinschluss-Anfrage-Profil: Elemente (status, intent, category, code, reasonReference, supportingInfo) um deutsche und englische Übersetzungen erweitert
* Englische Version des Implementation Guide
 

##### Fehlerkorrekturen

* **Extension-Context eingeschränkt**: Kontext der ResearchStudy-Extensions (Studienregister, Eligibility, Akronym, Rekrutierung, Finanzierung, Ethikvotum, Backport AssociatedParty/Label) explizit auf ResearchStudy beschränkt
* **Logical Model korrigiert**: Element "id" der BusinessID zu "identifier" umbenannt, da der Logical-Model-Namespace jedem Element bereits eine eigene id vergibt
* **Validator-Fehler behoben**: 
* Nicht mehr benötigte Abhängigkeit (hl7.fhir.uv.xver-r5.r4) aus dem ImplementationGuide entfernt
* Home-Seite im Table of Contents ergänzt
* pagecontent-Ordner an den korrekten Pfad verschoben
 
* **Rechtschreibfehler behoben**: Tippfehler im Titel des deutschen Implementation Guide korrigiert, Kennzeichnung "DE" im Titel ergänzt
* **Defekter Link korrigiert**: Verweis auf die IPS-Regeln zu must-support-Elementen aktualisiert, Warnhinweis-Symbol in der zugehörigen Tabelle ergänzt

##### Harmonisierung und technische Verbesserungen

* **Aliases harmonisiert**: Terminologie-Aliases vereinheitlicht und standardisiert (u. a. $SCT, $LNC, $UCUM), Verwendung in Beispielen und Profilen entsprechend angepasst
* **Rulesets standardisiert**: 
* Neues RuleSet "MetaProfile" für die Versionierung von meta.profile-Angaben eingeführt
* Translation-RuleSet mit klareren Parameternamen überarbeitet
* Platzhalterdatei für Lizenzbedingungen (license-terms.fsh) angelegt
 
* **Spracheinstellung ergänzt**: Sprachkennzeichnung "de-DE" in sushi-config.yaml hinzugefügt

#### Änderungen finale Version v2026.0.1 (veröffentlicht 09.01.2026)

### Neue Profile und Funktionalität

* **ResearchSubject Profil**: Übernahme des Profils zur Erfassung von Studienteilnehmern (Probanden) aus dem Modul Person 
* **Integration**: In Implementation Guide mit Capability Statements
* **Proband-Snapshot**: Zur IG hinzugefügt
* **Beispiele**: Für ResearchSubject hinzugefügt
* **Referenzressourcen**: Für Beispiele ergänzt
 
* **Studieneinschlussempfehlung Profil**: Neues Profil für Studieneinschlussempfehlungen 
* **Beispiele**: Für Studieneinschluss-Anfragen hinzugefügt
* **Integration**: In Implementation Guide
 
* **UML-Diagramme**: Umfassendes UML-Diagramm für MII-Studienmodell angepasst 
* **Visuelle Dokumentation**: Der Modularchitektur verbessert
 

### Implementation Guide Verbesserungen

* **Dokumentation aktualisiert**: 
* CapabilityStatement-Dokumentation korrigiert (Tippfehler behoben)
* Referenzen.md mit aktuellen Informationen aktualisiert
* Kontext-Dokumentation (KontextimGesamtprojektBezgezuanderenModulen.md) aktualisiert
* Verweise auf veraltetes ART-DECOR entfernt
* Simplifier-Issue-Verweise durch GitHub ersetzt
* Verweise auf Basis- und Erweiterungsmodule wo nicht mehr anwendbar entfernt
 

### Beispieldaten-Erweiterungen

* **Test-Bundle und Beispiele hinzugefügt**: 
* Umfassendes Beispiel-Bundle für Tests hinzugefügt
* ResearchStudy-Beispiele mit Extension-Elementen erweitert
* EvidenceVariable-Beispiele mit zusätzlichen Elementen erweitert
* Patient- und Consent-Beispiele aktualisiert
* Proband (Teilnehmer) Identifier-Struktur modifiziert
* Beispiel-URLs für Konsistenz aktualisiert
* Aktuelle Beispielstruktur neu geordnet
* ValueSets für Beispiele hinzugefügt
 

### Validierung und Qualitätsverbesserungen

* **HDB-Issues behoben**: 
* HDB-722: FHIR-Profile in FHIR-Profile Unterordner verschoben
* HDB-723: Defekte Bild-Referenzen in Dokumentation korrigiert
* HDB-725: meta.profile für Ein- und Ausschlusskriterium korrigiert
* HDB-726: meta.profile für Register, PractitionerRole, ResearchStudy, ResearchSubject korrigiert
* HDB-727: ResearchStudy-Beispiel nicht inkludiert - behoben
 
* **Suchparameter und Logical Model**: 
* Nummerierung in Suchparametern korrigiert
* MS-Flag von reasonReference entfernt wo nicht anwendbar
 

### Technische Verbesserungen

* **Dependencies und Package Management**: 
* package.json Abhängigkeiten aktualisiert
* Meta-Dependency auf neueste Version aktualisiert
* Konkrete Meta-Dependency-Version gesetzt
* Versionsinformationen im gesamten Modul aktualisiert
 

### Konformität und Standards

* **KDS Release Guideline 2025.0.0 Konformität**: 
* Konformität mit KDS Release Guideline 2025.0.0 sichergestellt
* Daten und Metadaten korrigiert
* Checkliste für Implementation Guide Veröffentlichung für Kommentierungsversion abgeschlossen
 

### Translations

* Translations Pull Request zusammengeführt
* Mehrsprachige Unterstützung verbessert


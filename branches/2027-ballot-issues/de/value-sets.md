# ValueSets - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **ValueSets**

## ValueSets

### ValueSets

Diese Seite beschreibt die ValueSets des Moduls **Medizinisches Forschungsvorhaben** (Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung von Codes: siehe [FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die zugrunde liegenden CodeSystems beschreibt die Seite [CodeSystems](code-systems.md).

**Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server `tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht vollständig).

### Terminologien

#### CodeSystems / ValueSets

In der derzeitigen Version des Moduls Studie werden keine eigenen CodeSystems und ValueSets zur Verwendung definiert.

Das Paket enthält aus Kompatibilitätsgründen noch zwei CodeSystems mit zugehörigen ValueSets unter `http://example.org/…`: **Associated Party Role** und **Research Study Category**. Sie stammen aus früheren Beispielen, sind **zurückgezogen** (`status = retired`) und sollen nicht mehr verwendet werden:

* Für die Rolle beteiligter Personen und Organisationen gilt das HL7-CodeSystem `http://hl7.org/fhir/research-study-party-role`, an das die Extension MII EX Studie Backport AssociatedParty gebunden ist.
* `ResearchStudy.category` ist nicht gebunden. Hier sollen Standardterminologien wie SNOMED CT oder NCIt verwendet werden.


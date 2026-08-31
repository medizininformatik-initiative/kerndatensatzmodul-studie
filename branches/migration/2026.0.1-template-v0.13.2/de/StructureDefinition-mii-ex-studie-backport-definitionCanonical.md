# MII EX Studie Backport definitionCanonical - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Studie Backport definitionCanonical**

## Extension: MII EX Studie Backport definitionCanonical 

| | |
| :--- | :--- |
| *Offizielle URL*:http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_EX_Studie_Backport_definitionCanonical |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md) and [Cross-version Profile for R5.EvidenceVariable for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-EvidenceVariable.html)
* Examples for this Extension: [Bundle/mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.md) and [EvidenceVariable/mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-ex-studie-backport-definitionCanonical.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type canonical: 

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type canonical: 

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-studie-backport-definitionCanonical.csv), [Excel](../StructureDefinition-mii-ex-studie-backport-definitionCanonical.xlsx), [Schematron](../StructureDefinition-mii-ex-studie-backport-definitionCanonical.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-studie-backport-definitionCanonical",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "brr"
  }],
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical",
  "version" : "2026.0.1",
  "name" : "MII_EX_Studie_Backport_definitionCanonical",
  "title" : "MII EX Studie Backport definitionCanonical",
  "status" : "active",
  "date" : "2026-08-31T20:08:31+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/EvidenceVariable",
        "http://hl7.org/fhir/StructureDefinition/Evidence"]
      }]
    }]
  }
}

```

# MII EX Studie Backport DefinitionByCombination - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Studie Backport DefinitionByCombination**

## Extension: MII EX Studie Backport DefinitionByCombination 

| | |
| :--- | :--- |
| *Offizielle URL*:http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_EX_Studie_Backport_Definition_By_Combination |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md) and [Cross-version Profile for R5.EvidenceVariable for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-EvidenceVariable.html)
* Examples for this Extension: [Bundle/mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.md) and [EvidenceVariable/mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-ex-studie-backport-definition-by-combination.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: 

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: 

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-studie-backport-definition-by-combination.csv), [Excel](../StructureDefinition-mii-ex-studie-backport-definition-by-combination.xlsx), [Schematron](../StructureDefinition-mii-ex-studie-backport-definition-by-combination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-studie-backport-definition-by-combination",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "brr"
  }],
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination",
  "version" : "2026.0.1",
  "name" : "MII_EX_Studie_Backport_Definition_By_Combination",
  "title" : "MII EX Studie Backport DefinitionByCombination",
  "status" : "active",
  "date" : "2026-08-31T20:03:51+00:00",
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
      "min" : 2
    },
    {
      "id" : "Extension.extension:code",
      "path" : "Extension.extension",
      "sliceName" : "code",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:code.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:code.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:code.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/characteristic-combination"
      }
    },
    {
      "id" : "Extension.extension:threshhold",
      "path" : "Extension.extension",
      "sliceName" : "threshhold",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:threshhold.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:threshhold.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "threshhold"
    },
    {
      "id" : "Extension.extension:threshhold.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "Extension.extension:characteristic",
      "path" : "Extension.extension",
      "sliceName" : "characteristic",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:characteristic.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:characteristic.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "characteristic"
    },
    {
      "id" : "Extension.extension:characteristic.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "id"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

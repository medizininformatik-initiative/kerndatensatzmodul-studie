# MII PR Studie EinAuschlussKriterium - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Studie EinAuschlussKriterium**

## Resource Profile: MII PR Studie EinAuschlussKriterium 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:MII_PR_Studie_EinAuschlussKriterium |

 
This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative. 

## Inclusion and Exclusion Criterion (EvidenceVariable)

-------

**Description**

This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative.

-------

**Notes**

| | |
| :--- | :--- |
| EvidenceVariable.id | Must-support, but optional |
| EvidenceVariable.meta | Must-support, but optional |
| EvidenceVariable.meta.profile | Mandatory for querying in the DIC repository, including the version number of the profile. See[CapabilityStatement](capability-statements.md). Optional in all other cases. |
| EvidenceVariable.characteristic.description | Textual description of the criterion |
| EvidenceVariable.characteristic.definition[x] | In the associated backport extensions from FHIR R5, more data types are permitted than in FHIR R4. If, for example, the extension definitionByCombination or definitionByTypeAndValue is used, definitionCodeableConcept must be populated with the Data-Absent-Reason code "unknown" so that the cardinality of 1..1 remains fulfilled. |
| EvidenceVariable.characteristic.exclude | Boolean element that defines whether this is an inclusion or exclusion criterion |

-------

**Mapping**

| | |
| :--- | :--- |
| EvidenceVariable.characteristic.description | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Kriterium |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Operator |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Masseinheit |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Wert |
| EvidenceVariable.characteristic.description | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Kriterium |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Operator |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Masseinheit |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Wert |

-------

**Examples**

Example (minimal):

[EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)

**Usages:**

* Examples for this Profile: [EvidenceVariable/mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.csv), [Excel](../StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-ein-auschluss-kriterium",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium",
  "version" : "2026.0.1",
  "name" : "MII_PR_Studie_EinAuschlussKriterium",
  "title" : "MII PR Studie EinAuschlussKriterium",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie EinAuschlussKriterium"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Study Inclusion/Exclusion Criterion"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-08-31T19:54:32+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EvidenceVariable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EvidenceVariable",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EvidenceVariable",
      "path" : "EvidenceVariable"
    },
    {
      "id" : "EvidenceVariable.status",
      "path" : "EvidenceVariable.status",
      "short" : "Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Entwurf | aktiv | zurückgezogen | unbekannt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "draft | active | retired | unknown"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The status of this evidence variable. Enables tracking the life-cycle of the content."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic",
      "path" : "EvidenceVariable.characteristic",
      "short" : "Characteristic",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Was die Mitglieder des Evidence-Elements definiert"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "What defines the members of the evidence element"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eine Eigenschaft, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer “und”-Semantik angewendet.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Eine Eigenschaft, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer \"und\"-Semantik angewendet."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "A characteristic that defines the members of the evidence element. Multiple characteristics are applied with \"and\" semantics."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension",
      "path" : "EvidenceVariable.characteristic.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:linkId",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "linkId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionReference",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionCanonical",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionCanonical",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionByTypeAndValue",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionByTypeAndValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionByCombination",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionByCombination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.description",
      "path" : "EvidenceVariable.characteristic.description",
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionReference",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionReference",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionCanonical",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionCanonical",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ActivityDefinition"]
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionDataRequirement",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionDataRequirement",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "DataRequirement"
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionTriggerDefinition",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionTriggerDefinition",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "TriggerDefinition"
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.usageContext",
      "path" : "EvidenceVariable.characteristic.usageContext",
      "max" : "0"
    },
    {
      "id" : "EvidenceVariable.characteristic.exclude",
      "path" : "EvidenceVariable.characteristic.exclude",
      "mustSupport" : true
    }]
  }
}

```

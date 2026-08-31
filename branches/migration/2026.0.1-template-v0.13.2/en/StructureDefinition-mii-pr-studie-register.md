# MII PR Studie Register - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Studie Register**

## Resource Profile: MII PR Studie Register 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:MII_PR_Studie_Register |

 
This profile describes a research registry within the Medical Informatics Initiative. 

## Registry (Library)

-------

**Description**

This profile describes a research registry in the Medical Informatics Initiative.

-------

**Notes**

| | |
| :--- | :--- |
| Library.id | Must-support, but optional |
| Library.meta | Must-support, but optional |
| Library.meta.profile | Mandatory for querying in the DIC repository, including the version number of the profile. See[CapabilityStatement](capability-statements.md). Optional in all other cases. |
| Library.name | A suitable human-readable name should be used |
| Library.identifier | In most cases, no NamingSystem currently exists for assigning registry IDs. A local NamingSystem of your own should therefore be used. |
| Library.relatedArtifact.document.url | Homepage of the registry or link to further documentation |

-------

**Mapping**

| | |
| :--- | :--- |
| Library.name | Forschungsvorhaben.Studienregister.Registername |
| Library.identifier | Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url | Forschungsvorhaben.Studienregister.url |

-------

**Examples**

Example (minimal):

[Library-mii-exa-studie-register](Library-mii-exa-studie-register.md)

**Usages:**

* Examples for this Profile: [DRKS - Deutsches Register Klinischer Studien](Library-mii-exa-studie-register.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-register.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-studie-register.csv), [Excel](../StructureDefinition-mii-pr-studie-register.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-register.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-register",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register",
  "version" : "2026.0.1",
  "name" : "MII_PR_Studie_Register",
  "title" : "MII PR Studie Register",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie Regiester"
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
        "valueString" : "MII PR Study Registry"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
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
  "description" : "Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative."
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
        "valueString" : "This profile describes a research registry within the Medical Informatics Initiative."
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
  "type" : "Library",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Library",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Library",
      "path" : "Library"
    },
    {
      "id" : "Library.extension",
      "path" : "Library.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Library.extension:quellRegister",
      "path" : "Library.extension",
      "sliceName" : "quellRegister",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register"]
      }]
    },
    {
      "id" : "Library.identifier",
      "path" : "Library.identifier",
      "short" : "Identifier",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Zusätzlicher Bezeichner für die Bibliothek."
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
            "valueString" : "Additional identifier for the library"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein formaler Bezeichner, der verwendet wird, um diese Bibliothek zu identifizieren, wenn sie in anderen Formaten dargestellt oder in einer Spezifikation, einem Modell, einem Design oder einer Instanz referenziert wird, z. B. CMS- oder NQF-Bezeichner für ein Maßnahme-Artefakt. Es ist zu beachten, dass mindestens ein Bezeichner für nicht-experimentelle, aktive Artefakte erforderlich ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ein formaler Bezeichner, der verwendet wird, um diese Bibliothek zu identifizieren, wenn sie in anderen Formaten dargestellt oder in einer Spezifikation, einem Modell, einem Design oder einer Instanz referenziert wird, z. B. CMS- oder NQF-Bezeichner für ein Maßnahme-Artefakt. Es ist zu beachten, dass mindestens ein Bezeichner für nicht-experimentelle, aktive Artefakte erforderlich ist."
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
            "valueString" : "A formal identifier that is used to identify this library when it is represented in other formats, or referenced in a specification, model, design or an instance. e.g. CMS or NQF identifiers for a measure artifact. Note that at least one identifier is required for non-experimental active artifacts."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Library.identifier.system",
      "path" : "Library.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Library.identifier.value",
      "path" : "Library.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Library.name",
      "path" : "Library.name",
      "short" : "Name",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Name für diese Bibliothek - computerfreundlich"
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
            "valueString" : "Name for this library - computer friendly"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Name in natürlicher Sprache, der die Bibliothek identifiziert. Dieser Name sollte als Bezeichner für das Modul in maschinellen Verarbeitungsanwendungen wie Codegenerierung verwendbar sein.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ein Name in natürlicher Sprache, der die Bibliothek identifiziert. Dieser Name sollte als Bezeichner für das Modul in maschinellen Verarbeitungsanwendungen wie Codegenerierung verwendbar sein."
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
            "valueString" : "A natural language name identifying the library. This name should be usable as an identifier for the module by machine processing applications such as code generation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Library.type",
      "path" : "Library.type",
      "short" : "Type",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Logikbibliothek| Modelldefinition | Asset-Sammlung | Moduldefinition"
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
            "valueString" : "logic-library | model-definition | asset-collection | module-definition"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "dentifiziert den Typ der Bibliothek, wie z. B. eine Logikbibliothek, Modelldefinition, Asset-Sammlung oder Moduldefinition.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Identifiziert den Typ der Bibliothek, wie z. B. eine Logikbibliothek, Modelldefinition, Asset-Sammlung oder Moduldefinition."
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
            "valueString" : "Identifies the type of library such as a Logic Library, Model Definition, Asset Collection, or Module Definition."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/library-type",
          "code" : "asset-collection"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Library.relatedArtifact",
      "path" : "Library.relatedArtifact",
      "short" : "RelatedArtifact",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Zusätzliche Dokumentation, Zitate, usw."
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
            "valueString" : "Additional documentation, citations, etc."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zugehörige Artefakte wie zusätzliche Dokumentation, Begründungen oder bibliografische Referenzen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Zugehörige Artefakte wie zusätzliche Dokumentation, Begründungen oder bibliografische Referenzen."
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
            "valueString" : "Related artifacts such as additional documentation, justification, or bibliographic references."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Library.relatedArtifact.document",
      "path" : "Library.relatedArtifact.document",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Library.relatedArtifact.document.url",
      "path" : "Library.relatedArtifact.document.url",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```

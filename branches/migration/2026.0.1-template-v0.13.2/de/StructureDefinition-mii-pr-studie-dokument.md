# MII PR Studie Dokument - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Studie Dokument**

## Ressourcenprofil: MII PR Studie Dokument 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_PR_Studie_Dokument |

 
Dieses Profil beschreibt ein Dokument/Publikation in der Medizininformatik-Initiative. 

## Dokument (DocumentReference)

-------

**Beschreibung**

Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative.

-------

**Hinweise**

| | |
| :--- | :--- |
| DocumentReference.id | Must-support, jedoch optional |
| DocumentReference.meta | Must-support, jedoch optional |
| DocumentReference.meta.profile | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe[CapabilityStatement](capability-statements.md). In allen anderen Fällen optional. |
| DocumentReference.content.attachment.url | Diese absolute URL sollte auf einen Binary-Endpunkt eines FHIR-Servers verweisen. Die Hinweise der FHIR-Kernspezifikation zum[Abruf von Binary-Ressourcen](https://www.hl7.org/fhir/r4/binary.html#rest)sind zu beachten. |
| DocumentReference.content.attachment.title | Der Titel sollte eine sinnvolle menschenlesbare Beschreibung enthalten, das Element sollte nicht für den Dateinamen verwendet werden. |
| DocumentReference.custodian | Sollte der Standort nicht als Organization-Ressource verfügbar sein, kann auch ggf. Reference.display oder Referenz.identifier verwendet werden. |
| DocumentReference.author | Sollte der Author nicht als Practitioner-Ressource verfügbar sein, kann auch ggf. Reference.display oder Referenz.identifier verwendet werden. |
| DocumentReference.context.related | Angabe des Studienkontexts |

-------

**Mapping**

| | |
| :--- | :--- |
| DocumentReference.content.attachment.url | Forschungsvorhaben.Publikation.url |
| DocumentReference.content.attachment.title | Forschungsvorhaben.Publikation.Titel |
| DocumentReference.author | Forschungsvorhaben.Publikation.Autor |

| | |
| :--- | :--- |
| DocumentReference.content.attachment.title | Forschungsvorhaben.Datennutzungsantrag.Dokument.Name |
| DocumentReference.author | Forschungsvorhaben.Datennutzungsantrag.Dokument.Autor |
| DocumentReference.content.attachment.contentType | Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateityp |
| DocumentReference.custodian | Forschungsvorhaben.Datennutzungsantrag.Dokument.Standort |
| DocumentReference.content.attachment.size | Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateigroesse |
| DocumentReference.content.attachment.url | Forschungsvorhaben.Datennutzungsantrag.Dokument.url |

-------

**Beispiele**

Beispiel (minimal):

[DocumentReference-mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.md)

**Usages:**

* Examples for this Profile: [DocumentReference/mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-dokument.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 11 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 11 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-studie-dokument.csv), [Excel](../StructureDefinition-mii-pr-studie-dokument.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-dokument.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-dokument",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument",
  "version" : "2026.0.1",
  "name" : "MII_PR_Studie_Dokument",
  "title" : "MII PR Studie Dokument",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie Dokument"
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
        "valueString" : "MII PR Study Document"
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
  "description" : "Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt ein Dokument/Publikation in der Medizininformatik-Initiative."
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
        "valueString" : "This profile describes a document/publication within the Medical Informatics Initiative."
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Status"
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
            "valueString" : "Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "aktuell | ersetzt | irrtümlich eingegeben",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "aktuell | ersetzt | irrtümlich eingegeben"
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
            "valueString" : "current | superseded | entered-in-error"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "short" : "Author",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Wer und/oder was das Dokument erstellt hat"
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
            "valueString" : "Who and/or what authored the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : " Identifiziert, wer für das Hinzufügen der Informationen zum Dokument verantwortlich ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Identifiziert, wer für das Hinzufügen der Informationen zum Dokument verantwortlich ist."
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
            "valueString" : "Identifies who is responsible for adding the information to the document."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "short" : "Custodian",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Organisation, die das Dokument verwaltet."
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
            "valueString" : "Organization which maintains the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Identifiziert die Organisation oder Gruppe, die für die laufende Pflege und den Zugriff auf das Dokument verantwortlich ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Identifiziert die Organisation oder Gruppe, die für die laufende Pflege und den Zugriff auf das Dokument verantwortlich ist."
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
            "valueString" : "Identifies the organization or group who is responsible for ongoing maintenance of and access to the document."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "short" : "Content",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Referenziertes Dokument"
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
            "valueString" : "Document referenced"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das referenzierte Dokument und Format. Es können mehrere Wiederholungen des Inhaltselements vorhanden sein, jeweils in einem anderen Format.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Das referenzierte Dokument und Format. Es können mehrere Wiederholungen des Inhaltselements vorhanden sein, jeweils in einem anderen Format."
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
            "valueString" : "The document and format referenced. There may be multiple content element repetitions, each with a different format."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.size",
      "path" : "DocumentReference.content.attachment.size",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "short" : "Context",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Klinischer Kontext des Dokuments."
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
            "valueString" : "Clinical context of document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der klinische Kontext, in dem das Dokument erstellt wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Der klinische Kontext, in dem das Dokument erstellt wurde."
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
            "valueString" : "The clinical context in which the document was prepared"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "mustSupport" : true
    }]
  }
}

```

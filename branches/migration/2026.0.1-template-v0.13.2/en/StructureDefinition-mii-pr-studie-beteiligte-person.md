# MII PR Studie Beteiligte Person - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Studie Beteiligte Person**

## Resource Profile: MII PR Studie Beteiligte Person 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:MII_PR_Studie_Beteiligte_Person |

 
This profile describes a participant within a study in the Medical Informatics Initiative. 

## Involved Person (PractitionerRole)

-------

**Description**

This profile describes an involved person within a study in the Medical Informatics Initiative.

-------

**Notes**

| | |
| :--- | :--- |
| PractitionerRole.id | Must-support, but optional |
| PractitionerRole.meta | Must-support, but optional |
| PractitionerRole.meta.profile | Mandatory for querying in the DIC repository, including the version number of the profile. See[CapabilityStatement](capability-statements.md). Optional in all other cases. |
| PractitionerRole.code | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| PractitionerRole.telecom | Care must be taken to ensure that only information already published by the study itself is exposed here |
| PractitionerRole.organization | To find all persons associated with a study, the use of Reference.reference is preferred over Reference.identifier. |

-------

**Mapping**

| | |
| :--- | :--- |
| PractitionerRole.code | Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.telecom | Forschungsvorhaben.Beteiligter.Kontakt |
| PractitionerRole.organization | Forschungsvorhaben.Beteiligter.Standort |

| | |
| :--- | :--- |
| PractitionerRole.code | Forschungsvorhaben.Studienleiter |
| PractitionerRole.telecom | Forschungsvorhaben.Studienleiter.Kontakt |
| PractitionerRole.organization | Forschungsvorhaben.Studienleiter.Standort |

-------

**Examples**

Example (minimal):

[PractitionerRole-mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.md)

**Usages:**

* Examples for this Profile: [PractitionerRole/mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-beteiligte-person.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-studie-beteiligte-person.csv), [Excel](../StructureDefinition-mii-pr-studie-beteiligte-person.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-beteiligte-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-beteiligte-person",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person",
  "version" : "2026.0.1",
  "name" : "MII_PR_Studie_Beteiligte_Person",
  "title" : "MII PR Studie Beteiligte Person",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie Beteiligte Person"
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
        "valueString" : "MII PR Study Participant"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
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
  "description" : "Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative."
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
        "valueString" : "This profile describes a participant within a study in the Medical Informatics Initiative."
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen."
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
            "valueString" : "Practitioner that is able to provide the defined services for the organization."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen."
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
            "valueString" : "Practitioner that is able to provide the defined services for the organization."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Organisation, in der die Rollen verfügbar sind.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Organisation, in der die Rollen verfügbar sind."
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
            "valueString" : "Organization where the roles are available."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Organisation, in der der Praktiker die zugeordneten Rollen ausübt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Die Organisation, in der der Praktiker die zugeordneten Rollen ausübt."
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
            "valueString" : "The organization where the Practitioner performs the roles associated."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Rollen, die dieser Praktiker ausüben kann.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Rollen, die dieser Praktiker ausüben kann."
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
            "valueString" : "Roles which this practitioner may perform."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Rollen, die dieser Praktiker für die Organisation ausüben darf.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Rollen, die dieser Praktiker für die Organisation ausüben darf."
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
            "valueString" : "Roles which this practitioner is authorized to perform for the organization."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "Kontaktdaten, die spezifisch für die Rolle/den Standort/die Dienstleistung sind.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Kontaktdaten, die spezifisch für die Rolle/den Standort/die Dienstleistung sind."
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
            "valueString" : "Contact details that are specific to the role/location/service."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kontaktdaten, die spezifisch für die Rolle, den Standort oder die Dienstleistung sind.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Kontaktdaten, die spezifisch für die Rolle, den Standort oder die Dienstleistung sind."
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
            "valueString" : "Contact details that are specific to the role/location/service."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    }]
  }
}

```

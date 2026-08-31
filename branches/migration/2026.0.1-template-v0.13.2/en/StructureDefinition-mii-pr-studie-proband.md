# MII PR Studie Proband - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Studie Proband**

## Resource Profile: MII PR Studie Proband 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:MII_PR_Studie_Proband |

 
This profile describes a study subject within the Medical Informatics Initiative. 

## Subject (ResearchSubject)

-------

This profile describes a subject in the Medical Informatics Initiative.

-------

**Notes**

| | |
| :--- | :--- |
| ResearchSubject.id | Must-support, but optional |
| ResearchSubject.meta | Must-support, but optional |
| ResearchSubject.meta.profile | MANDATORY for querying in the DIC repository, including the version number of the profile. See[CapabilityStatement](capability-statements.md). Optional in all other cases. |
| Patient.identifier:subjectIdentificationCode | Fixed NamingSystem for the uniform, cross-site querying of the identifier (for analyses) |
| ResearchSubject.period.start | Start date (inclusion of the patient in the study) |
| ResearchSubject.period.end | End date (completion of the study or exclusion of the patient) |
| ResearchSubject.study | Reference to the metadata of the study in which the patient is participating. |
| ResearchSubject.individual | Every subject MUST be assigned to a patient. |
| ResearchSubject.consent | Consent to the study or a regulatory basis MUST be present. Further requirements for the modeling of the consent may arise from other modules. |

-------

**Mapping**

| | |
| :--- | :--- |
| ResearchSubject.identifier:subjectIdentificationCode | Person.Studienteilnehmer.SubjektIdentifizierungscode |
| ResearchSubject.status | Person.Studienteilnehmer.StatusDerTeilnahme |
| ResearchSubject.period.start | Person.Studienteilnehmer.BeginnTeilnahme |
| ResearchSubject.period.end | Person.Studienteilnehmer.EndeTeilnahme |
| ResearchSubject.consent | Person.Studienteilnehmer.Rechtsgrundlage |

-------

**Examples**

See example (minimal):

[ResearchSubject-mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.md)

**Usages:**

* Refer to this Profile: [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md)
* Examples for this Profile: [ResearchSubject/mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-proband.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-studie-proband.csv), [Excel](../StructureDefinition-mii-pr-studie-proband.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-proband.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-proband",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband",
  "version" : "2026.0.1",
  "name" : "MII_PR_Studie_Proband",
  "title" : "MII PR Studie Proband",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie Proband"
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
        "valueString" : "MII PR Study Subject"
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
  "description" : "Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative."
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
        "valueString" : "This profile describes a study subject within the Medical Informatics Initiative."
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
    "identity" : "BRIDG5.1",
    "uri" : "https://bridgmodel.nci.nih.gov",
    "name" : "BRIDG 5.1 Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchSubject",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ResearchSubject",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ResearchSubject",
      "path" : "ResearchSubject"
    },
    {
      "id" : "ResearchSubject.id",
      "path" : "ResearchSubject.id",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.meta",
      "path" : "ResearchSubject.meta",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.meta.profile",
      "path" : "ResearchSubject.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.identifier",
      "path" : "ResearchSubject.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Identifier des Probanden",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Identifier des Probanden."
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
            "valueString" : "Business Identifier for study subject."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kennungen, die dem Probanden zugewiesen wurden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Kennungen, die dem Probanden vom Sponsor oder anderen Systemen zugewiesen wurden."
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
            "valueString" : "Identifiers assigned to this study subject by the sponsor or other systems."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.identifier:subjectIdentificationCode",
      "path" : "ResearchSubject.identifier",
      "sliceName" : "subjectIdentificationCode",
      "min" : 1,
      "max" : "1",
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ANON"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.identifier:subjectIdentificationCode.type",
      "path" : "ResearchSubject.identifier.type",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.identifier:subjectIdentificationCode.system",
      "path" : "ResearchSubject.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.identifier:subjectIdentificationCode.value",
      "path" : "ResearchSubject.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.status",
      "path" : "ResearchSubject.status",
      "short" : "Kandidat | geeignet | Nachverfolgung | ungeeignet | nicht registriert | außer Studie | in Studie | Studienintervention in Studie | Studienbeobachtung in Studie | ausstehend in Studie | potenzieller Kandidat | Screening | zurückgezogen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Kandidat | geeignet | Nachverfolgung | ungeeignet | nicht registriert | außer Studie | in Studie | Studienintervention in Studie | Studienbeobachtung in Studie | ausstehend in Studie | potenzieller Kandidat | Screening | zurückgezogen"
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
            "valueString" : "candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawn"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Teilnahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Status der Teilnahme."
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
            "valueString" : "The current state of the study participation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.period",
      "path" : "ResearchSubject.period",
      "short" : "Anfang und Ende der Teilnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Anfang und Ende der Teilnahme"
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
            "valueString" : "Start and end of participation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitrum, in denen die Teilnahme an der Studie begann und endete.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum, in dem die Teilnahme an der Studie begann und endete."
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
            "valueString" : "The dates the subject began and ended their participation in the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.period.start",
      "path" : "ResearchSubject.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.period.end",
      "path" : "ResearchSubject.period.end",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.study",
      "path" : "ResearchSubject.study",
      "short" : "Studie, der der Proband angehört",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Studie, der der Proband angehört"
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
            "valueString" : "study subject is part of"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz auf die Studie, an der der Proband teilnimmt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Referenz auf die Studie, an der der Proband teilnimmt."
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
            "valueString" : "Reference to the study the subject is participating in."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.individual",
      "path" : "ResearchSubject.individual",
      "short" : "Wer an der Studie teilnimmt.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Wer an der Studie teilnimmt."
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
            "valueString" : "Who is part of study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Datensatz der Person oder des Tieres, das an der Studie beteiligt ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Der Datensatz der Person oder des Tieres, das an der Studie beteiligt ist."
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
            "valueString" : "The record of the person or animal who is involved in the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.consent",
      "path" : "ResearchSubject.consent",
      "short" : "Einverständnis zur Studienteilnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Einverständnis zur Studienteilnahme"
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
            "valueString" : "Agreement to participate in study"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Datensatz der informierten Zustimmung des Patienten zur Teilnahme an der Studie.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ein Datensatz der informierten Zustimmung des Patienten zur Teilnahme an der Studie."
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
            "valueString" : "A record of the patient's informed agreement to participate in the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```

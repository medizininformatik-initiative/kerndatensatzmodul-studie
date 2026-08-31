# MII PR Studie Studie - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Studie Studie**

## Resource Profile: MII PR Studie Studie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-31 | *Computable Name*:MII_PR_Studie_Studie |

 
This profile describes a study within the Medical Informatics Initiative. 

## Study (ResearchStudy)

-------

**Description**

This profile describes a study in the Medical Informatics Initiative.

-------

**Notes**

| | |
| :--- | :--- |
| ResearchStudy.id | Must-support, but optional |
| ResearchStudy.meta | Must-support, but optional |
| ResearchStudy.meta.profile | Mandatory for querying in the DIC repository, including the version number of the profile. See[CapabilityStatement](capability-statements.md). Optional in all other cases. |
| ResearchStudy.identifier | In most cases, there will be no NamingSystem for assigning the business IDs. A local NamingSystem of your own should therefore be used. |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| ResearchStudy.extension:Randomisierungsmethode | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| ResearchStudy.extension:associatedParty | This extension can be used if more contact persons need to be specified for the study than the cardinality of ResearchStudy.principalInvestigator or ResearchStudy.sponsor allows. |
| ResearchStudy.category | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |

-------

**NamingSystems**

Preferred URLs for the associated NamingSystems have already been defined for the following study registries:

| | |
| :--- | :--- |
| clinicaltrials.gov | https://clinicaltrials.gov |
| German Clinical Trials Register (DRKS) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks |
| Universal Trial Number (UTN) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/utn |
| EudraCT | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract |

-------

**Mapping**

| | |
| :--- | :--- |
| ResearchStudy.title | Forschungsvorhaben.Titel |
| ResearchStudy.focus | Forschungsvorhaben.Studienfokus |
| ResearchStudy.keyword | Forschungsvorhaben.Schlagwort |
| ResearchStudy.extension:OeffentlicherTitel | Forschungsvorhaben.Titel.OeffentlicherTitel |
| ResearchStudy.extension:WissenschaftlicherTitel | Forschungsvorhaben.Titel.WissenschaftlicherTitel |
| ResearchStudy.extension:Akronym | Forschungsvorhaben.Titel.Akronym |
| ResearchStudy.extension:Rekrutierungsstart | Forschungsvorhaben.Studiendesign.Rekrutierungsstart |
| ResearchStudy.arm.name | Forschungsvorhaben.Studiendesign.Studienarm.Name |
| ResearchStudy.category | Forschungsvorhaben.Studiendesign.Studientyp |
| ResearchStudy.extension:Rekrutierungsziel | Forschungsvorhaben.Studiendesign.Rekrutierungsziel |
| ResearchStudy.extension:Rekrutierungsstand | Forschungsvorhaben.Studiendesign.Rekrutierungsstand |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit | Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandGenauigkeit |
| ResearchStudy.extension:RekrutierungsstandDatum | Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandDatum |
| ResearchStudy.category | Forschungsvorhaben.Studiendesign.Randomisierungsmethode |

| | |
| :--- | :--- |
| ResearchStudy.extension:finanzierung | Forschungsvorhaben.Finanzierung |

| | |
| :--- | :--- |
| ResearchStudy.identifier.value | Forschungsvorhaben.BusinessID.id |
| ResearchStudy.identifier.system | Forschungsvorhaben.BusinessID.System |

-------

**Examples**

See example (minimal):

[ResearchStudy-mii-exa-studie-studie](ResearchStudy-mii-exa-studie-studie.md)

**Usages:**

* Refer to this Profile: [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md)
* Examples for this Profile: [ResearchStudy/mii-exa-studie-cohort](ResearchStudy-mii-exa-studie-cohort.md) and [ResearchStudy/mii-exa-studie-studie](ResearchStudy-mii-exa-studie-studie.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-studie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-studie-studie.csv), [Excel](../StructureDefinition-mii-pr-studie-studie.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-studie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-studie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Studie_Studie",
  "title" : "MII PR Studie Studie",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie Studie"
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
        "valueString" : "MII PR Study Study"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-08-31T22:12:11+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative."
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
        "valueString" : "This profile describes a study within the Medical Informatics Initiative."
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
    "identity" : "clinicaltrials-gov",
    "uri" : "http://clinicaltrials.gov",
    "name" : "ClinicalTrials.gov Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ResearchStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ResearchStudy",
      "path" : "ResearchStudy"
    },
    {
      "id" : "ResearchStudy.extension",
      "path" : "ResearchStudy.extension",
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
      "id" : "ResearchStudy.extension:Label",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Label",
      "short" : "Label",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Backport Label"
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
            "valueString" : "MII EX Studie Backport Label"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:AssociatedParty",
      "path" : "ResearchStudy.extension",
      "sliceName" : "AssociatedParty",
      "short" : "AssociatedParty",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Backport AssociatedParty"
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
            "valueString" : "MII EX Studie Backport AssociatedParty"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.associatedParty"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:Ethikvotum",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Ethikvotum",
      "short" : "Ethikvotum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Ethikvotum"
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
            "valueString" : "MII EX Studie Ethikvotum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:Studienregister",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Studienregister",
      "short" : "Studienregister",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Studienregister"
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
            "valueString" : "MII EX Studie Studienregister"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:Eligibility",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Eligibility",
      "short" : "Eligibility",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Eligibility"
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
            "valueString" : "MII EX Studie Eligibility"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-eligibility"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:Akronym",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Akronym",
      "short" : "Akronym",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Akronym"
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
            "valueString" : "MII EX Studie Akronym"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:Rekrutierung",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Rekrutierung",
      "short" : "Rekrutierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Rekrutierung"
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
            "valueString" : "MII EX Studie Rekrutierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.extension:Finanzierung",
      "path" : "ResearchStudy.extension",
      "sliceName" : "Finanzierung",
      "short" : "Finanzierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "MII EX Studie Finanzierung"
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
            "valueString" : "MII EX Studie Finanzierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
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
            "valueString" : "Optional Extension Element - found in all resources."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.identifier",
      "path" : "ResearchStudy.identifier",
      "short" : "Name für diese Studie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Name für diese Studie."
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
            "valueString" : "Business Identifier for study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kennungen, die dieser Forschungsstudie vom Sponsor oder anderen Systemen zugewiesen wurden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Kennungen, die dieser Forschungsstudie vom Sponsor oder anderen Systemen zugewiesen wurden."
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
            "valueString" : "Identifiers assigned to this research study by the sponsor or other systems."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.identifier.system",
      "path" : "ResearchStudy.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.identifier.value",
      "path" : "ResearchStudy.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.title",
      "path" : "ResearchStudy.title",
      "short" : "Name für diese Studie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Name für diese Studie."
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
            "valueString" : "Name for this study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein kurzer, beschreibender und benutzerfreundlicher Bezeichner für die Studie.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ein kurzer, beschreibender und benutzerfreundlicher Bezeichner für die Studie."
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
            "valueString" : "A short, descriptive user-friendly label for the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.partOf",
      "path" : "ResearchStudy.partOf",
      "short" : "Teil einer größeren Studie.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Teil einer größeren Studie."
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
            "valueString" : "Part of larger study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eine größere Forschungsstudie, von der diese spezielle Studie ein Bestandteil oder ein Schritt ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Eine größere Forschungsstudie, von der diese spezielle Studie ein Bestandteil oder ein Schritt ist."
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
            "valueString" : "A larger research study of which this particular study is a component or step."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.status",
      "path" : "ResearchStudy.status",
      "short" : "aktiv | administrativ abgeschlossen | genehmigt | für Rekrutierung geschlossen | für Rekrutierung und Intervention geschlossen | abgeschlossen | abgelehnt | in Überprüfung | vorübergehend für Rekrutierung geschlossen | vorübergehend für Rekrutierung und Intervention geschlossen | zurückgezogen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "aktiv | administrativ abgeschlossen | genehmigt | für Rekrutierung geschlossen | für Rekrutierung und Intervention geschlossen | abgeschlossen | abgelehnt | in Überprüfung | vorübergehend für Rekrutierung geschlossen | vorübergehend für Rekrutierung und Intervention geschlossen | zurückgezogen"
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
            "valueString" : "active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawn"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der aktuelle Status der Studie.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Der aktuelle Status der Studie."
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
            "valueString" : "The current state of the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.category",
      "path" : "ResearchStudy.category",
      "short" : "Klassifikationen für die Studie.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Klassifikationen für die Studie."
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
            "valueString" : "Classifications for the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Codes zur Kategorisierung des Studientyps, wie z. B. experimentell vs. beobachtend, Art der Verblindung, Art der Randomisierung, Sicherheit vs. Wirksamkeit usw.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Codes zur Kategorisierung des Studientyps, wie z. B. experimentell vs. beobachtend, Art der Verblindung, Art der Randomisierung, Sicherheit vs. Wirksamkeit usw."
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
            "valueString" : "Codes categorizing the type of study such as investigational vs. observational, type of blinding, type of randomization, safety vs. efficacy, etc."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.focus",
      "path" : "ResearchStudy.focus",
      "short" : "Untersuchte Medikamente, Geräte usw.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Untersuchte Medikamente, Geräte usw."
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
            "valueString" : "Drugs, devices, etc. under study"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Medikamente, Nahrungsmittel, Therapien, Geräte oder andere Anliegen oder Interventionen, über die die Studie mehr Informationen gewinnen möchte.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Die Medikamente, Nahrungsmittel, Therapien, Geräte oder andere Anliegen oder Interventionen, über die die Studie mehr Informationen gewinnen möchte."
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
            "valueString" : "The medication, food, therapy, device or other concerns or interventions that the study is seeking to gain more information about."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.focus.text",
      "path" : "ResearchStudy.focus.text",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.keyword",
      "path" : "ResearchStudy.keyword",
      "short" : "Wird verwendet, um nach der Studie zu suchen.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Wird verwendet, um nach der Studie zu suchen."
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
            "valueString" : "Used to search for the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Schlüsselbegriffe, die bei der Suche nach oder Filterung der Studie helfen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Schlüsselbegriffe, die bei der Suche nach oder Filterung der Studie helfen."
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
            "valueString" : "Key terms to aid in searching for or filtering the study."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.keyword.text",
      "path" : "ResearchStudy.keyword.text",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.arm",
      "path" : "ResearchStudy.arm",
      "short" : "Definierter Weg durch die Studie für ein Subjekt.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Definierter Weg durch die Studie für ein Subjekt."
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
            "valueString" : "Defined path through the study for a subject."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beschreibt eine erwartete Abfolge von Ereignissen für einen der Teilnehmer einer Studie. Z. B. Exposition gegenüber Medikament A, Auswaschphase, Exposition gegenüber Medikament B, Auswaschphase, Nachverfolgung.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Beschreibt eine erwartete Abfolge von Ereignissen für einen der Teilnehmer einer Studie. Z. B. Exposition gegenüber Medikament A, Auswaschphase, Exposition gegenüber Medikament B, Auswaschphase, Nachverfolgung."
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
            "valueString" : "Describes an expected sequence of events for one of the participants of a study. E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.arm.name",
      "path" : "ResearchStudy.arm.name",
      "mustSupport" : true
    }]
  }
}

```

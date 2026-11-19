# MII PR Studie Rolle beteiligte Person - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Studie Rolle beteiligte Person**

## Ressourcenprofil: MII PR Studie Rolle beteiligte Person 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person | *Version*:2027.0.0-ballot |
| Active Stand: 2026-01-09 | *Maschinenlesbarer Name*:MII_PR_Studie_Rolle_Beteiligte_Person |

 
Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person, z. B. die Studienleitung, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative. 

## Rolle beteiligte Person (PractitionerRole)

-------

**Beschreibung**

Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person, z. B. die Studienleitung, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative.

**Zusammenhang mit der Studie**

* Die Studie verweist auf die beteiligte Person: Die Studienleitung wird über `ResearchStudy.principalInvestigator` referenziert, weitere beteiligte Personen über die Extension [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.md) (`extension:party`).
* Die **Rolle in der Studie** wird in `AssociatedParty.extension:role` angegeben, nicht in `PractitionerRole.code`. `PractitionerRole.code` beschreibt die berufliche Rolle in der Organisation, die über die Studie hinaus gilt.
* **Name und akademischer Grad** der Person stehen im über `PractitionerRole.practitioner` referenzierten `Practitioner` (`name.given`, `name.family`, `name.prefix`).

-------

**Hinweise**

| | |
| :--- | :--- |
| PractitionerRole.id | Must-support, jedoch optional |
| PractitionerRole.meta | Must-support, jedoch optional |
| PractitionerRole.meta.profile | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe[CapabilityStatement](capability-statements.md). In allen anderen Fällen optional. |
| PractitionerRole.code | Berufliche Rolle in der Organisation, nicht die Rolle in der Studie (siehe oben). Hausinterne Kodierung kann hier verwendet werden. |
| PractitionerRole.telecom | Es ist darauf zu achten, dass hier nur Informationen exponiert werden, die bereits durch die Studie an sich veröffentlicht wurden |
| PractitionerRole.organization | Um alle zu einer Studie zugehörigen Personen zu finden ist die Verwendung von Referenz.reference anstelle von Referent.identifier zu bevorzugen. |

-------

**Mapping**

| | |
| :--- | :--- |
| ResearchStudy.extension:AssociatedParty.extension:role | Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.practitioner → Practitioner.name.given | Forschungsvorhaben.Beteiligter.Kontakt.Vorname |
| PractitionerRole.practitioner → Practitioner.name.family | Forschungsvorhaben.Beteiligter.Kontakt.Nachname |
| PractitionerRole.practitioner → Practitioner.name.prefix | Forschungsvorhaben.Beteiligter.Kontakt.Grad |
| PractitionerRole.telecom | Forschungsvorhaben.Beteiligter.Kontakt.Email, Forschungsvorhaben.Beteiligter.Kontakt.Tel |
| PractitionerRole.organization → Organization.name | Forschungsvorhaben.Beteiligter.Kontakt.Zugehoerigkeit |
| PractitionerRole.organization → Organization.address | Forschungsvorhaben.Beteiligter.Standort.Adresse |

| | |
| :--- | :--- |
| ResearchStudy.principalInvestigator | Forschungsvorhaben.Studienleiter |
| PractitionerRole.practitioner → Practitioner.name.given | Forschungsvorhaben.Studienleiter.Kontakt.Vorname |
| PractitionerRole.practitioner → Practitioner.name.family | Forschungsvorhaben.Studienleiter.Kontakt.Nachname |
| PractitionerRole.practitioner → Practitioner.name.prefix | Forschungsvorhaben.Studienleiter.Kontakt.Grad |
| PractitionerRole.telecom | Forschungsvorhaben.Studienleiter.Kontakt.Email, Forschungsvorhaben.Studienleiter.Kontakt.Tel |
| PractitionerRole.organization → Organization.name | Forschungsvorhaben.Studienleiter.Kontakt.Zugehoerigkeit |
| PractitionerRole.organization → Organization.address | Forschungsvorhaben.Studienleiter.Standort.Adresse |

-------

**Beispiele**

Beispiel (minimal):

[PractitionerRole-mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.md)

**Usages:**

* Examples for this Profile: [PractitionerRole/mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-beteiligte-person.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

** Summary **

Must-Support: 3 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

** Summary **

Must-Support: 3 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-studie-beteiligte-person.csv), [Excel](../StructureDefinition-mii-pr-studie-beteiligte-person.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-beteiligte-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-beteiligte-person",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.studie"
      },
      {
        "url" : "version",
        "valueString" : "2027.0.0-ballot"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-09"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C15206"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C15429"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "name" : "Matthias Löbe",
      "telecom" : [{
        "system" : "email",
        "value" : "matthias.loebe@imise.uni-leipzig.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Thomas Debertshäuser",
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Margaux Gatrio",
      "telecom" : [{
        "system" : "email",
        "value" : "margaux.gatrio@bih-charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Studie_Rolle_Beteiligte_Person",
  "title" : "MII PR Studie Rolle beteiligte Person",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie Rolle beteiligte Person"
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
        "valueString" : "MII PR Study Involved Person Role"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-09",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person, z. B. die Studienleitung, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person, z. B. die Studienleitung, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative."
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
        "valueString" : "This profile describes the role of a person involved in a study, e.g. the study lead, including the associated organization and contact details in the Medical Informatics Initiative."
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
      "comment" : "Name, akademischer Grad und weitere personenbezogene Angaben der beteiligten Person werden im referenzierten Practitioner abgebildet: Vor- und Nachname in Practitioner.name.given und .family, der akademische Grad in Practitioner.name.prefix. Ein eigenes MII-Profil für Practitioner ist nicht vorgesehen.",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Name, akademischer Grad und weitere personenbezogene Angaben der beteiligten Person werden im referenzierten Practitioner abgebildet: Vor- und Nachname in Practitioner.name.given und .family, der akademische Grad in Practitioner.name.prefix. Ein eigenes MII-Profil für Practitioner ist nicht vorgesehen."
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
            "valueString" : "Name, academic degree and further personal details of the involved person are represented in the referenced Practitioner: given and family name in Practitioner.name.given and .family, the academic degree in Practitioner.name.prefix. A dedicated MII profile for Practitioner is not provided."
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
      "short" : "Berufliche Rolle in der Organisation, nicht die Rolle in der Studie.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Berufliche Rolle in der Organisation, nicht die Rolle in der Studie."
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
            "valueString" : "Professional role within the organization, not the role in the study."
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
      "comment" : "Die Rolle der Person in einer bestimmten Studie wird nicht hier angegeben, sondern in ResearchStudy.extension:AssociatedParty.extension:role. Für die Studienleitung wird ResearchStudy.principalInvestigator verwendet.",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Die Rolle der Person in einer bestimmten Studie wird nicht hier angegeben, sondern in ResearchStudy.extension:AssociatedParty.extension:role. Für die Studienleitung wird ResearchStudy.principalInvestigator verwendet."
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
            "valueString" : "The role of the person in a specific study is not given here but in ResearchStudy.extension:AssociatedParty.extension:role. For the study lead, ResearchStudy.principalInvestigator is used."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
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

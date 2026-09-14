# EvidenceVariable-characteristic-description - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **EvidenceVariable-characteristic-description**

## SearchParameter: EvidenceVariable-characteristic-description 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/EvidenceVariable-characteristic-description | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:SP_MII_Studie_CharacteristicDescription |

 
Suchparameter für EvidenceVariable.characteristic.description 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "EvidenceVariable-characteristic-description",
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
        "valueString" : "2027.0.0-ballot.rc1"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-pr-meta-searchparameter"]
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
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/EvidenceVariable-characteristic-description",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "SP_MII_Studie_CharacteristicDescription",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für EvidenceVariable.characteristic.description",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "characteristicDescription",
  "base" : ["EvidenceVariable"],
  "type" : "string",
  "expression" : "EvidenceVariable.characteristic.description"
}

```

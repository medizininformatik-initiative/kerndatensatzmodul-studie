# mii-exa-studie-ein-auschluss-kriterium - v2026.0.1

## EvidenceVariable: mii-exa-studie-ein-auschluss-kriterium 

Profile: [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md)

**status**: Active

> **characteristic****MII EX Studie Backport definitionReference**: [EvidenceVariable: status = active](EvidenceVariable-mii-exa-studie-evidence-variable-age-restriction.md)**description**: Altersbeschränkung**definition**: Altersbeschränkung

> **characteristic****MII EX Studie Backport definitionCanonical**: [https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender)**description**: Geschlecht**definition**: Alle**exclude**: false

> **characteristic****MII EX Studie Backport linkId**: aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2**description**: Kognitive Fatigue (WeiMUS kognitive Skala >= 17)**definition**: Unknown**exclude**: false

> **characteristic****MII EX Studie Backport linkId**: 8e8f63ff-65f1-40cd-bf79-da83d7fb4e09**description**: Positiver SARS-CoV-2(COVID-19)-Befund; mind. 3 Monate alt**definition**: Unknown**exclude**: false

> **characteristic**
> **MII EX Studie Backport DefinitionByCombination**
* code: any-of
* characteristic: aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2
* characteristic: 8e8f63ff-65f1-40cd-bf79-da83d7fb4e09

**description**: Weitere Einschlusskriterien**definition**: Unknown**exclude**: false

> **characteristic****description**: diagnostizierte Depressionen, Angststörungen, andere psychiatrische Erkrankungen**definition**: Unknown**exclude**: true

> **characteristic****description**: Einnahme von Antidepressiva, Opioiden, Antikonvulsiva**definition**: Unknown**exclude**: true

> **characteristic****description**: weitere neurologische Erkrankungen**definition**: Unknown**exclude**: true

> **characteristic**
> **MII EX Studie Backport DefinitionByTypeAndValue**
* type: Current chronological age
* value: >=18 year (Details: UCUM codea = 'a')

**description**: Alter mindestens 18 Jahre**definition**: Mindestalter**exclude**: false



## Resource Content

```json
{
  "resourceType" : "EvidenceVariable",
  "id" : "mii-exa-studie-ein-auschluss-kriterium",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium"]
  },
  "status" : "active",
  "characteristic" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference",
      "valueReference" : {
        "reference" : "EvidenceVariable/mii-exa-studie-evidence-variable-age-restriction"
      }
    }],
    "description" : "Altersbeschränkung",
    "definitionCodeableConcept" : {
      "text" : "Altersbeschränkung"
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender"
    }],
    "description" : "Geschlecht",
    "definitionCodeableConcept" : {
      "text" : "Alle"
    },
    "exclude" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId",
      "valueId" : "aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2"
    }],
    "description" : "Kognitive Fatigue (WeiMUS kognitive Skala >= 17)",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    },
    "exclude" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId",
      "valueId" : "8e8f63ff-65f1-40cd-bf79-da83d7fb4e09"
    }],
    "description" : "Positiver SARS-CoV-2(COVID-19)-Befund; mind. 3 Monate alt",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    },
    "exclude" : false
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueCode" : "any-of"
      },
      {
        "url" : "characteristic",
        "valueId" : "aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2"
      },
      {
        "url" : "characteristic",
        "valueId" : "8e8f63ff-65f1-40cd-bf79-da83d7fb4e09"
      }],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"
    }],
    "description" : "Weitere Einschlusskriterien",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    },
    "exclude" : false
  },
  {
    "description" : "diagnostizierte Depressionen, Angststörungen, andere psychiatrische Erkrankungen",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    },
    "exclude" : true
  },
  {
    "description" : "Einnahme von Antidepressiva, Opioiden, Antikonvulsiva",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    },
    "exclude" : true
  },
  {
    "description" : "weitere neurologische Erkrankungen",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    },
    "exclude" : true
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "424144002",
            "display" : "Current chronological age"
          }]
        }
      },
      {
        "url" : "value",
        "valueQuantity" : {
          "value" : 18,
          "comparator" : ">=",
          "unit" : "year",
          "system" : "http://unitsofmeasure.org",
          "code" : "a"
        }
      }],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"
    }],
    "description" : "Alter mindestens 18 Jahre",
    "definitionCodeableConcept" : {
      "text" : "Mindestalter"
    },
    "exclude" : false
  }]
}

```

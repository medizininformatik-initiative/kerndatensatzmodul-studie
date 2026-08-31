# mii-exa-studie-beteiligte-person - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-studie-beteiligte-person**

## Beispiel PractitionerRole: mii-exa-studie-beteiligte-person

-------

**German**

-------

Profile: [MII PR Studie Beteiligte Person](StructureDefinition-mii-pr-studie-beteiligte-person.md)

**practitioner**: [Practitioner Max Mustermann ](Practitioner-mii-exa-studie-practitioner.md)

**organization**: [Organization Example Organization for Practitioner](Organization-mii-exa-studie-practitioner-organization.md)

**code**: Doctor

**telecom**: ph: 0123456789



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "mii-exa-studie-beteiligte-person",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person"]
  },
  "practitioner" : {
    "reference" : "Practitioner/mii-exa-studie-practitioner"
  },
  "organization" : {
    "reference" : "Organization/mii-exa-studie-practitioner-organization"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/practitioner-role",
      "code" : "doctor"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0123456789"
  }]
}

```

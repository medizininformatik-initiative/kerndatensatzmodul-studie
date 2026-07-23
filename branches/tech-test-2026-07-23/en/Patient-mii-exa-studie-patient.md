# mii-exa-studie-patient - v2026.0.1

## Example Patient: mii-exa-studie-patient

Profile: [http://fhir.de/ConsentManagement/StructureDefinition/Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Jane Doe Female, DoB: 1980-11-12 ( Krankenversichertennummer (use: official, ))

-------

| | |
| :--- | :--- |
| Deceased: | false |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-studie-patient",
  "meta" : {
    "profile" : ["http://fhir.de/ConsentManagement/StructureDefinition/Patient"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "D92345678"
  }],
  "name" : [{
    "family" : "Doe",
    "given" : ["Jane"]
  }],
  "gender" : "female",
  "birthDate" : "1980-11-12",
  "deceasedBoolean" : false
}

```

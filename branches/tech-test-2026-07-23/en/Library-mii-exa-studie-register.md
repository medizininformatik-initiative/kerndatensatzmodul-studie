# mii-exa-studie-register - v2026.0.1

## Library: mii-exa-studie-register 

* Metadata: Version
  * ?: 2026.0.1
* Metadata: Identifier
  * ?: DRKS
* Metadata: Steward (Publisher)
  * ?: Medizininformatik Initiative
* Metadata: Steward Contact
  * ?: Medizininformatik Initiative
* Metadata: Type
  * ?: asset-collection from[http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.2.0/CodeSystem-library-type.html)
* Metadata: Documentation
  * ?: **Content URL**:[https://drks.de/](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://drks.de/)**Document**: null @ https://drks.de/
* Metadata:  Parameters
* Metadata: Parameter
  * ?: None
* Metadata: Generated using version 0.5.4 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "mii-exa-studie-register",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/Library/mii-exa-studie-register",
  "identifier" : [{
    "system" : "https://example.com/fhir/sid/drks",
    "value" : "DRKS"
  }],
  "version" : "2026.0.1",
  "name" : "DRKS - Deutsches Register Klinischer Studien",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "asset-collection"
    }]
  },
  "date" : "2026-07-23T12:42:11+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "documentation",
    "url" : "https://drks.de/",
    "document" : {
      "url" : "https://drks.de/"
    }
  }]
}

```

# MII EX Studie Rekrutierung - v2026.0.1

## Extension: MII EX Studie Rekrutierung 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.md)
* Examples for this Extension: [Bundle/mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.md), [ResearchStudy/mii-exa-studie-cohort](ResearchStudy-mii-exa-studie-cohort.md) and [ResearchStudy/mii-exa-studie-studie](ResearchStudy-mii-exa-studie-studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-ex-studie-rekrutierung.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-studie-rekrutierung.csv), [Excel](../StructureDefinition-mii-ex-studie-rekrutierung.xlsx), [Schematron](../StructureDefinition-mii-ex-studie-rekrutierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-studie-rekrutierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung",
  "version" : "2026.0.1",
  "name" : "MII_EX_Studie_Rekrutierung",
  "title" : "MII EX Studie Rekrutierung",
  "status" : "active",
  "date" : "2026-07-23T12:42:11+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-datum",
      "path" : "Extension.extension",
      "sliceName" : "rekrutierungsstand-datum",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-datum.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-datum.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rekrutierungsstand-datum"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-datum.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-genauigkeit",
      "path" : "Extension.extension",
      "sliceName" : "rekrutierungsstand-genauigkeit",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-genauigkeit.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-genauigkeit.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rekrutierungsstand-genauigkeit"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand-genauigkeit.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:rekrutierungsstand",
      "path" : "Extension.extension",
      "sliceName" : "rekrutierungsstand",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rekrutierungsstand.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rekrutierungsstand"
    },
    {
      "id" : "Extension.extension:rekrutierungsstand.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:rekrutierungsziel",
      "path" : "Extension.extension",
      "sliceName" : "rekrutierungsziel",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rekrutierungsziel.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rekrutierungsziel.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rekrutierungsziel"
    },
    {
      "id" : "Extension.extension:rekrutierungsziel.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:rekrutierungsstart",
      "path" : "Extension.extension",
      "sliceName" : "rekrutierungsstart",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rekrutierungsstart.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rekrutierungsstart.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rekrutierungsstart"
    },
    {
      "id" : "Extension.extension:rekrutierungsstart.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

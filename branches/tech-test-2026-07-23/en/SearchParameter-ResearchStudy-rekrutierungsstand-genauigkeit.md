# ResearchStudy-rekrutierungsstand-genauigkeit - v2026.0.1

## SearchParameter: ResearchStudy-rekrutierungsstand-genauigkeit 

 
Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-rekrutierungsstand-genauigkeit",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand-genauigkeit",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_RekrutierungsstandGenauigkeit",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T12:42:11+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit",
  "code" : "rekrutierungsstand-genauigkeit",
  "base" : ["ResearchStudy"],
  "type" : "string",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstand-genauigkeit').value"
}

```

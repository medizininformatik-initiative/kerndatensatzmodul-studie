# LIFE-Adult-Study - v2026.0.1

## Example ResearchStudy: LIFE-Adult-Study

Profile: [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.md)

> **MII EX Studie Backport Label**
* value: MII Modul Studie

> **MII EX Studie Backport AssociatedParty**
* role: Sponsor
* party: [Organization Example Organization for Author](Organization-mii-exa-studie-author.md)

> **MII EX Studie Ethikvotum**
* status: genehmigt
* kommission: Ethik-Kommission der Medizinischen Fakultät der Universität Leipzig
* ethiknummer: 159-12-21052012

**MII EX Studie Studienregister**: [DRKS - Deutsches Register Klinischer Studien](Library-mii-exa-studie-register.md)

**MII EX Studie Eligibility**: [EvidenceVariable: status = active](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)

**MII EX Studie Akronym**: LIFE ADULT

> **MII EX Studie Rekrutierung**
* rekrutierungsstart: 2009-01-01
* rekrutierungsziel: 10000
* rekrutierungsstand: 10000
* rekrutierungsstand-genauigkeit: good
* rekrutierungsstand-datum: 2022-05-28

**MII EX Studie Finanzierung**: Deutsches Bundesministerium für Bildung und Forschung (BMBF)

**identifier**: `https://example.com/fhir/sid/lha`/7Q6PJD8NV3-2

**title**: LIFE-Adult-Study

**partOf**: [ResearchStudy Example Reference Study](ResearchStudy-mii-exa-studie-reference-study.md)

**status**: Active

**category**: Observational study

**focus**: Erwachsene der Stadt Leipzig

**keyword**: Bevölkerung, Leipzig, Erwachsene

**description**: 

Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden.

### Arms

| | |
| :--- | :--- |
| - | **Name** |
| * | LIFE-Adult-Kohorte |



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-studie-cohort",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueString" : "MII Modul Studie"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
  },
  {
    "extension" : [{
      "url" : "role",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/CodeSystem/associated-party-role",
          "code" : "sponsor"
        }]
      }
    },
    {
      "url" : "party",
      "valueReference" : {
        "reference" : "Organization/mii-exa-studie-author"
      }
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.associatedParty"
  },
  {
    "extension" : [{
      "url" : "status",
      "valueString" : "genehmigt"
    },
    {
      "url" : "kommission",
      "valueString" : "Ethik-Kommission der Medizinischen Fakultät der Universität Leipzig"
    },
    {
      "url" : "ethiknummer",
      "valueString" : "159-12-21052012"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister",
    "valueReference" : {
      "reference" : "Library/mii-exa-studie-register"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-eligibility",
    "valueReference" : {
      "reference" : "EvidenceVariable/mii-exa-studie-ein-auschluss-kriterium"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym",
    "valueString" : "LIFE ADULT"
  },
  {
    "extension" : [{
      "url" : "rekrutierungsstart",
      "valueDate" : "2009-01-01"
    },
    {
      "url" : "rekrutierungsziel",
      "valueInteger" : 10000
    },
    {
      "url" : "rekrutierungsstand",
      "valueInteger" : 10000
    },
    {
      "url" : "rekrutierungsstand-genauigkeit",
      "valueString" : "good"
    },
    {
      "url" : "rekrutierungsstand-datum",
      "valueDate" : "2022-05-28"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung",
    "valueString" : "Deutsches Bundesministerium für Bildung und Forschung (BMBF)"
  }],
  "identifier" : [{
    "system" : "https://example.com/fhir/sid/lha",
    "value" : "7Q6PJD8NV3-2"
  }],
  "title" : "LIFE-Adult-Study",
  "partOf" : [{
    "reference" : "ResearchStudy/mii-exa-studie-reference-study"
  }],
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://example.org/fhir/CodeSystem/research-study-category",
      "code" : "observational"
    }]
  }],
  "focus" : [{
    "text" : "Erwachsene der Stadt Leipzig"
  }],
  "keyword" : [{
    "text" : "Bevölkerung, Leipzig, Erwachsene"
  }],
  "description" : "Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden.",
  "arm" : [{
    "name" : "LIFE-Adult-Kohorte"
  }]
}

```

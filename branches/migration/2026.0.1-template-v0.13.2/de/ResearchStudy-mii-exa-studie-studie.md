# Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue**

## Beispiel ResearchStudy: Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue

-------

**German**

-------

Profile: [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.md)

> **MII EX Studie Backport Label**
* value: Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue
* type: Scientific title

> **MII EX Studie Backport Label**
* value: Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue
* type: Öffentlicher Titel

**MII EX Studie Akronym**: tDCS

> **MII EX Studie Rekrutierung**
* rekrutierungsstart: 2023-01-12
* rekrutierungsziel: 40
* rekrutierungsstand: 35
* rekrutierungsstand-genauigkeit: good
* rekrutierungsstand-datum: 2023-02-17

**MII EX Studie Finanzierung**: Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)

> **MII EX Studie Ethikvotum**
* status: Zustimmende Bewertung
* kommission: Ethik-Kommission der Otto-von-Guericke-Universität an der Medizinischen Fakultät und am Universitätsklinikum Magdeburg A.ö.R.
* ethiknummer: Az.: 83/18

**identifier**: `https://example.com/fhir/sid/drks`/DRKS00031294

**title**: Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue

**status**: Active

**category**: interventional, Zufallszuteilung

**description**: 

Diese Studie untersucht den Einfluss repetitiver anodaler Gleichstromstimulation des linken dorsolateralen präfrontalen Kortex (dlPFC ) auf subjektive und objektive Kennwerte und assoziierte EEG-Parameter der Fatigue bei Long-COVID Patient*innen. Die Studie ist sham-kontrolliert und doppelt-verblindet.

> **arm****name**: frontale anodale tDCS (verum condition)**description**: vier Stimulationen, jeweils 30 Minuten, 1.5mA über dem linken dlPFC

> **arm****name**: frontale sham tDCS**description**: vier Stimulationen, jeweils 30 Minuten



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-studie-studie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueString" : "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/title-type",
          "code" : "scientific"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueString" : "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "text" : "Öffentlicher Titel"
      }
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym",
    "valueString" : "tDCS"
  },
  {
    "extension" : [{
      "url" : "rekrutierungsstart",
      "valueDate" : "2023-01-12"
    },
    {
      "url" : "rekrutierungsziel",
      "valueInteger" : 40
    },
    {
      "url" : "rekrutierungsstand",
      "valueInteger" : 35
    },
    {
      "url" : "rekrutierungsstand-genauigkeit",
      "valueString" : "good"
    },
    {
      "url" : "rekrutierungsstand-datum",
      "valueDate" : "2023-02-17"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung",
    "valueString" : "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
  },
  {
    "extension" : [{
      "url" : "status",
      "valueString" : "Zustimmende Bewertung"
    },
    {
      "url" : "kommission",
      "valueString" : "Ethik-Kommission der Otto-von-Guericke-Universität an der Medizinischen Fakultät und am Universitätsklinikum Magdeburg A.ö.R."
    },
    {
      "url" : "ethiknummer",
      "valueString" : "Az.: 83/18"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"
  }],
  "identifier" : [{
    "system" : "https://example.com/fhir/sid/drks",
    "value" : "DRKS00031294"
  }],
  "title" : "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue",
  "status" : "active",
  "category" : [{
    "coding" : [{
      "code" : "interventional"
    }]
  },
  {
    "text" : "Zufallszuteilung"
  }],
  "description" : "Diese Studie untersucht den Einfluss repetitiver anodaler Gleichstromstimulation des linken dorsolateralen präfrontalen Kortex (dlPFC ) auf subjektive und objektive Kennwerte und assoziierte EEG-Parameter der Fatigue bei Long-COVID Patient*innen. Die Studie ist sham-kontrolliert und doppelt-verblindet.",
  "arm" : [{
    "name" : "frontale anodale tDCS  (verum condition)",
    "description" : "vier Stimulationen, jeweils 30 Minuten, 1.5mA über dem linken dlPFC"
  },
  {
    "name" : "frontale sham tDCS",
    "description" : "vier Stimulationen, jeweils 30 Minuten"
  }]
}

```

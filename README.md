# Medizininformatik Initiative - Modul Studie

## Übersicht

Das Repository beschreibt die FHIR-Spezifikation des Erweiterungmoduls 'Studie' - Medizinische Forschungsvorhaben, welches einen Teil des [Kerndatensatzes](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative) der Medizininformatik-Initative darstellt. Die hier veröffentlichten FHIR-Profile und Beispiele dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Status

* Aktuelle stabile Version: [1.0.0](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie/1.0.0) (bzw. **2024.0.0** nach neuem Nummerierungsschema)
* Aktueller [Implementierungsleitfaden](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html)

Die im vorliegenden Repository bzw. auf [Simplifer](https://simplifier.net/medizininformatik-initiative-modul-studien) befindlichen FHIR-Artefakte stellen den **aktuellen Arbeitsstand** dar. Sie sind nicht abgestimmt und können sich jederzeit ändern.

### Mitwirkungs- und Kommentierungsmöglichkeiten

* Kommentareinreichung via [GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie)
* Diskussionsforum im internationalen [FHIR-Chat](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)

### Autoren und Ansprechpartner

#### Leitung des Moduls

* Matthias Löbe, Institut für Medizinische Informatik, Statistik und Epidemiologie, Universität Leipzig (IMISE)

#### Technische Umsetzung

* Margaux Gatrio, Berlin Institute of Health at Charité (BIH)
* Alexander Zautke, HL7 Deutschland

## Dokumentation und Beispiele

Im Folgenden sollen einige intendierte Anwendungsfälle der Modulspezifikation paradigamtisch dokumentiert werden. In der aktuellen Version des Moduls wir die FHIR-Version 4.0.1 genutzt.

### Abbildung einer klinischen Studie

Klinische Studien sind experimentelle Prüfungen unter definierten Bedingungen mit dem Ziel, die Wirksamkeit und Sicherheit einer neuen Therapie zu untersuchen. Nach guter wissenschaftlicher Praxis werden klinische Studien prospektiv in Studienregistern eingetragen. Populäre Register sind das [Deutsche Register Klinischer Studien (DRKS)](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Deutsches-Register-Klinischer-Studien/_node.html) beim BfArM oder [ClinicalTrials.gov](https://clinicaltrials.gov/) der National Library of Medicine. Der Umgang eines Eintrags umfasst mindestens den [WHO Trial Registration Data Set](https://www.who.int/clinical-trials-registry-platform/network/who-data-set).

Klinische Studien werden in FHIR mit der Ressource **[ResearchStudy](https://hl7.org/fhir/R4/researchstudy.html)** abgebildet. Zur besseren Referzierung geben wir dem Beispiel die interne Kennzeichnung "btfs-studie".

```
{
  "resourceType": "ResearchStudy",
  "id": "btfs-studie"
}
```

Zuerst sollen einfache studien-spezifische Metadaten abgebildet werden.

#### Titel einer Studie

Der Titel einer Studie soll eine menschenlesbare Kurzform der wichtigsten Kennzahlen einer Studie widergeben. Es gibt verschiedene Konventionen, welche Angaben in einen Titel gehören. Titel in klinischen Studien sind häufig vergleichsweise lang, was Probleme bei der Darstellung in Nutzermasken mit sich bringen kann. Für FHIR ist das technisch kein Problem, da Längen bis 1 Million Zeichen unterstützt werden.

Der Titel wird in das Element [ResearchStudy.title](https://www.hl7.org/fhir/researchstudy-definitions.html#ResearchStudy.title) abgebildet, welches 0..1 mal vorkommen kann und vom Typ String ist.

Beispiel:
```
  "title": "Bitterfelder Schnupfenstudie"
```

Ein Problem besteht oft darin, dass eine Studie nicht nur einen Titel hat, sondern:
* Kurztitel und Langtitel
* Titel in wissenschaftlicher und laienverständlicher Sprache
* Titel in Deutsch und Englisch
* Sprechende Abkürzungen
* Kombinationen dieser Titelvarianten

#### Beschreibung einer Studie

#### Studienidentifikator


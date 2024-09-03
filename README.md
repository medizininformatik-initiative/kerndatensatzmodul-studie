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

## Dokumentation und Beispiel: Abbildung einer klinischen Studie

Im Folgenden sollen einige intendierte Anwendungsfälle der Modulspezifikation paradigamtisch dokumentiert werden. In der aktuellen Version des Moduls wir die FHIR-Version 4.0.1 genutzt.

Klinische Studien sind experimentelle Prüfungen unter definierten Bedingungen mit dem Ziel, die Wirksamkeit und Sicherheit einer neuen Therapie zu untersuchen. Nach guter wissenschaftlicher Praxis werden klinische Studien prospektiv in Studienregistern eingetragen. Populäre Register sind das [Deutsche Register Klinischer Studien (DRKS)](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Deutsches-Register-Klinischer-Studien/_node.html) beim BfArM oder [ClinicalTrials.gov](https://clinicaltrials.gov/) der National Library of Medicine. Der Umgang eines Eintrags umfasst mindestens den [WHO Trial Registration Data Set](https://www.who.int/clinical-trials-registry-platform/network/who-data-set).

Klinische Studien werden in FHIR mit der Ressource **[ResearchStudy](https://hl7.org/fhir/R4/researchstudy.html)** abgebildet. Zur besseren Referenzierung geben wir dem Beispiel die interne Kennzeichnung "btfs-studie".

```
{
  "resourceType": "ResearchStudy",
  "id": "btfs-studie"
}
```

Zuerst sollen einfache studien-spezifische Metadaten abgebildet werden.

### Titel einer Studie

Der Titel einer Studie soll eine menschenlesbare Kurzform der wichtigsten Kennzahlen einer Studie widergeben. Es gibt verschiedene Konventionen, welche Angaben in einen Titel gehören. Titel in klinischen Studien sind häufig vergleichsweise lang, was Probleme bei der Darstellung in Nutzermasken mit sich bringen kann.

Für FHIR ist das technisch kein Problem, da Längen bis 1 Million Zeichen unterstützt werden. Der Titel wird in das Element [ResearchStudy.title](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.title) abgebildet, welches 0..1 mal vorkommen kann und vom Typ String ist.

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

### Beschreibung einer Studie

Die Beschreibung einer Studie enthält eine für den Menschen lesbare Zusammenfassung des Hintergrunds der Studie, der Forschungsfrage und ggfs. der Ergebnisse. Sie ist ähnlich dem Abstract einer Publikation und kann auch schon detaillierter sein. 

In FHIR existiert ein dafür das Element [ResearchStudy.description](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.description). Es ist vom Typ Markdown und  die Markdown-Syntax beherrschen muss.

Beispiel:
```
  "description":"**Hintergrund**: Schnupfen ist Hauptsymptom einer Erkältung bzw. eines grippalen Infekts, weltweit eine der häufigsten Infektionserkrankungen. Das Auftreten von Schnupfen verschlechtert die Lebensqualität des Patienten erheblich und schränkt die körperliche und geistige Leistungsfähigkeit ein. Eine Medikamentengabe könnte eine Option für langfristig andauernden Schnupfen sein. In dieser Studie untersuchen wir den Effekt der Gabe von Xylometazolin auf die Erkrankungsdauer und die Gabe von Dexpanthenol zur Vermeidung von Hautirritationen.\n\n**Methoden**: Patienten mit schwerem grippalen Infekt, die nach mindestens 1 Woche eine stabile Erkrankung aufweisen, sind für die Studie geeignet. Es ist eine Randomisierung in 3 Arme vorgesehen: Gabe von Xylometazolin, Gabe von Xylometazolin und Dexpanthenol und reine Beobachtung. Die Intervention wird bis zu 3x täglich bei Bedarf durch den Probanden selbst durchgeführt. Die Dokumentation erfolgt zeitnah über eine Smartphone-App. Nach 2 Wochen wird die Intervention beendet.\n\n**Ergebnisse**: Die Studie läuft aktuell und die Patientenrekrutierung ist gestartet. Insgesamt wurden bereits 124 Patienten mit diesem Protokoll rekrutiert. Bislang sind alle Probanden in guter klinischer Verfassung.\n\n**Diskussion**: Mit dem Design der Bitterfelder Schnupfenstudie könnte es möglich sein, Patienten mit langandauernden Infekten eine wirksame und unbedenkliche Behandlung anzubieten. Es muss insbesondere auf Ko-Morbiditäten geachtet werden, die mitursächlich für den Infekt sein können."
```

In FHIR R5 gibt es ein Element zur Abbildung von kürzeren Zusammenfassungen (`descriptionSummary`), sodass für `description` vorzugsweise für detailliertere Zusammenfassungen steht. Problematisch kann die technische Konvertierung von Hypertext- oder Rich-Text-Dokumenten in Markdown sein.

### Studienidentifikator

Viele Forschungsvorhaben werden prospektiv in Studienregistern registriert, um eine Transparenz laufender Projekte und eine Pflicht zur Veröffentlichung von Ergebnissen durchzusetzen. Bei der Registrierung erhalten sie üblicherweise einen einmalig vergebenen, dauerhaften Code aus den Namensraum des Registers. Ebenso üblich sind lokale Nummern wie Projektnummern der durchführenden Einrichtung oder des Förders. Es kann demnach sehr viele verschiedene Identifikatoren geben.

FHIR kennt dafür das Element [ResearchStudy.identifier](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.identifier), welches vom komplexen Typ [Identifier](https://hl7.org/fhir/R4/datatypes.html#Identifier) ist. Auch wenn keines der Subelemente verpflichtend ist, sollte mindestens `Identifier.value` und `Identifier.system` vergeben werden, um aus den Metadaten Nutzen ziehen zu können.

Beispiel: Die folgende Studie hat drei (fiktive) Identifier, darunter zwei globale Identifier (eine Nummer aus CT.gov und eine aus dem deutschen WHO-Primärregister DRKS). Der dritte Identifier wurde aus dem lokalen Forschungsinformationssystem zugeteilt. Da die ersten bedien Identifier weltweit bekannt und gültig sind und auch aufgelöst werden können, wurden sie als `#official` bezeichnet. Der lokale Identifier hat eher einen lokalen Bezug und ist daher `secondary`.

```
  "identifier": [
    {
      "use": "official",
      "system": "https://clinicaltrials.gov",
      "value": "NCT01234567"
    },
    {
      "use": "official",
      "system": "https://drks.de",
      "value": "DRKS00031039"
    },
    {
      "use": "secondary",
      "system": "https://diz.uk-bitterfeld.de/ns/studien",
      "value": "BTF-24-0023"
    }
  ]
```

Mögliche Probleme:
* Nichtverfügbarkeit des `Identifier.system` für globale Studienregister wie ClinicalTrials.gov oder DRKS
* Festlegen der Nutzung des `Identifier.system` für lokale Forschungsregister
* Festlegen der Nutzung des ValueSets [IdentifierType](https://hl7.org/fhir/R4/datatypes.html#Identifier) für das Element `Identifier.type`

### Studienstatus

ResearchStudy.status

### Studienstart und Studienende

ResearchStudy.period

### Typ der Studie



### Untersuchte Krankheitsentität

ResearchStudy.condition

### Ansprechpartner

ResearchStudy.contact

### Anmerkungen zu einer Studie

## Dokumentation und Beispiel: Beteiligte Akteure

### Verantwortlicher Wissenschaftler/Leiter der klinischen Studie

ResearchStudy.principalvestigator

### Sponsor

ResearchStudy.sponsor

### Studienzentren

ResearchStudy.site

## Dokumentation und Beispiel: Studienunterlagen

### Studiendokumente

ResearchStudy.relatedArtifact

### Studienprotokoll (maschinenausführbar)

ResearchStudy.protocol

## Dokumentation und Beispiel: Fortgeschritte Aspekte des Studiendesigns

### Phasen

ResearchStudy.phase

### Arme

ResearchStudy.arm

### Zweck der Studie

ResearchStudy.primaryPurposeType

### Hierachische Studien (Phasen und Substudien)

ResearchStudy.partOf

### Verschlagwortung

ResearchStudy.keyword

### Finanzierung der Studie



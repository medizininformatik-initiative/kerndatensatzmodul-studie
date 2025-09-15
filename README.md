# Medizininformatik Initiative - Modul Medizinisches Forschungsvorhaben

## Übersicht

Das Repository beschreibt die FHIR-Spezifikation des Moduls 'Studie' - Medizinisches Forschungsvorhaben, welches einen Teil des [Kerndatensatzes](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative) der Medizininformatik-Initative darstellt. Die hier veröffentlichten FHIR-Profile und Beispiele dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Status

* Aktuelle stabile Version: [1.0.0](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie/1.0.0) (bzw. **2024.0.0** nach neuem Nummerierungsschema)
* Aktueller [Implementierungsleitfaden](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/MIIIGModulStudie.html)

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

Für FHIR ist das technisch kein Problem, da Längen bis eine Million Zeichen unterstützt werden. Der Titel wird in das Element **[ResearchStudy.title](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.title)** abgebildet, welches 0..1 mal vorkommen kann und vom Typ [String](https://hl7.org/fhir/R4/datatypes.html#string) ist.

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

In FHIR existiert ein dafür das Element **[ResearchStudy.description](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.description)**. Es ist vom Typ [Markdown](https://hl7.org/fhir/R4/datatypes.html#markdown), was heißt, dass man die spezielle Markdown-Syntax beherrschen muss.

Beispiel:
```
  "description":"**Hintergrund**: Schnupfen ist Hauptsymptom einer Erkältung bzw. eines grippalen Infekts, weltweit eine der häufigsten Infektionserkrankungen. Das Auftreten von Schnupfen verschlechtert die Lebensqualität des Patienten erheblich und schränkt die körperliche und geistige Leistungsfähigkeit ein. Eine Medikamentengabe könnte eine Option für langfristig andauernden Schnupfen sein. In dieser Studie untersuchen wir den Effekt der Gabe von Xylometazolin auf die Erkrankungsdauer und die Gabe von Dexpanthenol zur Vermeidung von Hautirritationen.\n\n**Methoden**: Patienten mit schwerem grippalen Infekt, die nach mindestens 1 Woche eine stabile Erkrankung aufweisen, sind für die Studie geeignet. Es ist eine Randomisierung in 3 Arme vorgesehen: Gabe von Xylometazolin, Gabe von Xylometazolin und Dexpanthenol und reine Beobachtung. Die Intervention wird bis zu 3x täglich bei Bedarf durch den Probanden selbst durchgeführt. Die Dokumentation erfolgt zeitnah über eine Smartphone-App. Nach 2 Wochen wird die Intervention beendet.\n\n**Ergebnisse**: Die Studie läuft aktuell und die Patientenrekrutierung ist gestartet. Insgesamt wurden bereits 124 Patienten mit diesem Protokoll rekrutiert. Bislang sind alle Probanden in guter klinischer Verfassung.\n\n**Diskussion**: Mit dem Design der Bitterfelder Schnupfenstudie könnte es möglich sein, Patienten mit langandauernden Infekten eine wirksame und unbedenkliche Behandlung anzubieten. Es muss insbesondere auf Ko-Morbiditäten geachtet werden, die mitursächlich für den Infekt sein können."
```

In FHIR R5 gibt es ein Element zur Abbildung von kürzeren Zusammenfassungen (`descriptionSummary`), sodass für `description` vorzugsweise für detailliertere Zusammenfassungen steht. Problematisch kann die technische Konvertierung von Hypertext- oder Rich-Text-Dokumenten in Markdown sein.

### Studiennummer/-identifikator

Viele Forschungsvorhaben werden prospektiv in Studienregistern registriert, um eine Transparenz laufender Projekte und eine Pflicht zur Veröffentlichung von Ergebnissen durchzusetzen. Bei der Registrierung erhalten sie üblicherweise einen einmalig vergebenen, dauerhaften Code aus den Namensraum des Registers. Ebenso üblich sind lokale Nummern wie Projektnummern der durchführenden Einrichtung oder des Förderers. Es kann demnach sehr viele verschiedene Identifikatoren geben.

FHIR kennt dafür das Element **[ResearchStudy.identifier](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.identifier)**, welches vom komplexen Typ [Identifier](https://hl7.org/fhir/R4/datatypes.html#Identifier) ist. Auch wenn keines der Subelemente verpflichtend ist, sollte mindestens `Identifier.value` und `Identifier.system` vergeben werden, um aus den Metadaten Nutzen ziehen zu können.

Beispiel: Die folgende Studie hat drei (fiktive) Identifier, darunter zwei globale Identifier (eine Nummer aus CT.gov und eine aus dem deutschen WHO-Primärregister DRKS). Der dritte Identifier wurde aus dem lokalen Forschungsinformationssystem zugeteilt. Da die ersten bedien Identifier weltweit bekannt und gültig sind und auch aufgelöst werden können, wurden sie als `#official` bezeichnet. Der lokale Identifier hat eher einen lokalen Bezug und ist daher `#secondary`.

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

Der Status eines Forschungsvorhabens bezeichnet im Wesentlichen den Stand im Lebenszyklus von Planung bis Archivierung.

In FHIR ist der Status das **einzige Pflichtfeld** in der gesamten Ressource ResearchStudy. Der Wert muss aus dem **ValueSet [ResearchStudyStatus](https://hl7.org/fhir/R4/valueset-research-study-status.html)** kommen. Dort sind aktuell elf Codes enthalten, die sich stark an klinische Studien anlehnen. Es gibt eine [Beschreibung, welche Statusübergänge auftreten können](https://hl7.org/fhir/R4/researchstudy.html#statemachine) (nach Meinung der Autoren von FHIR).

Beispiel:
```
    "status": "active"
```
Problematisch für die Umsetzung in FHIR sind viele Dinge:
1. Es handelt sich um ein Pflichtfeld. Studien ohne bekannten Status müssen eine Annahme machen, sonst sind die FHIR-Instanzen nicht konform. *"Unknown"* gibt es nicht.
2. Es muss unbedingt ein Code aus der Liste [ResearchStudyStatus](https://hl7.org/fhir/R4/valueset-research-study-status.html) genommen werden. Ist eine Studie erst einmal nur geplant und es wurde bspw. ein Antrag geschrieben, lässt sich das semantisch nicht abbilden, weil der Zustandsgraph mit *"In Review - Protocol is submitted to the review board for approval"* beginnt. Für nichtinterventionelle Studien wie Kohorten passen die Werte noch schlechter.
3. Die Benennung einzelner Codes kann missverständlich sein. Das dahinterliegende Codesystem ist nicht hierarchisch, d.h. der Status *"active"* bezeichnet nur Studien, die gerade rekrutieren, nicht Studien, die in der Analysephase sind, weil es dann *"closed-to-accrual-and-intervention"* hieße.
4. Häufig werden die genauen Status' nicht bekannt sein, sondern nur allgemeinere Angaben wie *"laufend"*.

In der zukünftigen Versionen von FHIR wird das Element so nicht mehr vorhanden sein. Bis dahin gilt es, mit Unschärfen zu leben. Eventuell lässt sich der Status aus dem Studienstart und -ende ableiten, wenn diese Angaben vertrauenswürdiger sind.

### Studienstart und Studienende

Studienstart und Studienende bezeichnen zwei Zeitpunkte, zwischen denen ein Forschungsvorhaben aktiv bearbeitet wird. Die Frage, wann eine Studie startet (Mittelzusage, offizieller Kickoff, Eröffnung des Zentrums, Datenbankfreigabe, First-Patient-In) muss im Anwendungsfall geklärt werden.

FHIR setzt dies über das Element **[ResearchStudy.period](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.period)** um. Eine [Period](https://hl7.org/fhir/R4/datatypes.html#Period) hat Start und Ende, beide Elemente sind optional und können auch neben einem Datum auch eine Zeitangabe beinhalten.

Beispiel: Eine Studie startete mittags und endet im Dezember 2025.
```
  "period": {
    "start": "2024-02-26T12:00:00+01:00",
    "end": "2025-12"
  }
```
Die **Interpretation** hängt vom aktuellen Datum ab. Liegt das aktuelle Datum vor Start bzw. Ende, gelten die Werte als *"geplant"*, sonst als tatsächliche Werte. Auch hier müssen Abmachungen getroffen und Erweiterungen eingebracht werden, wenn Angaben wie *"war ursprünglich geplant für"* benötigt werden. Auch der Studienstatus sollte den Angaben nicht widersprechen, d.h. nicht *"completed"* sein, wenn das Studienende in der Zukunft leigt. 

### Typ der Studie (interventionell/nichtinterventionell)

Für viele Forschungsvorhaben ist es wichtig auszudrücken, ob eine direkte Intervention am Menschen geplant ist, d.h. die Gabe eines (experimentellen) Medikaments, eines Geräts oder einer Therapie, weil dadurch das Risiko für gefährliche Ereignisse steigt im Vergleich zu rein beobachtenden Studien. Interventionelle Vorhaben sind regulativ deutlich strenger geregelt.

FHIR ResearchStudy sieht dafür ein generisches Element vor, **[ResearchStudy.category](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.category)**. Hier sollen die wesentlichen Merkmale des Studiendesigns abgebildet werden. Es gibt _keinerlei Vorgaben oder Einschränkungen_ bzgl. referenzierter ValueSets.

Beispiel: Auszeichnung einer Studie als interventionell durch einen Textstring sowie durch eine Kodierung.
```
  "category": [
    {
      "text": "Interventionelle Studie",
      "coding": [
        {
          "system": "https://medizininformatik-initiative.de/terms",
          "code": "INTERVENTION",
          "display": "Interventional study"
        }
      ]
    }
  ]
```

Problematisch in der Version dieses Moduls ist die fehlende Abstimmung eines gemeinsamen ValueSets für Studientypen. Das Beispiel ist nur erklärend.

### Untersuchte Krankheitsentität

Ein wichtiges Kriterium für medizinische Forschungsvorhaben ist die Krankheit, die im Fokus der Studie steht. Neben Krankheiten können das im weiteren Sinn Störungen, Syndrome, Gesundheitsprobleme, Diagnose oder Verletzungen sein, die untersucht werden sollen und auch andere gesundheitsbezogene Aspekte wie Lebenserwartung, Lebensqualität und Gesundheitsrisiken umfassen. Die Probanden müssen nicht an der Krankheitsentität leiden, dafür gibt es Einschlusskriterien.

FHIR bildet die untersuchte Krankheitsentität in **[ResearchStudy.condition](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.condition)** ab. Es kann mehrere Entitäten geben, als Freitext und/oder kodiert.

Beispiel: Krankheitsentität der Bitterfelder Schnupfenstudie ist der typische Erkältungsschnupen.
```
  "condition": [
    {
      "text": "Schnupfen",
      "coding": [
        {
          "code": "J00.0",
          "system": "http://hl7.org/fhir/sid/icd-10",
          "version": "2024",
          "display": "Acute nasopharyngitis"
        },
        {
          "code": "82272006",
          "system": "http://snomed.info/sct",
          "version": "http://snomed.info/sct/900000000000207008/version/20230731",
          "display": "Common cold (disorder)"
        }
      ]
    }
  ]
```

Viele Krankheiten besitzen umgangssprachliche Namen (unscharf) und medizinische Namen. Es ist nicht einfach, textuelle Bezeichner sicher zu kodieren. Zusätzlich ist nicht geklärt, wie mehrere Krankheitsentitäten zu interpretieren sind, vermutlich als logisches Oder, d.h. alle beide stehen im Fokus der Studie.

### Ansprechpartner und Kontaktdaten

Forschungsvorhaben werden i.A. von mehreren Menschen betreut, die für interne und externe Fragen als Ansprechpartner fungieren.

**[ResearchStudy.contact](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.contact)** kann biliebig viele Kontakte abbilden. Kontakte sind dabei vom Typ [ContactDetail](https://hl7.org/fhir/R4/metadatatypes.html#ContactDetail), was den Vorteil hat, dass sie nicht als FHIR-Ressourcen auf dem Server vorhanden sein müssen, sondern einfach wie Visitenkarten angelegt werden.

Beispiel: Die Studie hat eine Prüfärztin und einen Data Manager als natürliche Kontaktpersonen und die Studienambulanz als bevorzugten Organisationskontakt.
```
  "contact": [
    {
      "name": "Dr. Franziska Jauch",
      "telecom": [
        {
          "system": "email",
          "value": "fjauch@uniklinikum-bitterfeld.de",
          "use": "work"
        }
      ]
    },
    {
      "name": "Wiktor Silberk",
      "telecom": [
        {
          "system": "phone",
          "value": "+49 1715 8264023",
          "use": "mobile"
        }
      ]
    },
    {
      "name": "Studienambulanz",
      "telecom": [
        {
          "system": "url",
          "value": "https://www.uniklinikum-bitterfeld.de/studienambulanz",
          "use": "work",
          "rank": 1
        }
      ]
    }
  ]

```

Problematisch ist, dass es zwar mehrere Kontakte geben kann, aber es keine Auszeichnung der Rolle gibt. So wird häufig zwischen einem wissenschaftlichen Ansprechpartner und einem für Fragen der Rekrutierung unterschieden. Dies wird mit zukünftigen FHIR-Versionen möglich sein.

## Dokumentation und Beispiel: Beteiligte Akteure

### Verantwortlicher Wissenschaftler/Leiter der klinischen Studie

Jedes nichttriviale Forschungsprojekt hat einen leitenden Wissenschaftler.

In FHIR gibt es bei Forschungsstudien das Element **[ResearchStudy.principalvestigator](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.principalInvestigator)**. Hier ist eine  Referenz auf einen FHIR [Practitioner](https://hl7.org/fhir/R4/practitioner.html) oder [PractitionerRole](https://hl7.org/fhir/R4/practitionerrole.html) anzugeben. Während ein Practitioner ein beruflich beteiligter Experte ist, kann PractitionerRole auch noch den Typ der Rolle angeben (hier schon über das Element klar). Das Referenzziel muss auf dem FHIR-Server bzw. in der übertragenen Datenstruktur existieren.

Beispiel:
```
  "principalInvestigator": {
    "reference": "Practitioner/sabine-obomba"
  }
```


Problematisch ist die Kardinalität von max. 1, da es mehrere gleichberechtigte leitende Wissenschaftler geben kann. In diesem Fall sollte einer ausgewählt werden, ev. lexikografisch.

### Sponsor

Als Sponsor einer Studie wird die juristisch verantwortliche Organisation bezeichnet, welche die Studie durchführt.

Dafür existiert ein gleichnamiges Element **[ResearchStudy.sponsor](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.sponsor)** mit einer Referenz auf eine FHIR [Organisation](https://hl7.org/fhir/R4/organization.html).

Beispiel:
```
  "sponsor": {
    "reference": "Organization/uniklinikum-bitterfeld"
  }
```

Organisationseinheiten und Standorte sind Teil des Moduls Strukturdaten des Kerndatensatz und werden hier nicht weiter erläutert.

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

### Anmerkungen zu einer Studie (Bemerkungen)

In einzelnen Anwendungfällen kann es gewünscht sein, Anmerkungen zu einer Studie ähnlich der Kommentarfunktion von Blogs intern oder mit externer Sichtbarkeit zu unterstützen.

In FHIR gibt es hierfür **[ResearchStudy.note](https://hl7.org/fhir/R4/researchstudy-definitions.html#ResearchStudy.note)**, welches vom Typ [Annotation](https://hl7.org/fhir/R4/datatypes.html#Annotation) ist. Eine Annotation hat einen Text in Markdown ähnlich wie `ResearchStudy.description`, unterstützt aber zusätzlich Angaben zum Zeitpunkt und Akteur der Studie.

Beispiel:
```
  "note": [
    {
      "text": "Studiendesign ist immer noch unklar.",
      "time": "2024-02-28T07:34:05+01:00",
      "authorString": "David"
    }
  ]
```

Aktuell sind keine echten Anwendungsfälle bekannt, welches dieses Konstrukt nutzen.

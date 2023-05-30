Profile: MII_PR_Studie_Studie
Title: "MII PR Studie Studie"
Parent: ResearchStudy
Id: mii-pr-studie-studie
* status MS
* title MS
* identifier MS
* identifier.value MS
* identifier.system MS
* partOf MS
* extension MS
* extension contains MII_EX_Studie_Studienregister named Studienregister 0..* MS
* extension contains MII_EX_Studie_Eligibility named Eligibility 0..1 MS
* extension contains MII_EX_Studie_Studienfokus named Studienfokus 0..* MS
* extension contains MII_EX_Studie_Schlagwort named Schlagwort 0..* MS
* extension contains MII_EX_Studie_Oeffentlicher_Titel named OeffentlicherTitel 0..1 MS
* extension contains MII_EX_Studie_Wissenschaftlicher_Titel named WissenschaftlicherTitel 0..1 MS
* extension contains MII_EX_Studie_Akronym named Akronym 0..1 MS
* extension contains MII_EX_Studie_Randomisierungsmethode named Randomisierungsmethode 0..1 MS
* extension contains MII_EX_Studie_Rekrutierungsstart named Rekrutierungsstart 0..1 MS
* extension contains MII_EX_Studie_Rekrutierungsziel named Rekrutierungsziel 0..1 MS
* extension contains MII_EX_Studie_Rekrutierungsstand named Rekrutierungsstand 0..1 MS
* extension contains MII_EX_Studie_Rekrutierungsstand_Genauigkeit named RekrutierungsstandGenauigkeit 0..1 MS
* extension contains MII_EX_Studie_Rekrutierungsstand_Datum named RekrutierungsstandDatum 0..1 MS
* extension contains MII_EX_Studie_Finanzierung named Finanzierung 0..1 MS
* arm MS
* arm.name MS
* category MS

Extension: MII_EX_Studie_Studienregister
Id: mii-ex-studie-studienregister
Title: "MII EX Studie Studienregister"
* value[x] only Reference(Library)

Extension: MII_EX_Studie_Eligibility
Id: mii-ex-studie-eligibility
Title: "MII EX Studie Eligibility"
* value[x] only Reference(Group or EvidenceVariable)

Extension: MII_EX_Studie_Studienfokus
Id: mii-ex-studie-studienfokus
Title: "MII EX Studie Studienfokus"
* value[x] only string

Extension: MII_EX_Studie_Schlagwort
Id: mii-ex-studie-schlagwort
Title: "MII EX Studie Schlagwort"
* value[x] only string

Extension: MII_EX_Studie_Oeffentlicher_Titel
Id: mii-ex-studie-oeffentlicher-titel
Title: "MII EX Studie Oeffentlicher Titel"
* value[x] only string

Extension: MII_EX_Studie_Wissenschaftlicher_Titel
Id: mii-ex-studie-wissenschaftlicher-titel
Title: "MII EX Studie Wissenschaftlicher Titel"
* value[x] only string

Extension: MII_EX_Studie_Akronym
Id: mii-ex-studie-akronym
Title: "MII EX Studie Akronym"
* value[x] only string

Extension: MII_EX_Studie_Rekrutierungsstart
Id: mii-ex-studie-rekrutierungsstart
Title: "MII EX Studie Rekrutierungsstart"
* value[x] only date

Extension: MII_EX_Studie_Rekrutierungsziel
Id: mii-ex-studie-rekrutierungsziel
Title: "MII EX Studie Rekrutierungsziel"
* value[x] only integer

Extension: MII_EX_Studie_Rekrutierungsstand
Id: mii-ex-studie-rekrutierungsstand
Title: "MII EX Studie Rekrutierungsstand"
* value[x] only integer

Extension: MII_EX_Studie_Rekrutierungsstand_Genauigkeit
Id: mii-ex-studie-rekrutierungsstand-genauigkeit
Title: "MII EX Studie Rekrutierungsstand Genauigkeit"
* value[x] only string

Extension: MII_EX_Studie_Rekrutierungsstand_Datum
Id: mii-ex-studie-rekrutierungsstand-datum
Title: "MII EX Studie Rekrutierungsstand Datum"
* value[x] only date

Extension: MII_EX_Studie_Randomisierungsmethode
Id: mii-ex-studie-randomisierungsmethode
Title: "MII EX Studie Randomisierungsmethode"
* value[x] only string

Extension: MII_EX_Studie_Finanzierung
Id: mii-ex-studie-finanzierung
Title: "MII EX Studie Finanzierung"
* value[x] only string

Instance: mii-exa-studie-studie
InstanceOf: MII_PR_Studie_Studie
Usage: #example
* status = #active
* title = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* identifier.value = "DRKS00031294"
* identifier.system = "https://example.com/fhir/sid/drks"
* extension[OeffentlicherTitel].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[WissenschaftlicherTitel].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[Akronym].valueString = "tDCS"
* extension[Randomisierungsmethode].valueString = "Zufallszuteilung"
* extension[Rekrutierungsstart].valueDate = "2023-01-12"
* extension[Rekrutierungsziel].valueInteger = 40
* extension[Rekrutierungsstand].valueInteger = 35
* extension[RekrutierungsstandGenauigkeit].valueString = "good"
* extension[RekrutierungsstandDatum].valueDate = "2023-02-17"
* category = #interventional
* arm.name = "frontale anodale tDCS  (verum condition)"
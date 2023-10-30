Profile: MII_PR_Studie_Studie
Title: "MII PR Studie Studie"
Parent: ResearchStudy
Id: mii-pr-studie-studie
* insert addMetadata
* status MS
* title MS
* identifier MS
* identifier.value MS
* identifier.system MS
* partOf MS
* extension MS
* extension contains MII_EX_Studie_Backport_Definition_AssociatedParty named AssociatedParty 0..* MS
* extension contains MII_EX_Studie_Ethikvotum named Ethikvotum 0..* MS
* extension contains MII_EX_Studie_Studienregister named Studienregister 0..* MS
* extension contains MII_EX_Studie_Eligibility named Eligibility 0..1 MS
* extension contains MII_EX_Studie_Oeffentlicher_Titel named OeffentlicherTitel 0..1 MS
* extension contains MII_EX_Studie_Wissenschaftlicher_Titel named WissenschaftlicherTitel 0..1 MS
* extension contains MII_EX_Studie_Akronym named Akronym 0..1 MS
* extension contains MII_EX_Studie_Randomisierungsmethode named Randomisierungsmethode 0..1 MS
* extension contains MII_EX_Studie_Rekrutierung named Rekrutierung 0..1 MS
* extension contains MII_EX_Studie_Finanzierung named Finanzierung 0..1 MS
* arm MS
* arm.name MS
* category MS
* focus MS
  * text MS
* keyword MS
  * text MS

Extension: MII_EX_Studie_Studienregister
Id: mii-ex-studie-studienregister
Title: "MII EX Studie Studienregister"
* insert addMetadata
* value[x] only Reference(Library)

Extension: MII_EX_Studie_Eligibility
Id: mii-ex-studie-eligibility
Title: "MII EX Studie Eligibility"
* insert addMetadata
* value[x] only Reference(Group or EvidenceVariable)

Extension: MII_EX_Studie_Oeffentlicher_Titel
Id: mii-ex-studie-oeffentlicher-titel
Title: "MII EX Studie Oeffentlicher Titel"
* insert addMetadata
* value[x] only string

Extension: MII_EX_Studie_Wissenschaftlicher_Titel
Id: mii-ex-studie-wissenschaftlicher-titel
Title: "MII EX Studie Wissenschaftlicher Titel"
* insert addMetadata
* value[x] only string

Extension: MII_EX_Studie_Akronym
Id: mii-ex-studie-akronym
Title: "MII EX Studie Akronym"
* insert addMetadata
* value[x] only string

Extension: MII_EX_Studie_Rekrutierung
Id: mii-ex-studie-rekrutierung
Title: "MII EX Studie Rekrutierung"
* insert addMetadata
* extension contains rekrutierungsstand-datum 0..1 MS and rekrutierungsstand-genauigkeit 0..1 MS and rekrutierungsstand 0..1 MS and rekrutierungsziel 0..1 MS and rekrutierungsstart 0..1 MS
* extension[rekrutierungsstand-datum].value[x] only date
* extension[rekrutierungsstand-genauigkeit].value[x] only string
* extension[rekrutierungsstand].value[x] only integer
* extension[rekrutierungsziel].value[x] only integer
* extension[rekrutierungsstart].value[x] only date

Extension: MII_EX_Studie_Randomisierungsmethode
Id: mii-ex-studie-randomisierungsmethode
Title: "MII EX Studie Randomisierungsmethode"
* insert addMetadata
* value[x] only string

Extension: MII_EX_Studie_Finanzierung
Id: mii-ex-studie-finanzierung
Title: "MII EX Studie Finanzierung"
* insert addMetadata
* value[x] only string

Extension: MII_EX_Studie_Ethikvotum
Id: mii-ex-studie-ethikvotum
Title: "MII EX Studie Ethikvotum"
* insert addMetadata
* extension contains status 1..1 MS and kommission 1..1 MS and ethiknummer 1..1 MS
* extension[status].value[x] only string
* extension[kommission].value[x] only string
* extension[ethiknummer].value[x] only string

Extension: MII_EX_Studie_Backport_Definition_AssociatedParty
Id: mii-ex-studie-backport-associatedParty
Title: "MII EX Studie Backport AssociatedParty"
* insert addMetadata
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.associatedParty"
* extension contains name 0..1 and role 1..1 MS and period 0..1 and classifier 0..* and party 0..1 MS
* extension[name].value[x] only string
* extension[role].value[x] only CodeableConcept
* extension[role].valueCodeableConcept from http://hl7.org/fhir/ValueSet/research-study-party-role (extensible)
* extension[period].value[x] only Period
* extension[classifier].value[x] only CodeableConcept
* extension[classifier].valueCodeableConcept from http://hl7.org/fhir/ValueSet/research-study-party-organization-type (example)
* extension[party].value[x] only Reference(Practitioner or PractitionerRole or Organization)

Instance: ResearchStudy-armName
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-armName"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_ArmName"
* status = #active
* description = "Suchparameter für ResearchStudy.arm.name"
* experimental = false
* code = #armName
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.arm.name"

Instance: ResearchStudy-studienfokus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-studienfokus"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Studienfokus"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Studienfokus"
* experimental = false
* code = #studienfokus
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienfokus').value"

Instance: ResearchStudy-schlagwort
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-schlagwort"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Schlagwort"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Schlagwort"
* experimental = false
* code = #schlagwort
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-schlagwort').value"

Instance: ResearchStudy-oeffentlicher-titel
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-oeffentlicher-titel"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_OeffentlicherTitel"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:OeffentlicherTitel"
* experimental = false
* code = #oeffentlicherTitel
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-oeffentlicher-titel').value"

Instance: ResearchStudy-wissenschaftlicher-titel
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-wissenschaftlicher-titel"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_WissenschaftlicherIitel"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:WissenschaftlicherIitel"
* experimental = false
* code = #wissenschaftlicherIitel
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-wissenschaftlicher-titel').value"

Instance: ResearchStudy-akronym
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-akronym"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Akronym"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Akronym"
* experimental = false
* code = #akronym
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym').value"

Instance: ResearchStudy-randomisierungsmethode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-randomisierungsmethode"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Randomisierungsmethode"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Randomisierungsmethode"
* experimental = false
* code = #randomisierungsmethode
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-randomisierungsmethode').value"

Instance: ResearchStudy-finanzierung
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-finanzierung"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Finanzierung"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Finanzierung"
* experimental = false
* code = #finanzierung
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung').value"

Instance: ResearchStudy-studienregister
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-studienregister"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Studienregister"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Studienregister"
* experimental = false
* code = #studienregister
* base = #ResearchStudy
* type = #reference
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister').value"

Instance: ResearchStudy-rekrutierungsstand-datum
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand-datum"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_RekrutierungsstandDatum"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-datum"
* experimental = false
* code = #rekrutierungsstand-datum
* base = #ResearchStudy
* type = #date
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstand-datum').value"

Instance: ResearchStudy-rekrutierungsstand-genauigkeit
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand-genauigkeit"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_RekrutierungsstandGenauigkeit"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit"
* experimental = false
* code = #rekrutierungsstand-genauigkeit
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstand-genauigkeit').value"

Instance: ResearchStudy-rekrutierungsstand
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Rekrutierungsstand"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand"
* experimental = false
* code = #rekrutierungsstand
* base = #ResearchStudy
* type = #number
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstand').value"

Instance: ResearchStudy-rekrutierungsziel
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsziel"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Rekrutierungsziel"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsziel"
* experimental = false
* code = #rekrutierungsziel
* base = #ResearchStudy
* type = #number
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsziel').value"

Instance: ResearchStudy-rekrutierungsstart
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstart"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Rekrutierungsstart"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstart"
* experimental = false
* code = #rekrutierungsstart
* base = #ResearchStudy
* type = #date
* expression = "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstart').value"

Instance: mii-exa-studie-studie
InstanceOf: MII_PR_Studie_Studie
Usage: #example
* status = #active
* title = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* identifier.value = "DRKS00031294"
* identifier.system = "https://example.com/fhir/sid/drks"
* description = "Diese Studie untersucht den Einfluss repetitiver anodaler Gleichstromstimulation des linken dorsolateralen präfrontalen Kortex (dlPFC ) auf subjektive und objektive Kennwerte und assoziierte EEG-Parameter der Fatigue bei Long-COVID Patient*innen. Die Studie ist sham-kontrolliert und doppelt-verblindet."
* extension[OeffentlicherTitel].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[WissenschaftlicherTitel].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[Akronym].valueString = "tDCS"
* extension[Randomisierungsmethode].valueString = "Zufallszuteilung"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2023-01-12"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 40
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 35
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "good"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2023-02-17"
* extension[Finanzierung].valueString = "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
* extension[Ethikvotum].extension[status].valueString = "Zustimmende Bewertung"
* extension[Ethikvotum].extension[kommission].valueString = "Ethik-Kommission der Otto-von-Guericke-Universität an der Medizinischen Fakultät und am Universitätsklinikum Magdeburg A.ö.R."
* extension[Ethikvotum].extension[ethiknummer].valueString = "Az.: 83/18"
* category = #interventional
* arm
  * name = "frontale anodale tDCS  (verum condition)"
  * description = "vier Stimulationen, jeweils 30 Minuten, 1.5mA über dem linken dlPFC"
* arm[+]
  * name = "frontale sham tDCS"
  * description = "vier Stimulationen, jeweils 30 Minuten"
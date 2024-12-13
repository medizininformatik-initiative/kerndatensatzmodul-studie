Profile: MII_PR_Studie_Studie
Title: "MII PR Studie Studie"
Parent: ResearchStudy
Id: mii-pr-studie-studie
Description: "Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative."
* insert Translation(^title, de-DE, MII PR Studie Studie)
* insert Translation(^title, en-US, MII PR Study Study)
* insert Translation(^description, de-DE, Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative.)
* insert Translation(^description, en-US, This profile describes a study within the Medical Informatics Initiative.)
* insert addMetadata
* insert PR_CS_VS_Version
* insert Publisher
* status MS
* status ^short = "aktiv | administrativ abgeschlossen | genehmigt | für Rekrutierung geschlossen | für Rekrutierung und Intervention geschlossen | abgeschlossen | abgelehnt | in Überprüfung | vorübergehend für Rekrutierung geschlossen | vorübergehend für Rekrutierung und Intervention geschlossen | zurückgezogen"
* insert Translation(status ^short, de-DE, aktiv | administrativ abgeschlossen | genehmigt | für Rekrutierung geschlossen | für Rekrutierung und Intervention geschlossen | abgeschlossen | abgelehnt | in Überprüfung | vorübergehend für Rekrutierung geschlossen | vorübergehend für Rekrutierung und Intervention geschlossen | zurückgezogen)
* insert Translation(status ^short, en-US, active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawn)
* status ^definition = "Der aktuelle Status der Studie."
* insert Translation(status ^definition, de-DE, Der aktuelle Status der Studie.)
* insert Translation(status ^definition, en-US, The current state of the study.)
* title MS
* title ^short = "Name für diese Studie"
* insert Translation(title ^short, de-DE, Name für diese Studie.)
* insert Translation(title ^short, en-US, Name for this study.)
* title ^definition = "Ein kurzer, beschreibender und benutzerfreundlicher Bezeichner für die Studie."
* insert Translation(title ^definition, de-DE, Ein kurzer\, beschreibender und benutzerfreundlicher Bezeichner für die Studie.)
* insert Translation(title ^definition, en-US, A short\, descriptive user-friendly label for the study.)
* identifier MS
* identifier ^short = "Name für diese Studie"
* insert Translation(identifier ^short, de-DE, Name für diese Studie.)
* insert Translation(identifier ^short, en-US, Business Identifier for study.)
* identifier ^definition = "Kennungen, die dieser Forschungsstudie vom Sponsor oder anderen Systemen zugewiesen wurden."
* insert Translation(identifier ^definition, de-DE, Kennungen\, die dieser Forschungsstudie vom Sponsor oder anderen Systemen zugewiesen wurden.)
* insert Translation(identifier ^definition, en-US, Identifiers assigned to this research study by the sponsor or other systems.)
* identifier.value MS
* identifier.system MS
* partOf MS
* partOf ^short = "Teil einer größeren Studie."
* insert Translation(partOf ^short, de-DE, Teil einer größeren Studie.)
* insert Translation(partOf ^short, en-US, Part of larger study.)
* partOf ^definition = "Eine größere Forschungsstudie, von der diese spezielle Studie ein Bestandteil oder ein Schritt ist."
* insert Translation(partOf ^definition, de-DE, Eine größere Forschungsstudie\, von der diese spezielle Studie ein Bestandteil oder ein Schritt ist.)
* insert Translation(partOf ^definition, en-US, A larger research study of which this particular study is a component or step.)
* extension MS
* extension contains MII_EX_Studie_Backport_Label named Label 0..* MS
* extension[MII_EX_Studie_Backport_Label] ^short = "Label"
* insert Translation(extension[MII_EX_Studie_Backport_Label] ^short, de-DE, MII EX Studie Backport Label)
* insert Translation(extension[MII_EX_Studie_Backport_Label] ^short, en-US, MII EX Studie Backport Label)
* extension[MII_EX_Studie_Backport_Label] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Backport_Label] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Backport_Label] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Backport_AssociatedParty named AssociatedParty 0..* MS
* extension[MII_EX_Studie_Backport_AssociatedParty] ^short = "AssociatedParty"
* insert Translation(extension[MII_EX_Studie_Backport_AssociatedParty] ^short, de-DE, MII EX Studie Backport AssociatedParty)
* insert Translation(extension[MII_EX_Studie_Backport_AssociatedParty] ^short, en-US, MII EX Studie Backport AssociatedParty)
* extension[MII_EX_Studie_Backport_AssociatedParty] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Backport_AssociatedParty] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Backport_AssociatedParty] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Ethikvotum named Ethikvotum 0..* MS
* extension[MII_EX_Studie_Ethikvotum] ^short = "Ethikvotum"
* insert Translation(extension[MII_EX_Studie_Ethikvotum] ^short, de-DE, MII EX Studie Ethikvotum)
* insert Translation(extension[MII_EX_Studie_Ethikvotum] ^short, en-US, MII EX Studie Ethikvotum)
* extension[MII_EX_Studie_Ethikvotum] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Ethikvotum] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Ethikvotum] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Studienregister named Studienregister 0..* MS
* extension[MII_EX_Studie_Studienregister] ^short = "Studienregister"
* insert Translation(extension[MII_EX_Studie_Studienregister] ^short, de-DE, MII EX Studie Studienregister)
* insert Translation(extension[MII_EX_Studie_Studienregister] ^short, en-US, MII EX Studie Studienregister)
* extension[MII_EX_Studie_Studienregister] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Studienregister] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Studienregister] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Eligibility named Eligibility 0..1 MS
* extension[MII_EX_Studie_Eligibility] ^short = "Eligibility"
* insert Translation(extension[MII_EX_Studie_Eligibility] ^short, de-DE, MII EX Studie Eligibility)
* insert Translation(extension[MII_EX_Studie_Eligibility] ^short, en-US, MII EX Studie Eligibility)
* extension[MII_EX_Studie_Eligibility] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Eligibility] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Eligibility] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Akronym named Akronym 0..1 MS
* extension[MII_EX_Studie_Akronym] ^short = "Akronym"
* insert Translation(extension[MII_EX_Studie_Akronym] ^short, de-DE, MII EX Studie Akronym)
* insert Translation(extension[MII_EX_Studie_Akronym] ^short, en-US, MII EX Studie Akronym)
* extension[MII_EX_Studie_Akronym] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Akronym] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Akronym] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Rekrutierung named Rekrutierung 0..1 MS
* extension[MII_EX_Studie_Rekrutierung] ^short = "Rekrutierung"
* insert Translation(extension[MII_EX_Studie_Rekrutierung] ^short, de-DE, MII EX Studie Rekrutierung)
* insert Translation(extension[MII_EX_Studie_Rekrutierung] ^short, en-US, MII EX Studie Rekrutierung)
* extension[MII_EX_Studie_Rekrutierung] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Rekrutierung] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Rekrutierung] ^definition, en-US, Optional Extension Element - found in all resources.)
* extension contains MII_EX_Studie_Finanzierung named Finanzierung 0..* MS
* extension[MII_EX_Studie_Finanzierung] ^short = "Finanzierung"
* insert Translation(extension[MII_EX_Studie_Finanzierung] ^short, de-DE, MII EX Studie Finanzierung)
* insert Translation(extension[MII_EX_Studie_Finanzierung] ^short, en-US, MII EX Studie Finanzierung)
* extension[MII_EX_Studie_Finanzierung] ^definition = "Optionales Erweiterungselement – in allen Ressourcen vorhanden."
* insert Translation(extension[MII_EX_Studie_Finanzierung] ^definition, de-DE, Optionales Erweiterungselement – in allen Ressourcen vorhanden.)
* insert Translation(extension[MII_EX_Studie_Finanzierung] ^definition, en-US, Optional Extension Element - found in all resources.)
* arm MS
* arm ^short = "Definierter Weg durch die Studie für ein Subjekt."
* insert Translation(arm ^short, de-DE, Definierter Weg durch die Studie für ein Subjekt.)
* insert Translation(arm ^short, en-US, Defined path through the study for a subject.)
* arm ^definition = "Beschreibt eine erwartete Abfolge von Ereignissen für einen der Teilnehmer einer Studie. Z. B. Exposition gegenüber Medikament A, Auswaschphase, Exposition gegenüber Medikament B, Auswaschphase, Nachverfolgung."
* insert Translation(arm ^definition, de-DE, Beschreibt eine erwartete Abfolge von Ereignissen für einen der Teilnehmer einer Studie. Z. B. Exposition gegenüber Medikament A\, Auswaschphase\, Exposition gegenüber Medikament B\, Auswaschphase\, Nachverfolgung.)
* insert Translation(arm ^definition, en-US, Describes an expected sequence of events for one of the participants of a study. E.g. Exposure to drug A\, wash-out\, exposure to drug B\, wash-out\, follow-up.)
* arm.name MS
* category MS
* category ^short = "Klassifikationen für die Studie."
* insert Translation(category ^short, de-DE, Klassifikationen für die Studie.)
* insert Translation(category ^short, en-US, Classifications for the study.)
* category ^definition = "Codes zur Kategorisierung des Studientyps, wie z. B. experimentell vs. beobachtend, Art der Verblindung, Art der Randomisierung, Sicherheit vs. Wirksamkeit usw."
* insert Translation(category ^definition, de-DE, Codes zur Kategorisierung des Studientyps\, wie z. B. experimentell vs. beobachtend\, Art der Verblindung\, Art der Randomisierung\, Sicherheit vs. Wirksamkeit usw.)
* insert Translation(category ^definition, en-US, Codes categorizing the type of study such as investigational vs. observational\, type of blinding\, type of randomization\, safety vs. efficacy\, etc.)
* focus MS
* focus ^short = "Untersuchte Medikamente, Geräte usw."
* insert Translation(focus ^short, de-DE, Untersuchte Medikamente\, Geräte usw.)
* insert Translation(focus ^short, en-US, Drugs\, devices\, etc. under study)
* focus ^definition = "Die Medikamente, Nahrungsmittel, Therapien, Geräte oder andere Anliegen oder Interventionen, über die die Studie mehr Informationen gewinnen möchte."
* insert Translation(focus ^definition, de-DE, Die Medikamente\, Nahrungsmittel\, Therapien\, Geräte oder andere Anliegen oder Interventionen\, über die die Studie mehr Informationen gewinnen möchte.)
* insert Translation(focus ^definition, en-US, The medication\, food\, therapy\, device or other concerns or interventions that the study is seeking to gain more information about.)
* focus.text MS
* keyword MS
* keyword ^short = "Wird verwendet, um nach der Studie zu suchen."
* insert Translation(keyword ^short, de-DE, Wird verwendet\, um nach der Studie zu suchen.)
* insert Translation(keyword ^short, en-US, Used to search for the study.)
* keyword ^definition = "Schlüsselbegriffe, die bei der Suche nach oder Filterung der Studie helfen."
* insert Translation(keyword ^definition, de-DE, Schlüsselbegriffe\, die bei der Suche nach oder Filterung der Studie helfen.)
* insert Translation(keyword ^definition, en-US, Key terms to aid in searching for or filtering the study.)
* keyword.text MS

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

Extension: MII_EX_Studie_Backport_AssociatedParty
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

Extension: MII_EX_Studie_Backport_Label
Id: mii-ex-studie-backport-label
Title: "MII EX Studie Backport Label"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
* extension contains type 0..1 and value 1..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from http://hl7.org/fhir/ValueSet/title-type (extensible)
* extension[value].value[x] only string

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

Instance: ResearchStudy-label
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-label"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Label"
* status = #active
* description = "Suchparameter für ResearchStudy.extension:label"
* experimental = false
* code = #label
* base = #ResearchStudy
* type = #string
* expression = "ResearchStudy.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label').extension.where(url='value').value"

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
* extension[Label].extension[value].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[Label].extension[type].valueCodeableConcept = http://hl7.org/fhir/title-type#scientific
* extension[Label][+].extension[value].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[Label][=].extension[type].valueCodeableConcept.text = "Öffentlicher Titel"
* extension[Akronym].valueString = "tDCS"
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
* category[+].text = "Zufallszuteilung"
* arm
  * name = "frontale anodale tDCS  (verum condition)"
  * description = "vier Stimulationen, jeweils 30 Minuten, 1.5mA über dem linken dlPFC"
* arm[+]
  * name = "frontale sham tDCS"
  * description = "vier Stimulationen, jeweils 30 Minuten"

Instance: mii-exa-studie-cohort
InstanceOf: MII_PR_Studie_Studie
Usage: #example
* status = #active
* title = "LIFE-Adult-Study"
* identifier.value = "7Q6PJD8NV3-2"
* identifier.system = "https://example.com/fhir/sid/lha"
* description = "Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden."
* extension[Akronym].valueString = "LIFE ADULT"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2009-01-01"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "good"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2022-05-28"

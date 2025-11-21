Profile: MII_PR_Studie_Register
Title: "MII PR Studie Register"
Parent: Library
Id: mii-pr-studie-register
Description: "Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative."
* insert Translation(^title, de-DE, MII PR Studie Regiester)
* insert Translation(^title, en-US, MII PR Study Registry)
* insert Translation(^description, de-DE, Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative.)
* insert Translation(^description, en-US, This profile describes a research registry within the Medical Informatics Initiative.)
* insert PR_CS_VS_Version
* insert Publisher
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* type MS
* type ^short = "Type"
* insert Translation(type ^short, de-DE, Logikbibliothek| Modelldefinition | Asset-Sammlung | Moduldefinition)
* insert Translation(type ^short, en-US, logic-library | model-definition | asset-collection | module-definition)
* type ^definition = "dentifiziert den Typ der Bibliothek, wie z. B. eine Logikbibliothek, Modelldefinition, Asset-Sammlung oder Moduldefinition."
* insert Translation(type ^definition, de-DE, Identifiziert den Typ der Bibliothek\, wie z. B. eine Logikbibliothek\, Modelldefinition\, Asset-Sammlung oder Moduldefinition.)
* insert Translation(type ^definition, en-US, Identifies the type of library such as a Logic Library\, Model Definition\, Asset Collection\, or Module Definition.)
* name MS
* name ^short = "Name"
* insert Translation(name ^short, de-DE, Name für diese Bibliothek - computerfreundlich)
* insert Translation(name ^short, en-US, Name for this library - computer friendly)
* name ^definition = "Ein Name in natürlicher Sprache, der die Bibliothek identifiziert. Dieser Name sollte als Bezeichner für das Modul in maschinellen Verarbeitungsanwendungen wie Codegenerierung verwendbar sein."
* insert Translation(name ^definition, de-DE, Ein Name in natürlicher Sprache\, der die Bibliothek identifiziert. Dieser Name sollte als Bezeichner für das Modul in maschinellen Verarbeitungsanwendungen wie Codegenerierung verwendbar sein.)
* insert Translation(name ^definition, en-US, A natural language name identifying the library. This name should be usable as an identifier for the module by machine processing applications such as code generation.)
* identifier MS
* identifier ^short = "Identifier"
* insert Translation(identifier ^short, de-DE, Zusätzlicher Bezeichner für die Bibliothek.)
* insert Translation(identifier ^short, en-US, Additional identifier for the library)
* identifier ^definition = "Ein formaler Bezeichner, der verwendet wird, um diese Bibliothek zu identifizieren, wenn sie in anderen Formaten dargestellt oder in einer Spezifikation, einem Modell, einem Design oder einer Instanz referenziert wird, z. B. CMS- oder NQF-Bezeichner für ein Maßnahme-Artefakt. Es ist zu beachten, dass mindestens ein Bezeichner für nicht-experimentelle, aktive Artefakte erforderlich ist."
* insert Translation(identifier ^definition, de-DE, Ein formaler Bezeichner\, der verwendet wird\, um diese Bibliothek zu identifizieren\, wenn sie in anderen Formaten dargestellt oder in einer Spezifikation\, einem Modell\, einem Design oder einer Instanz referenziert wird\, z. B. CMS- oder NQF-Bezeichner für ein Maßnahme-Artefakt. Es ist zu beachten\, dass mindestens ein Bezeichner für nicht-experimentelle\, aktive Artefakte erforderlich ist.)
* insert Translation(identifier ^definition, en-US, A formal identifier that is used to identify this library when it is represented in other formats\, or referenced in a specification\, model\, design or an instance. e.g. CMS or NQF identifiers for a measure artifact. Note that at least one identifier is required for non-experimental active artifacts.)
* identifier.value 1..1 MS
* identifier.system 1..1 MS
* relatedArtifact MS
* relatedArtifact ^short = "RelatedArtifact"
* insert Translation(relatedArtifact ^short, de-DE, Zusätzliche Dokumentation\, Zitate\, usw.)
* insert Translation(relatedArtifact ^short, en-US, Additional documentation\, citations\, etc.)
* relatedArtifact ^definition = "Zugehörige Artefakte wie zusätzliche Dokumentation, Begründungen oder bibliografische Referenzen."
* insert Translation(relatedArtifact ^definition, de-DE, Zugehörige Artefakte wie zusätzliche Dokumentation\, Begründungen oder bibliografische Referenzen.)
* insert Translation(relatedArtifact ^definition, en-US, Related artifacts such as additional documentation\, justification\, or bibliographic references.)
* relatedArtifact.document 1..1 MS
* relatedArtifact.document.url 1..1 MS
* extension contains mii-ex-studie-quell-register named quellRegister 0..1

Extension: MII_EX_Studie_Quell_Register
Id: mii-ex-studie-quell-register
Title: "MII EX Studie Quell Register"
* insert PR_CS_VS_Version
* insert Publisher
* value[x] only boolean

Instance: mii-exa-studie-register
InstanceOf: MII_PR_Studie_Register
Usage: #example
* status = #active
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "https://example.com/fhir/sid/drks"
* relatedArtifact.document.url = "https://drks.de/"
* relatedArtifact.type = #documentation

Instance: Library-quellregister
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-quellregister"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Quellregister"
* status = #active
* description = "Suchparameter für Library.extension:QuellRegister"
* experimental = false
* code = #quellregister
* base = #Library
* type = #token
* expression = "Library.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register').value"

Instance: Library-relatedArtifactUrl
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-relatedArtifactUrl"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_RelatedArtifactUrl"
* status = #active
* description = "Suchparameter für Library.relatedArtifact.document.url"
* experimental = false
* code = #relatedArtifactUrl
* base = #Library
* type = #uri
* expression = "Library.relatedArtifact.document.url"
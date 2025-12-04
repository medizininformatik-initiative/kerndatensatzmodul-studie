## Studie (ResearchStudy)

---

**Beschreibung**

Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| ResearchStudy.id      | Must-support, jedoch optional        |
| ResearchStudy.meta       | Must-support, jedoch optional         |
| ResearchStudy.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. In allen anderen Fällen optional.         |
| ResearchStudy.identifier | In den meisten Fällen wird kein NamingSystem für die Vergabe der BusinessIDs geben. Ein eigenes lokales NamingSystem sollte daher verwendet werden. |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit      | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |
| ResearchStudy.extension:Randomisierungsmethode      | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |
| ResearchStudy.extension:associatedParty | Diese Extension kann verwendet werden, falls mehr Kontaktpersonen zu der Studie angegeben werden sollen, als die Kardinalität von ResearchStudy.principalInvestigator oder ResearchStudy.sponsor dies erlaubt. |
| ResearchStudy.category    | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |

---

**NamingSystems**

Für folgende Studienregister werden bereits Preferred URLs für die dazugehörigen NamingSystems definiert:

| Register | URL |
|----------|-----|
| clinicaltrials.gov | https://clinicaltrials.gov |
| Deutsches Register Klinischer Studien (DRKS) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks |
| Universal Trial Number (UTN) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/utn |
| EudraCT | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.title |  Forschungsvorhaben.Titel  |
| ResearchStudy.focus |  Forschungsvorhaben.Studienfokus |
| ResearchStudy.keyword |  Forschungsvorhaben.Schlagwort |
| ResearchStudy.extension:OeffentlicherTitel |  Forschungsvorhaben.Titel.OeffentlicherTitel |
| ResearchStudy.extension:WissenschaftlicherTitel |  Forschungsvorhaben.Titel.WissenschaftlicherTitel |
| ResearchStudy.extension:Akronym |  Forschungsvorhaben.Titel.Akronym |
| ResearchStudy.extension:Rekrutierungsstart |  Forschungsvorhaben.Studiendesign.Rekrutierungsstart |
| ResearchStudy.arm.name |  Forschungsvorhaben.Studiendesign.Studienarm.Name |
| ResearchStudy.category |  Forschungsvorhaben.Studiendesign.Studientyp |
| ResearchStudy.extension:Rekrutierungsziel |  Forschungsvorhaben.Studiendesign.Rekrutierungsziel |
| ResearchStudy.extension:Rekrutierungsstand |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandGenauigkeit |
| ResearchStudy.extension:RekrutierungsstandDatum |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandDatum |
| ResearchStudy.category |  Forschungsvorhaben.Studiendesign.Randomisierungsmethode |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.extension:finanzierung |  Forschungsvorhaben.Finanzierung |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.identifier.value |  Forschungsvorhaben.BusinessID.id |
| ResearchStudy.identifier.system |  Forschungsvorhaben.BusinessID.System |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?identifier=DRKS00031294```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "title" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?title=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.title" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "partOf" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?partOf=ResearchStudy/researchstudy-test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?category=interventional```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "armName" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?armName=frontale anodale tDCS  (verum condition)```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.arm.name" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?category=Long-COVID bedingter Fatigue```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Studienfokus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "keyword" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?keyword=COVID```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Schlagwort" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "label" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?label=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "studienregister" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?studienregister=Library/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Studienregister" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).      

1. Der Suchparameter "rekrutierungsstand-datum" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstand-datum=2023-02-17```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-datum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "rekrutierungsstand-genauigkeit" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstand-genauigkeit=good```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string). 

1. Der Suchparameter "rekrutierungsstand-rekrutierungsstand" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstand=35```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand" finden sich in der [FHIR-Basisspezifikation - Abschnitt "number"](http://hl7.org/fhir/R4/search.html#number).

1. Der Suchparameter "rekrutierungsstand-rekrutierungsziel" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsziel=40```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsziel" finden sich in der [FHIR-Basisspezifikation - Abschnitt "number"](http://hl7.org/fhir/R4/search.html#number).

1. Der Suchparameter "rekrutierungsstand-rekrutierungsstart" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstart=2023-01-12```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstart" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).            

---

**Beispiele**

Siehe Beispiel (minimal):

{{json:fsh-generated/resources/ResearchStudy-mii-exa-studie-studie.json}}

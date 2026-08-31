## Study (ResearchStudy)

---

**Description**

This profile describes a study in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie, diff}}

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| ResearchStudy.id      | Must-support, but optional        |
| ResearchStudy.meta       | Must-support, but optional         |
| ResearchStudy.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. Optional in all other cases.         |
| ResearchStudy.identifier | In most cases, there will be no NamingSystem for assigning the business IDs. A local NamingSystem of your own should therefore be used. |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit      | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| ResearchStudy.extension:Randomisierungsmethode      | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| ResearchStudy.extension:associatedParty | This extension can be used if more contact persons need to be specified for the study than the cardinality of ResearchStudy.principalInvestigator or ResearchStudy.sponsor allows. |
| ResearchStudy.category    | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |

---

**NamingSystems**

Preferred URLs for the associated NamingSystems have already been defined for the following study registries:

| Registry | URL |
|----------|-----|
| clinicaltrials.gov | https://clinicaltrials.gov |
| German Clinical Trials Register (DRKS) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks |
| Universal Trial Number (UTN) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/utn |
| EudraCT | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract |

---

**Mapping**

| FHIR Element | Logical Data Set |
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

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.extension:finanzierung |  Forschungsvorhaben.Finanzierung |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.identifier.value |  Forschungsvorhaben.BusinessID.id |
| ResearchStudy.identifier.system |  Forschungsvorhaben.BusinessID.System |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Study module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ResearchStudy?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "identifier" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?identifier=DRKS00031294```

    Usage notes: Further information on searching for "ResearchStudy.identifier" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "title" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?title=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Usage notes: Further information on searching for "ResearchStudy.title" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

5. The search parameter "status" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?status=active```

    Usage notes: Further information on searching for "ResearchStudy.status" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "partOf" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?partOf=ResearchStudy/researchstudy-test```

    Usage notes: Further information on searching for "ResearchStudy.partOf" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "category" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?category=interventional```

    Usage notes: Further information on searching for "ResearchStudy.category" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

8. The search parameter "armName" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?armName=frontale anodale tDCS  (verum condition)```

    Usage notes: Further information on searching for "ResearchStudy.arm.name" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

9. The search parameter "category" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?category=Long-COVID bedingter Fatigue```

    Usage notes: Further information on searching for "ResearchStudy.extension:Studienfokus" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

10. The search parameter "keyword" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?keyword=COVID```

    Usage notes: Further information on searching for "ResearchStudy.extension:Schlagwort" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

11. The search parameter "label" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?label=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Usage notes: Further information on searching for "ResearchStudy.extension:Label" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

12. The search parameter "studienregister" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?studienregister=Library/example```

    Usage notes: Further information on searching for "ResearchStudy.extension:Studienregister" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).      

13. The search parameter "rekrutierungsstand-datum" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstand-datum=2023-02-17```

    Usage notes: Further information on searching for "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-datum" can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#date).

14. The search parameter "rekrutierungsstand-genauigkeit" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstand-genauigkeit=good```

    Usage notes: Further information on searching for "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string). 

15. The search parameter "rekrutierungsstand-rekrutierungsstand" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstand=35```

    Usage notes: Further information on searching for "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand" can be found in the [FHIR base specification - section "number"](http://hl7.org/fhir/R4/search.html#number).

16. The search parameter "rekrutierungsstand-rekrutierungsziel" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsziel=40```

    Usage notes: Further information on searching for "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsziel" can be found in the [FHIR base specification - section "number"](http://hl7.org/fhir/R4/search.html#number).

17. The search parameter "rekrutierungsstand-rekrutierungsstart" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstart=2023-01-12```

    Usage notes: Further information on searching for "ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstart" can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#date).            

---

**Examples**

See example (minimal):

{{json:fsh-generated/resources/ResearchStudy-mii-exa-studie-studie.json}}

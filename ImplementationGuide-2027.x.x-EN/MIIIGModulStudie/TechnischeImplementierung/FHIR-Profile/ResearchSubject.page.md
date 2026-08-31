## Subject (ResearchSubject)

---

**Description**

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband' select Name: name, Canonical: url
```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband, diff}}

---

This profile describes a subject in the Medical Informatics Initiative.

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| ResearchSubject.id      | Must-support, but optional        |
| ResearchSubject.meta       | Must-support, but optional         |
| ResearchSubject.meta.profile       | MANDATORY for querying in the DIC repository, including the version number of the profile. See {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. Optional in all other cases.         |
| Patient.identifier:subjectIdentificationCode      | Fixed NamingSystem for the uniform, cross-site querying of the identifier (for analyses)         |
| ResearchSubject.period.start      | Start date (inclusion of the patient in the study)      |
| ResearchSubject.period.end      | End date (completion of the study or exclusion of the patient)       |
| ResearchSubject.study      | Reference to the metadata of the study in which the patient is participating. |
| ResearchSubject.individual      | Every subject MUST be assigned to a patient. |
| ResearchSubject.consent      | Consent to the study or a regulatory basis MUST be present. Further requirements for the modeling of the consent may arise from other modules. |

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|-----------|
| ResearchSubject.identifier:subjectIdentificationCode       | Person.Studienteilnehmer.SubjektIdentifizierungscode         |
| ResearchSubject.status       | Person.Studienteilnehmer.StatusDerTeilnahme         |
| ResearchSubject.period.start       | Person.Studienteilnehmer.BeginnTeilnahme         |
| ResearchSubject.period.end       | Person.Studienteilnehmer.EndeTeilnahme         |
| ResearchSubject.consent       | Person.Studienteilnehmer.Rechtsgrundlage        |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Medical Research Project module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?identifier=http://fhir.krankenhaus.example/sid/subjectIdentificationCode|1032702```

    Usage notes: Further information on searching for "ResearchSubject.identifier" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?status=candidate```

    Usage notes: Further information on searching for "ResearchSubject.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).


5. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?date=2022-01-01```

    Usage notes: Further information on searching for "ResearchSubject.period" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

6. The search parameter "study" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?study=ResearchStudy/study```

    Usage notes: Further information on searching for "ResearchStudy.study" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "individual" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?individual=Patient/test```

    Usage notes: Further information on searching for "ResearchStudy.individual" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "consent" MUST be supported:

    Examples:

    ```GET [base]/ResearchSubject?consent=Consent/test```

    Usage notes: Further information on searching for "ResearchStudy.consent" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Examples**

See example (minimal):

{{json:fsh-generated/resources/ResearchSubject-mii-exa-studie-proband.json}}

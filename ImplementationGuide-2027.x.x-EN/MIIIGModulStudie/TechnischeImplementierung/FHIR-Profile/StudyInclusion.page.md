## Study Inclusion Recommendations (StudyInclusion)

---

**Description**

This profile describes the study inclusion recommendations in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage, diff}}

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Study module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples

    ```GET [base]/ServiceRequest?status=active```

    Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "intent" MUST be supported:

    Examples

    ```GET [base]/ServiceRequest?status=proposal```

    Usage notes: Further information on searching for "intent" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

5. The search parameter "category" MUST be supported:

    Examples

    ```GET [base]/ServiceRequest?category=110465008```

    Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "code" MUST be supported:

    Examples

    ```GET [base]/ServiceRequest?code=02475000```

    Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#token).

7. The search parameter "supporting-info" MUST be supported:

    Examples

    ```GET [base]/ServiceRequest?supporting-info=ResearchStudy/example```

    Usage notes: Further information on searching for "supporting-info" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#reference).         

---

**Examples**

See example (minimal):

{{json:fsh-generated/resources/ServiceRequest-mii-exa-studie-studieneinschluss-anfrage.json}}

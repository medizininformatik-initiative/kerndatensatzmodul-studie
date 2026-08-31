## Involved Person (PractitionerRole)

---

**Description**

This profile describes an involved person within a study in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person, diff}}

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| PractitionerRole.id      | Must-support, but optional        |
| PractitionerRole.meta       | Must-support, but optional         |
| PractitionerRole.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. Optional in all other cases.         |
| PractitionerRole.code      | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| PractitionerRole.telecom      | Care must be taken to ensure that only information already published by the study itself is exposed here |
| PractitionerRole.organization | To find all persons associated with a study, the use of Reference.reference is preferred over Reference.identifier.|

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| PractitionerRole.code |  Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.telecom |  Forschungsvorhaben.Beteiligter.Kontakt |
| PractitionerRole.organization |  Forschungsvorhaben.Beteiligter.Standort |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| PractitionerRole.code |  Forschungsvorhaben.Studienleiter |
| PractitionerRole.telecom |  Forschungsvorhaben.Studienleiter.Kontakt |
| PractitionerRole.organization |  Forschungsvorhaben.Studienleiter.Standort |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Study module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/PractitionerRole?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/PractitionerRole?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "practitioner" MUST be supported:

    Examples

    ```GET [base]/PractitionerRole?practitioner=Practitioner/practitioner-test```

    Usage notes: Further information on searching for "PractitionerRole.practitioner" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "organization" MUST be supported:

    Examples

    ```GET [base]/PractitionerRole?organization=Organization/organization-test```

    Usage notes: Further information on searching for "PractitionerRole.organization" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "role" MUST be supported:

    Examples

    ```GET [base]/PractitionerRole?role=http://example.org/fhir/CodeSystem/RolleBeteiligtePerson|studienleiter```

    Usage notes: Further information on searching for "PractitionerRole.code" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "telecom" MUST be supported:

    Examples

    ```GET [base]/PractitionerRole?telecom=phone|+4915232584956```

    Usage notes: Further information on searching for "PractitionerRole.telecom" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#token).

---

**Examples**

Example (minimal):

{{json:fsh-generated/resources/PractitionerRole-mii-exa-studie-beteiligte-person.json}}
## Inclusion and Exclusion Criterion (EvidenceVariable)

---

**Description**

This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium, diff}}

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| EvidenceVariable.id      | Must-support, but optional        |
| EvidenceVariable.meta       | Must-support, but optional         |
| EvidenceVariable.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. Optional in all other cases.         |
|EvidenceVariable.characteristic.description|Textual description of the criterion|
|EvidenceVariable.characteristic.definition[x]| In the associated backport extensions from FHIR R5, more data types are permitted than in FHIR R4. If, for example, the extension definitionByCombination or definitionByTypeAndValue is used, definitionCodeableConcept must be populated with the Data-Absent-Reason code "unknown" so that the cardinality of 1..1 remains fulfilled.|
|EvidenceVariable.characteristic.exclude|Boolean element that defines whether this is an inclusion or exclusion criterion|

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
|EvidenceVariable.characteristic.description|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Kriterium|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Operator|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Masseinheit|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Wert|
|EvidenceVariable.characteristic.description|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Kriterium|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Operator|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Masseinheit|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Wert|

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Study module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ResearchStudy?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?status=active```

    Usage notes: Further information on searching for "EvidenceVariable.status" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "characteristicDescription" MUST be supported:

    Examples

    ```GET [base]/EvidenceVariable?characteristicDescription=Höchstalter```

    Usage notes: Further information on searching for "EvidenceVariable.characteristic.description" can be found in the [FHIR base specification - section "string"](http://hl7.org/fhir/R4/search.html#string).

---

**Examples**

Example (minimal):

{{json:fsh-generated/resources/EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.json}}
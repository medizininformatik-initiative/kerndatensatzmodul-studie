<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/EvidenceVariable.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Inclusion and Exclusion Criterion (EvidenceVariable)

---

**Description**

This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative.



---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| EvidenceVariable.id      | Must-support, but optional        |
| EvidenceVariable.meta       | Must-support, but optional         |
| EvidenceVariable.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
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

**Examples**

Example (minimal):

[EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.html)

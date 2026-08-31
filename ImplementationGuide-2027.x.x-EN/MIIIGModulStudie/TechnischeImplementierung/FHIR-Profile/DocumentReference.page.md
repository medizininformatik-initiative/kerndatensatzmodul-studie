## Document (DocumentReference)

---

**Description**

This profile describes a document / publication in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument, diff}}

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| DocumentReference.id      | Must-support, but optional        |
| DocumentReference.meta       | Must-support, but optional         |
| DocumentReference.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. Optional in all other cases.         |
| DocumentReference.content.attachment.url | This absolute URL should point to a Binary endpoint of a FHIR server. The notes in the FHIR core specification on [retrieving Binary resources](https://www.hl7.org/fhir/r4/binary.html#rest) must be observed. |
| DocumentReference.content.attachment.title       | The title should contain a meaningful, human-readable description; the element should not be used for the file name. |
| DocumentReference.custodian     | If the site is not available as an Organization resource, Reference.display or Reference.identifier may also be used if applicable. |
| DocumentReference.author     | If the author is not available as a Practitioner resource, Reference.display or Reference.identifier may also be used if applicable. |
|DocumentReference.context.related|Specification of the study context|

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Publikation.url |
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Publikation.Titel |
| DocumentReference.author |  Forschungsvorhaben.Publikation.Autor |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Name |
| DocumentReference.author |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Autor |
| DocumentReference.content.attachment.contentType |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateityp |
| DocumentReference.custodian |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Standort |
| DocumentReference.content.attachment.size |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateigroesse |
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Datennutzungsantrag.Dokument.url |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Study module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "author" MUST be supported:

    Examples

    ```GET [base]/DocumentReference?author=Practitioner/practitioner-test```

    Usage notes: Further information on searching for "DocumentReference.author" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).


4. The search parameter "custodian" MUST be supported:

    Examples

    ```GET [base]/DocumentReference?custodian=Organization/organization-test```

    Usage notes: Further information on searching for "DocumentReference.custodian" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "status" MUST be supported:

    Examples

    ```GET [base]/DocumentReference?status=current```

    Usage notes: Further information on searching for "PractitionerRole.status" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "location" MUST be supported:

    Examples

    ```GET [base]/DocumentReference?location=https://example.com/fhir/Binary/document```

    Usage notes: Further information on searching for "DocumentReference.content.attachment.url" can be found in the [FHIR base specification - section "uri"](https://www.hl7.org/fhir/r4/search.html#uri).

7. The search parameter "contenttype" MUST be supported:

    Examples

    ```GET [base]/DocumentReference?contenttype=application/pdf```

    Usage notes: Further information on searching for "DocumentReference.content.attachment.contentType" can be found in the [FHIR base specification - section "token"](https://www.hl7.org/fhir/r4/search.html#token).

8. The search parameter "title" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?title=Beispiel Dokument```

    Usage notes: Further information on searching for "DocumentReference.content.attachment.title" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

9. The search parameter "size" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?size=1000```

    Usage notes: Further information on searching for "DocumentReference.content.attachment.size" can be found in the [FHIR base specification - section "Number Search"](http://hl7.org/fhir/R4/search.html#number).

10. The search parameter "related" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?related=ResearchStudy/example```

    Usage notes: Further information on searching for "DocumentReference.context.related" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Examples**

Example (minimal):

{{json:fsh-generated/resources/DocumentReference-mii-exa-studie-dokument.json}}
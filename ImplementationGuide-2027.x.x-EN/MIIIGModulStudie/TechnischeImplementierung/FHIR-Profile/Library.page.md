## Registry (Library)

---

**Description**

This profile describes a research registry in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register, diff}}

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| Library.id      | Must-support, but optional        |
| Library.meta       | Must-support, but optional         |
| Library.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. Optional in all other cases.         |
| Library.name | A suitable human-readable name should be used |
| Library.identifier | In most cases, no NamingSystem currently exists for assigning registry IDs. A local NamingSystem of your own should therefore be used. |
| Library.relatedArtifact.document.url | Homepage of the registry or link to further documentation |

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| Library.name |  Forschungsvorhaben.Studienregister.Registername |
| Library.identifier |  Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url |  Forschungsvorhaben.Studienregister.url |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register, snapshot}}

---

**Search Parameters**

The following search parameters are relevant for the Study module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Library?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Library?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "name" MUST be supported:

    Examples:

    ```GET [base]/Library?name=DRKS - Deutsches Register Klinischer Studien```

    Usage notes: Further information on searching for "Library.name" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

4. The search parameter "identifier" MUST be supported:

    Examples

    ```GET [base]/Library?identifier=DRKS```

    Usage notes: Further information on searching for "Library.identifier" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

5. The search parameter "quellregister" MUST be supported:

    Examples

    ```GET [base]/Library?quellregister=true```

    Usage notes: Further information on searching for "Library.extension:QuellRegister" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "type" MUST be supported:

    Examples

    ```GET [base]/Library?type=http://terminology.hl7.org/CodeSystem/library-type|asset-collection```

    Usage notes: Further information on searching for "Library.type" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

7. The search parameter "relatedArtifactUrl" MUST be supported:

    Examples

    ```GET [base]/Library?relatedArtifactUrl=https://drks.de/```

    Usage notes: Further information on searching for "Library.relatedArtifact.document.url" can be found in the [FHIR base specification - section "uri"](http://hl7.org/fhir/R4/search.html#uri).

---

**Examples**

Example (minimal):

{{json:fsh-generated/resources/Library-mii-exa-studie-register.json}}
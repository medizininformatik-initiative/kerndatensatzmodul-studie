<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined search-parameters-and-operations.md per the
     TF-KDS-agreed menu structure (one page per artifact type).
     German mirror: input/translations/de/pagecontent/search-parameters.md. -->


This page lists the module-specific FHIR search parameters of the
**Medizinisches Forschungsvorhaben** module (naming convention `MII_SP_<Module>_<Name>`), where
defined. Cross-module search parameters are defined by the Meta module.

<!-- DERIVED:bridge source=FHIR-Profile/*.page.md gate=B -->
> **Written during migration - review before release.** The sections below are the *search parameter* sections of the eight profile pages of the Simplifier guide, merged per resource type; the profile prose now lives on the artifact pages (intro notes).
{: .ig-highlight .ig-highlight-blue}

#### DocumentReference

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

#### EvidenceVariable

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

#### Library

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

#### PractitionerRole

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

#### ResearchStudy

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

#### ResearchSubject

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

#### ServiceRequest

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

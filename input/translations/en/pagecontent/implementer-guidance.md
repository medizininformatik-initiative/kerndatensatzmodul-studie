<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/implementer-guidance.md.
     German mirror: input/translations/de/pagecontent/implementer-guidance.md. -->

Technical guidance for DIC implementers on implementing the profiles of the **Medizinisches Forschungsvorhaben** module (ETL from primary systems, FHIR API, validation).

<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/KontextimGesamtprojektBezgezuanderenModulen.page.md + ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/Referenzen.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree) -->
### Context in the Overall Project / References to Other Modules

#### Relation to the PERSON Module

A minimal version of the subject was previously represented in the MII PERSON module and has been moved to the Medical Research Project module with this release.

#### Relation to the CONSENT Module
The CONSENT module describes informed consent declarations of informed patients/subjects as well as policies for enforcing graduated usage variants. In this context, reference is made to research projects for which such consent should apply.

#### Relation to the STRUKTURDATEN Module
The STRUKTURDATEN module, which is currently being developed, describes organizational structures, sites, and individual service data of organizational units in the hospitals of the MII. The module itself has no direct relation to research projects, but is used by it. No modeling conflicts are currently foreseeable.

#### Relation to Other Modules
In the module description characterizing the Medical Research Project module (see resolution of the Interoperability Working Group of 17.03.2021), dependencies on/to further modules are mentioned. These relate to possible dependencies in future, content-expanded versions of this module and are not currently addressed:
**1.**	The information model presented here currently does not address the representation of individual clinical parameters, such as those collected in CRF forms.
**2.**	The information model presented here currently does not use extended metadata on provenance or quality.
No further dependencies on other modules are known to the team.

### References

This version was discussed together with representatives of the [German Research Data Portal for Health](https://forschen-fuer-gesundheit.de/ "FDGP") (FDPG).
This draft was discussed together with representatives of the [National Research Data Infrastructure for Personal Health Data](https://www.nfdi4health.de/ "NFDI4Health") (NFDI4Health).
This draft was created together with representatives from other publicly funded networks and industry partners. Attention was paid to the potential conflicts of interest that may arise from this.

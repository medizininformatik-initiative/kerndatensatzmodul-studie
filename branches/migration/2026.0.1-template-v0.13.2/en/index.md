# Home - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/ImplementationGuide/mii-ig-studie | *Version*:2026.0.1 |
| Active as of 2026-01-09 | *Computable Name*:MII_IG_Medizinisches_Forschungsvorhaben |

### Introduction

This specification describes the FHIR representation of the Core Data Set Module Medical Research Project of the Medical Informatics Initiative. In the following, the use case of the module as well as the associated FHIR profiles and terminology resources are described in their binding form.

| | |
| :--- | :--- |
| Date | 2026-01-09 |
| Version | 2026.0.1 (CalVer`YYYY.n.n`) |
| Status | active |
| Realm | DE |

You can find the first release at [2025.0.0](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Medizinische_Forschungsvorhaben_V2025/ImplementationGuide-1.x-TechnischeImplementierung-Organization.html)

### Description Module Medical Research Project

The MII KDS Module Medical Research Project was developed as a module of the [Core Data Set (KDS) of the Medical Informatics Initiative (MII)](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative).

Medical research projects in the context of medical informatics are planned experimental clinical and epidemiological investigations that are usually based on structured data collection of human subjects. They encompass a broad range of different types with varying degrees of regulatory requirements. Explicitly included in this module are:

• **Clinical trials** serve to demonstrate the superiority of new therapies and their safety. They can be either interventional or observational. A common area of application is drug approval studies, for which strict legal requirements exist to protect trial participants. Clinical trials are characterized by comparatively small subject cohorts, a well-defined research question, a specific but manageable data catalog, and a fixed project duration. Many clinical trials divide the study population into different subgroups (arms), which may involve different data collection procedures. Furthermore, clinical trials are often conducted at multiple sites (multicenter). Typical for clinical trials is active data management, but a low degree of standardization of individual data elements between different studies.

• **Registries** serve the longitudinal investigation of defined disease focuses. The legal basis for data collection can vary here. The subject cohort is often larger than in clinical trials and is observed permanently, often intentionally until death. This results in special challenges of tracking subjects (tracking, record linkage). The data catalog is similar in complexity to clinical trials. Registries are usually non-interventional and single-arm. They can be mono- or multicentric. Depending on the resources available, registries have either active or only minimal data management.

• **Cohorts** are investigations of a large number of voluntary subjects intended to represent a representative cross-section of the target population. Cohorts investigate very broad research questions that are not fully defined at the outset. Cohorts are designed for the long term, but differ from registries in that the active investigation phase is often limited to one or a few time points with a very detailed, comprehensive data catalog, after which only very little information is collected (e.g., vital status, health status). Due to the necessary infrastructure, cohorts are often monocentric, but large multicentric cohorts also exist (e.g., NAKO). Typical for cohorts is a broad body of data comprising structured data, images, genomic data, biosamples, and much more, whereby due to the long project duration, the collection instruments, devices, and analysis methods are subject to change, so that individual data elements must be standardized or migrated to new versions. Cohorts have active data management, but due to the lack of long-term patient contact, follow-up queries in case of implausibilities cannot be carried out.

• **Public health** or **surveillance** are research projects that encompass very divergent research questions with and without subject contact, with project-specific data collection or as secondary use of data collected elsewhere, with a specific disease reference or with a broad scope of investigation (e.g., federal health survey). The investigated cohorts tend to be larger (compared to studies and registries). A particular characteristic is a large proportion of patient surveys in the form of paper-based or electronic questionnaires that query certain behaviors, opinions, or exposures in natural language. Public health or surveillance is often conducted in waves of a similar type. The individual subject is less in focus here, and in cohorts, than in registries or studies.

• **Use cases** of the MII are not a specific type of medical research. Use cases can be understood as any of the four types mentioned above, but also as free project-specific research projects based on existing data. Use cases within the framework of the MII include, for example, the consortium-internal and cross-consortium use cases, but also retrospective analyses, feasibility studies, or projects applying artificial intelligence methods. They are patient-oriented in the sense that tracking of, for example, included or includable patients at a site is required, that an assignment to responsible organizational units is necessary, or that project undertakings are subject to a structured process description and defined responsibilities. In particular, the basic process points in the project German Research Data Portal for Health (formerly ZARS) are also addressed here.

### Target audience

##### Implementers

Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.
 → see [Profiles](profiles.md) and [Logical Models](logical-models.md).

##### Researchers

Scientists using KDS data for medical research.
 → see [Guidance for Researchers](guidance.md).

### Contents

* **[Guidance](guidance.md)** — getting started and domain notes.
* **Conformance** — the KDS-wide conformance rules (requirements language, Must Support, handling missing data) are maintained centrally by the [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); the module-specific [Security and Privacy](security-and-privacy.md) considerations are part of this guide.
* **[Profiles](profiles.md)** and the further **[artifact pages](artifacts.md)** — the technical artifacts.
* **[Examples](examples.md)** — example instances.
* **[Dependencies](ImplementationGuide-mii-ig-studie.md)** — the ImplementationGuide resource with the dependency table, cross-version analysis and copyright statements.

### Related guides

This module is part of the MII Core Dataset; the other KDS modules and their dependencies are described at [medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

More FHIR implementation guides can be found in the official **[FHIR IG Registry](https://fhir.org/guides/registry/)** (source: [`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Imprint

This guide was created within the framework of the Medical Informatics Initiative and, per governance process, is subject to the consensus procedure of the Technical Committee of HL7 Germany e. V.

### Contact

* Matthias Löbe, Inst. for Medical Informatics (IMISE), University of Leipzig
* Karoline Buckow, TMF – Technology and Methods Platform for Networked Medical Research e.V.

Questions regarding this publication can be raised at any time on [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative) in the stream 'german/mi-initiative'.

Comments and criticism are welcome in the form of 'Issues' in the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/issues).

### Authors (in alphabetical order)

* Bartow, Martin
* Brix, Tobias
* Gatrio, Margaux
* Gulden, Christian
* Löbe, Matthias
* Macho , Philipp Marten
* Rinaldi, Eugenia
* Scherer, Clemens
* Strauch, Natalia
* Ulbrich, Florian
* Vella, Gustav
* Zautke, Alexander

### Copyright Notice, Usage Notes

 © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. 
 This work is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). 

 ![](https://licensebuttons.net/l/by/4.0/88x31.png) 

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some of the code systems used are published and maintained by other organizations. The copyright of the respective publishers applies.

### Disclaimer

* The content of this document is public. Please note that parts of this document are based on FHIR Version R4, for which the copyright of HL7 International applies.
* Although this publication was created with the utmost care, the authors cannot accept any liability for direct or indirect damage that may arise from the content of this specification.


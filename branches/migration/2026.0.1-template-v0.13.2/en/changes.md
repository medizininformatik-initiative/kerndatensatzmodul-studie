# Changelog - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

This page records the changes between the released versions of the **Medizinisches Forschungsvorhaben** module, newest version first. It follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar versioning scheme described on the [Versioning](version-history.md) page.

Each version gets its own section with the release date and the changes grouped by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.

#### Changes final version v2026.0.1 (published 09.01.2026)

### New Profiles and Functionality

* **ResearchSubject Profile**: Adoption of the profile for capturing study participants (subjects) from the Person module 
* **Integration**: In Implementation Guide with Capability Statements
* **Subject Snapshot**: Added to the IG
* **Examples**: Added for ResearchSubject
* **Reference Resources**: Added for examples
 
* **Study Inclusion Recommendation Profile**: New profile for study inclusion recommendations 
* **Examples**: Added for study inclusion requests
* **Integration**: In Implementation Guide
 
* **UML Diagrams**: Comprehensive UML diagram for the MII study model adjusted 
* **Visual Documentation**: Of the module architecture improved
 

### Implementation Guide Improvements

* **Documentation updated**: 
* CapabilityStatement documentation corrected (typos fixed)
* Referenzen.md updated with current information
* Context documentation (KontextimGesamtprojektBezgezuanderenModulen.md) updated
* References to outdated ART-DECOR removed
* Simplifier issue references replaced with GitHub
* References to base and extension modules removed where no longer applicable
 

### Example Data Extensions

* **Test bundle and examples added**: 
* Comprehensive example bundle added for testing
* ResearchStudy examples extended with extension elements
* EvidenceVariable examples extended with additional elements
* Patient and Consent examples updated
* Subject (participant) identifier structure modified
* Example URLs updated for consistency
* Current example structure reorganized
* ValueSets added for examples
 

### Validation and Quality Improvements

* **HDB issues resolved**: 
* HDB-722: FHIR profiles moved to FHIR-Profile subfolder
* HDB-723: Broken image references in documentation corrected
* HDB-725: meta.profile for inclusion and exclusion criteria corrected
* HDB-726: meta.profile for registry, PractitionerRole, ResearchStudy, ResearchSubject corrected
* HDB-727: ResearchStudy example not included - fixed
 
* **Search Parameters and Logical Model**: 
* Numbering in search parameters corrected
* MS flag removed from reasonReference where not applicable
 

### Technical Improvements

* **Dependencies and Package Management**: 
* package.json dependencies updated
* Meta dependency updated to the latest version
* Specific meta dependency version set
* Version information updated throughout the module
 

### Conformance and Standards

* **KDS Release Guideline 2025.0.0 Conformance**: 
* Conformance with KDS Release Guideline 2025.0.0 ensured
* Data and metadata corrected
* Checklist for Implementation Guide publication for the comment version completed
 

### Translations

* Translations pull request merged
* Multilingual support improved


<!-- markdownlint-disable MD041 -->
<!-- Default-language (English) page. Structure ported from kerndatensatz-basis
     input/pagecontent/changes.md (branch main) — one section per version,
     newest first — and from the MII IG release-notes template
     (kerndatensatz-meta/implementation-guides/MedizininformatikInitiative-ImplementationGuide-Template/
     MII-IG-Modul--Modul/Release-notes.page.md), which prescribes Keep a Changelog.
     German mirror: input/translations/de/pagecontent/changes.md — both files
     must say the same thing.

     Maintenance rule: add a new `#### Version <x>` section on top for every
     release, in BOTH languages, as part of the release pull request. Never edit
     a released section afterwards. -->

This page records the changes between the released versions of the
**Medizinisches Forschungsvorhaben** module, newest version first. It follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar
versioning scheme described on the [Versioning](version-history.html) page.

Each version gets its own section with the release date and the changes grouped
by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.

<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/Release-Notes.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     NOTE queue-②: newest entry is v2026.0.1 — no 2027 section exists yet in the source;
     owner-authored translation from the 2027-EN guide tree) -->
#### Changes Ballot version v2027.0.0-ballot.rc1 (as of 31.08.2026)

##### New Profiles and Functionality

- **ResearchSubject added to the Logical Model**: New BackboneElement "ResearchSubject" (person participating in a study) added

- **Translations added for profiles**:
  - ResearchSubject profile: German and English translations added for title, description, and elements (identifier, status, period, study, individual, consent)
  - Study Inclusion Request profile: German and English translations added for elements (status, intent, category, code, reasonReference, supportingInfo)
  - English version of the Implementation Guide

##### Bug Fixes

- **Extension context restricted**: Context of the ResearchStudy extensions (study registry, eligibility, acronym, recruitment, funding, ethics approval, backport AssociatedParty/Label) explicitly restricted to ResearchStudy
- **Logical Model corrected**: "id" element of the BusinessID renamed to "identifier", since the Logical Model namespace already assigns its own id to every element
- **Validator errors resolved**:
  - No-longer-needed dependency (hl7.fhir.uv.xver-r5.r4) removed from the ImplementationGuide
  - Home page added to the table of contents
  - pagecontent folder moved to the correct path
- **Spelling errors fixed**: Typo in the title of the German Implementation Guide corrected, "DE" label added to the title
- **Broken link fixed**: Reference to the IPS rules on must-support elements updated, warning icon added to the associated table

##### Harmonization and Technical Improvements

- **Aliases harmonized**: Terminology aliases unified and standardized (including $SCT, $LNC, $UCUM), usage in examples and profiles adjusted accordingly
- **Rulesets standardized**:
  - New "MetaProfile" RuleSet introduced for versioning of meta.profile entries
  - Translation RuleSet revised with clearer parameter names
  - Placeholder file for license terms (license-terms.fsh) added
- **Language setting added**: Language tag "de-DE" added to sushi-config.yaml

#### Changes final version v2026.0.1 (published 09.01.2026)

### New Profiles and Functionality

- **ResearchSubject Profile**: Adoption of the profile for capturing study participants (subjects) from the Person module
  - **Integration**: In Implementation Guide with Capability Statements
  - **Subject Snapshot**: Added to the IG
  - **Examples**: Added for ResearchSubject
  - **Reference Resources**: Added for examples

- **Study Inclusion Recommendation Profile**: New profile for study inclusion recommendations
  - **Examples**: Added for study inclusion requests
  - **Integration**: In Implementation Guide

- **UML Diagrams**: Comprehensive UML diagram for the MII study model adjusted
  - **Visual Documentation**: Of the module architecture improved

### Implementation Guide Improvements

- **Documentation updated**:
  - CapabilityStatement documentation corrected (typos fixed)
  - Referenzen.md updated with current information
  - Context documentation (KontextimGesamtprojektBezgezuanderenModulen.md) updated
  - References to outdated ART-DECOR removed
  - Simplifier issue references replaced with GitHub
  - References to base and extension modules removed where no longer applicable

### Example Data Extensions

- **Test bundle and examples added**:
  - Comprehensive example bundle added for testing
  - ResearchStudy examples extended with extension elements
  - EvidenceVariable examples extended with additional elements
  - Patient and Consent examples updated
  - Subject (participant) identifier structure modified
  - Example URLs updated for consistency
  - Current example structure reorganized
  - ValueSets added for examples

### Validation and Quality Improvements

- **HDB issues resolved**:
  - HDB-722: FHIR profiles moved to FHIR-Profile subfolder
  - HDB-723: Broken image references in documentation corrected
  - HDB-725: meta.profile for inclusion and exclusion criteria corrected
  - HDB-726: meta.profile for registry, PractitionerRole, ResearchStudy, ResearchSubject corrected
  - HDB-727: ResearchStudy example not included - fixed

- **Search Parameters and Logical Model**:
  - Numbering in search parameters corrected
  - MS flag removed from reasonReference where not applicable

### Technical Improvements

- **Dependencies and Package Management**:
  - package.json dependencies updated
  - Meta dependency updated to the latest version
  - Specific meta dependency version set
  - Version information updated throughout the module

### Conformance and Standards

- **KDS Release Guideline 2025.0.0 Conformance**:
  - Conformance with KDS Release Guideline 2025.0.0 ensured
  - Data and metadata corrected
  - Checklist for Implementation Guide publication for the comment version completed

### Translations

- Translations pull request merged
- Multilingual support improved

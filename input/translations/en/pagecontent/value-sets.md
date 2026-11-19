<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type); SNOMED CT version policy from the meta wiki page
     "Terminology Version Policy". The IG Publisher lists the ValueSets on the
     artifact pages automatically; this page carries the MII notes on them.
     German mirror: input/translations/de/pagecontent/value-sets.md. -->


### Value Sets

This page describes the ValueSets of the **Medizinisches Forschungsvorhaben** module (naming
convention `MII_VS_<Module>_<Name>`). For general guidance on using codes, see
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); the code systems
the sets draw from are described on the [Code Systems](code-systems.html) page.

{:.bg-info}
**Expansions:** ValueSet expansions in this guide are produced by a FHIR
terminology server — SU-TermServ if the client certificate is configured,
otherwise the public HL7 server `tx.fhir.org` (in which case some KDS-specific
ValueSets may not expand completely).


<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/Terminologie.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     NOTE queue-②: the contradiction (note claimed no own CS/VS while the package ships
     2 CodeSystems + 2 ValueSets) was resolved during the 2027 ballot by rewording the note below;
     owner-authored translation from the 2027-EN guide tree) -->
### Terminology

#### CodeSystems / ValueSets

The current version of the Study module does not define any own CodeSystems and ValueSets for use.

For compatibility, the package still contains two CodeSystems with corresponding ValueSets under `http://example.org/…`: **Associated Party Role** and **Research Study Category**. They originate from earlier examples, are **retired** (`status = retired`) and should no longer be used:

* For the role of involved persons and organizations, the HL7 code system `http://hl7.org/fhir/research-study-party-role` applies, to which the extension MII EX Studie Backport AssociatedParty is bound.
* `ResearchStudy.category` is not bound. Standard terminologies such as SNOMED CT or NCIt should be used here.

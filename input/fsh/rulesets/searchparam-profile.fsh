// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-meta (2027.0.0-ballot): input/fsh/rulesets/searchparam-profile.fsh
// Claims the KDS-wide SearchParameter baseline profile (defined by the meta
// module) on every SearchParameter instance of this IG and stamps the CRMI
// version policy and package provenance. Requires the
// de.medizininformatikinitiative.kerndatensatz.meta dependency that ships
// mii-pr-meta-searchparameter.
// ─────────────────────────────────────────────────────────────────────────────

RuleSet: SP_Profile
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-pr-meta-searchparameter"
* insert CRMIVersionPolicyStrictInstance
* insert CRMIPackageSource

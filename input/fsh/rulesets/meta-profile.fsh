// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-meta (2027.0.0-ballot): input/fsh/rulesets/meta-profile.fsh
// meta literal 2027.0.0-ballot → 2027.0.0-ballot.rc1.
//
// Pins an example's `meta.profile` to the VERSIONED canonical of the profile it
// claims, e.g.
//   * insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/<id>)
// Setting meta.profile explicitly also stops SUSHI from adding its own unversioned
// entry (instanceOptions.setMetaProfile), so the example validates against exactly
// the release it ships with.
// ─────────────────────────────────────────────────────────────────────────────

RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2027.0.0-ballot.rc1"

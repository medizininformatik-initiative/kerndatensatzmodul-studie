Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason

RuleSet: AddBundleEntry(resource, url)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{url}/{resource}"
* entry[=].resource = {resource}
* entry[=].request.method = #POST
* entry[=].request.url = "{url}"

RuleSet: TestDataLabel
* meta
  * security[+] = $v3-ActReason#HTEST "test health data"


// =============================================================================
// Example Studie
// =============================================================================
Instance: mii-studie-test-data-bundle-studie
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Example Study"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-12-04T12:00:00+00:00"
* insert AddBundleEntry(mii-exa-studie-dokument, MII_PR_Studie_Dokument)
* insert AddBundleEntry(mii-exa-studie-ein-auschluss-kriterium, MII_PR_Studie_EinAuschlussKriterium)
* insert AddBundleEntry(mii-exa-studie-studie, MII_PR_Studie_Studie)
* insert AddBundleEntry(mii-exa-studie-cohort, MII_PR_Studie_Cohort)
* insert AddBundleEntry(mii-exa-studie-proband, MII_PR_Studie_Proband)
* insert AddBundleEntry(mii-exa-studie-beteiligte-person, MII_PR_Studie_Beteiligte_Person)
* insert AddBundleEntry(mii-exa-studie-register, MII_PR_Studie_Register)
* insert AddBundleEntry(mii-exa-studie-author, Organization)
* insert AddBundleEntry(mii-exa-studie-custodian, Organization)
* insert AddBundleEntry(mii-exa-studie-practitioner-organization, Organization)
* insert AddBundleEntry(mii-exa-studie-practitioner, Practitioner)
* insert AddBundleEntry(mii-exa-studie-reference-study, ResearchStudy)
* insert AddBundleEntry(mii-exa-studie-patient, Patient)
* insert AddBundleEntry(mii-exa-studie-consent, Consent)

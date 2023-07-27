{% docs mid_policy_fast %}
{% raw %}

# FAST Policies

![last updated](assets/update_badges/mid_policy_fast.svg)

Table containing policy contract and benefit information from FAST. Will be joined with the
AS400 mid table to become policy entity.

Most of the policy info we pull is from the application entity since it is not available in
case/policy.
For the following fields, if the policy has settled then the value is populated by the policy
record information; if the policy has not yet been settled, then the value is taken from the
case record information: `policy_number`, `contract_entity_id_code`,
`contract_status_description`, `contract_status_stage`, `contract_status`, `face_amount`, and 
`issue_age`.

NOTES: 
1. In creation of this table, type != '00000000-0000-0000-0000-000000000006' was removed from
the cases pulled because this is a type of case change that made it to this file that was not
intended when we asked for "cases". Their inclusion causes duplicates, and general strange
behavior we don't want.

2. The following policy numbers do not have an application_entry_date and application_signed_date
'3000191753','3000209829', '3000319875','3000328546', '3000362370','3000514574','3000702690', 
'3000795306','3001078314', '3001177157', '3001246663','3001231970','3001246028','3001410004'. 
The null values occurred because of errors on the FAST side likely due to manual data entry. 
This is an issue that is known by FAST and should be resolved by them. The following tickets are 
related to this issue and these TODOs are in the yaml for this model:
TODO: See ticket DSSE-972: once policy 3001177157 is corrected in FAST source, remove it from this test.
TODO: See ticket DSSE-1015: once policy 3001078314 is corrected in FAST source, remove it from this test.

3. The following policy does not have a payment type despite having a settled date: 4038227361.
   This policy was incorrectly deleted and then re-added but the policy was terminated, so the manual recreation of the policy was unable to fully recreate the policy details pre-deletion.
   Therefore they were not able to add a payment type. We don't expect this issue to ever be corrected.

4. We do not test for NULL on application_entry_date, application_signed_date, 
reporting_group_company_level, reporting_group_insurance_company_level, and 
reporting_group_club_level where settled_date is before '2005-01-01'. Application entry date
and application signed date did not exist then, and therefore are NULL for all records before
2005-01-01. In addition, application entry date is used to assign the applicable
reporting_group fields, thus these will also be NULL when application_entry_date is NULL.

5. Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per policy number |
| Security Classification: | SRD   |
| Usage Requirement:       | Sensitive  |

### Grain - Policy Number
See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter experts with any questions or concerns.

{% endraw %}
{% enddocs %}
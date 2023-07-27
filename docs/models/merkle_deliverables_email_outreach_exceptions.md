{% docs merkle_deliverables_email_outreach_exceptions %}
{% raw %}

# Exceptions to the Policy-Parties Table with eServices Data for Merkle
![last updated](assets/update_badges/merkle_deliverables_email_outreach_exceptions.svg)

See [email_outreach table documentation](#!/model/model.aaa_life_data_platform.merkle_deliverables_email_outreach)
for a better understanding of the core table that corresponds to this exceptions table.
This table includes all records where we have a duplicated record per policy_number
and role_type. This will only happen when we have two different party_numbers for a single
policy_number and role_type. 

NOTES: 
1. Logically, this table would capture any duplicates, but the uniqueness test will fail
on this model if the duplicate is caused by something other than the party_number.

2. This model contains one known duplicate of party_number: '0003417744'.
This 'party_number' has also been carved out of the mid_policy_parties_lifeplus.yml test.
We are "grandfathering" this party_number in because it is a known issue and the
business hasn't responded with a correction. This test condition will likely not be
corrected in the source system due to the shift from LifePlus to FAST.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + role_type + party_number (except for party_number = '0003417744') |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
See [**Policy Number**](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [**Role**](#!/exposure/docs.business_glossary.glossary#role)
for definition.

See [**Party Number**](#!/exposure/docs.business_glossary.glossary#party_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
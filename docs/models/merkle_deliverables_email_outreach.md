{% docs merkle_deliverables_email_outreach %}
{% raw %}

# Policy-Parties Table with eServices Data for Merkle
![last updated](assets/update_badges/merkle_deliverables_email_outreach.svg)

Marketing has asked for DSSE to take up the work of providing Merkle with a data feed that
can be used to identify policy holders for e-mail outreach. The purpose of the outreach is
to provide calls to action to new policy holders and existing policy holders who can now
utilize eServices. The specific calls to action are:
- eServices Enrollment
- Autopayment Enrollment
- Possible lateral sales opportunities

Table holds all policy-party roles with role types: 'Owner One' and 'Owner Two'. (With a 
`has_beneficiary` flag.) The table is joined to eServices data from Sureify to get some 
eServices user information, and then it will be used to provide to Merkle.

The calls to action are determined by where the policy holder is on their 'User Journey'.
The journey for each user type is similar, but users do not move between journeys.

NOTES: 
1. This model contains one known duplicate of party_number: '0003417744'.
This 'party_number' has also been carved out of the mid_policy_parties_lifeplus.yml test.
We are "grandfathering" this party_number in because it is a known issue and the
business hasn't responded with a correction. This test condition will likely not be
corrected in the source system due to the shift from LifePlus to FAST.

2. Right now, as of 9/28/22, we're keeping all records from gold.policy_parties (in lieu of
keeping all records from gold.policies). There are small portion of policies that show up in
one and not the other for each table. We are focusing on gold.policy_parties since the
purpose of this model is to use the party's email_address to contact them.

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
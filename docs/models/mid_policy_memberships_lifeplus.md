{% docs mid_policy_memberships_lifeplus %}
{% raw %}

# Mid Policy Memberships - LifePlus

![last updated](assets/update_badges/mid_policy_memberships_lifeplus.svg)

This table's purpose is to add the membership number at the time of application to the policy
entity. For each [policy number](#!/exposure/docs.business_glossary.glossary#policy_number),
this table determines 
1. [party number](#!/exposure/docs.business_glossary.glossary#party_number)
for both the insured and owner separately 
2. the insured's and owner's most recently active [membership number](#!/exposure/docs.business_glossary.glossary#membership_number)
within the policy's club and at the time of either policy settle, application entry date, or 
application signed date (in that order).
3. The first available non-null party number, membership number and policy number for the 
insured and owner (in that order).

NOTES: 
1. A policy could have different membership numbers show up in this table over time if you check it 
    - after the app entry date
    - after the app signed date
    - after the policy settled date
2. The membership number can come from either the [client_membership](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_membership)
table or the [client_membership_history](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_membership_history)
table if the update dates and times in these tables are exactly the same, then the information
from the [client_membership](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_membership)
table is used in this table.
3. Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
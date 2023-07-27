{% docs mid_policy_parties_lifeplus %}
{% raw %}

# LifePlus Policy-Parties Table in Mid
![last updated](assets/update_badges/mid_policy_parties_lifeplus.svg)

For all base policies, this table holds all policy-party roles with types: insured (INS, JNT), owner (OW1, OW2), 
payor (PAY, PY2, PAE), and beneficiary (BEN, BNC). This table does not contain records that were entered in error and 
subsequently withdrawn, as identified by any of the party name fields containing the word "error".

LifePlus: Currently, as of 7/20/2021, the effective_date and end_date are
set to NULL due to the historical tables in AS400/LifePlus needing data discovery. These 
columns likely won't be useful until at least September 1, 2021.

NOTE: Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

NOTE ON CELL PHONE NUMBER: Cell phone numbers are extracted from staging_lifeplus.dynamic_user_fields
table. Due to data quality issues, we exclude the cell phone records where the from_month (key_field_3) and 
from_day (key_field_4) are not set to default values. 

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + role_type + party_number - minus party_numbers '0003417744','0002918540','0002895102','0002907168' |
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
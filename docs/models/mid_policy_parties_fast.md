{% docs mid_policy_parties_fast %}
{% raw %}

# FAST Policy-Parties Table in Mid
![last updated](assets/update_badges/mid_policy_parties_fast.svg)

For all base policies, this table holds all policy-party roles with types: 
insured (OLI_REL_INSURED), owner (OLI_REL_OWNER, OLI_REL_JOINTOWNER), payor (OLI_REL_PAYOR), 
and beneficiary (OLI_REL_BENEFICIARY, OLI_REL_CONTGNTBENE).

FAST: Currently, as of 1/06/2022, the effective_date and end_date are
set to NULL due to the need to align with LifePlus and the historical tables in AS400/LifePlus 
needing data discovery. These columns likely won't be useful until at least September 1, 2021.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + role_type + party_number |
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
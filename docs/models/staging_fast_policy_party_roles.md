{% docs staging_fast_policy_party_roles %}
{% raw %}

# FAST Policy Party Roles

![last updated](assets/update_badges/staging_fast_policy_party_roles.svg)

This is the FAST party role master. It is the key piece of the whole policy-party 
structure. It tells us which party has a role in which policy, as well as what type of 
role it is. This specific table only spells out the connections between policy, party,
and membership, it doesn't contain any other info about the parties. 

A FAST party is a person or business that has a name and other attributes that uniquely 
define it, like a mailing address and a specific interest or connection 
to the policy it’s attached to. These are the people or businesses with whom we might need 
to interact with as the policy goes through its life cycle from new business to claim payout.

NOTE: Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + membership_number + coverage_type + coverage_option + party_number + role + role_start_date + role_end_date |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain Description
See [**policy number**](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [**membership number**](#!/exposure/docs.business_glossary.glossary#membership_number)
for definition.

**Coverage Type**: The type of coverage for a given policy number, namely if the policy is a
base policy or a rider.

**Coverage Option**: The option of coverage for a given policy number. When the row contains a 
base policy, this field contains information regarding the product type. When the row contains a
rider, then this field contains the code for the rider (i.e. CTR = Child Term Rider)

See [**party number**](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_master#party_number)
for definition.

**Role:** The field that identifies the type of role to which this record corresponds. 
For example, OLI_REL_INSURED, OLI_REL_OWNER, OLI_REL_BENEFICIARY, and OLI_REL_PAYOR. See full
definition below.

**Role Start Date:** The date on which the [role](#!/exposure/docs.business_glossary.glossary#role) 
becomes effective.

**Role End Date:** The date on which the [role](#!/exposure/docs.business_glossary.glossary#role)
becomes ineffective. 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
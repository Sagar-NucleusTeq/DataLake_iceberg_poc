{% docs mid_policy_agents_lifeplus %}
{% raw %}

# LifePlus Policies with All Agents Related to the Policies 

![last updated](assets/update_badges/mid_policy_agents_lifeplus.svg)

This is a table meant to show all agents involved in the creation of a policy. It is unique at the 
policy level where `is_primary_agent = TRUE`. It can easily be used to tie directly with the
mid_policy entities using this condition.

In addition, this table includes
1. Writing Agents only - it does not include any Servicing agents.
2. Base rider code = '99' (base policy) only.
(**all** base rider codes in this table since 2001 have been 99)
[base rider code](#!/exposure/docs.business_glossary.glossary#base_rider_code)

Creation of this table:
1. Get unique policy numbers for inforce contract agents so that we can remove
    them from the new business records (we want the inforce information for those policies where
    we have it, and we want the new business information for only those policies that we don't
    have an inforce record for)
2. Get New Business policy agent information for policy-company combos that do **not** exist in
    inforce contracts:  
    Keep only policy_number, company_code, agent_number, is_primary_agent, agent_split_percentage 
    because the others do not matter in the context of this model since we're not 
    concerned with compensation.
3. Join the remaining NB policies (ones that are not found in the inforce table) to
    staging_lifeplus_new_business_contracts in order to get one record per policy (using the
    company_code from staging_lifeplus_new_business_contracts).
    Since staging_lifeplus_new_business_contracts is unique at the policy_number level, by joining
    to this table on policy_number & company_code we can get the record that we want in the end
    table, and therefore make policy_number unique where is_primary_agent = TRUE.
4. Get all inforce contract information.
5. UNION inforce contract information (#4) and relevant NB information (#3).

For DSU, SISU, and agents associated with certain third-party platforms such as Rapport and IPTIQ, the agent number can 
be accessed directly in the contract record.

Please note that there will likely be records in this table associated with contracts sold by internal agents. In these
instances `agent_number` will contain the club code.

NOTE: Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per policy number + agent number + is_primary_agent |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain - Policy Number + Agent Number
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [agent](#!/exposure/docs.business_glossary.glossary#agent)
for definition.

See [is_primary_agent](#!/model/model.aaa_life_data_platform.gold_policies#is_primary_agent)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

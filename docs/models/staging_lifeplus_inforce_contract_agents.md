{% docs staging_lifeplus_inforce_contract_agents %}
{% raw %}

# LifePlus Multi-Writing Agents

![last updated](assets/update_badges/staging_lifeplus_inforce_contract_agents.svg)

This is the LifePlus multi-writing agents' master table. It provides a tie between contracts/policies 
and [agents](#!/exposure/docs.business_glossary.glossary#agent)
via agent number and 
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number).

This table is the link between policies and agent number for external (non-DSU and non-SISU) agents. It includes agent 
history (but not policy history) so to get the current agent it is necessary to get the records with most recent 
effective date per policy. For DSU, SISU, and certain third-party agents such as Rapport, the agent number can be 
accessed directly in the contract record.

Please note that there will likely be records in this table associated with contracts sold by internal agents. In these
instances `agent_number` will contain the club code.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + base_rider_code + agent_type + agent_number + effective_date |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain Description
See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [Base Rider Code](#!/exposure/docs.business_glossary.glossary#base_rider_code)
for definition.

**Agent Type**: A code that defines the type of agent as servicing or writing. Servicing agents
may get renewal commissions, but the vast majority of this table is made up of writing agents.
_Servicing Agent_: An agent who continues to work with the customer on an ongoing basis. This
agent would make any updates to the existing policy as needed.  
_Writing Agent_: The original agent who sold the coverage to the customer. This agent would 
have performed tasks such as explaining policy benefits, determine suitability, collect premium, 
and signed the application for example.                                   

**Agent Number**: The identification number used by an agent involved in submitting the 
new business application. 

**Effective Date**: The effective date is generally understood as the first day that the policy 
enters into force. An effective date is generally the time, day, month, and year when the 
insurance coverage becomes active. It also marks when the first monthly premium has been paid.
In this instance, it can also include the date on which the policy has been revised (i.e. a rider 
was added, or the face amount was updated).

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
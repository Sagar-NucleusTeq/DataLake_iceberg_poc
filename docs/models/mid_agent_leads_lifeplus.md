{% docs mid_agent_leads_lifeplus %}
{% raw %}

# Agent Leads Lifeplus

![last updated](assets/update_badges/mid_agent_leads_lifeplus.svg)

Table contains information needed to generate agent leads for Lifeplus system. It includes policy 
information from gold_policies, product information from staging_mde_product_hierarchy and insured 
information from gold_policy_parties.

Lexis Nexis CTE: there is boolean logic to determine if the policy has a risk class
that meets the inclusion criteria. Since each policy may have multiple risk classes, we wanted to 
make sure to include the policy if at least one of these scores meets the criteria in order to align
with the original business logic.

RX Score CTE: We are taking the min RX Score for each policy in order to make sure we include the
policy if it has at least one score that meets the criteria. (RX Score <= 1.5)

Membership Number: In the original logic for creating lead lists, they just wanted A membership 
number, but it didn't matter which policy party it came from. The business logic behind that choice 
was not re-discovered, so that logic was kept as-is in this model.

### Security and Usage Information
|                          |                         |
|--------------------------|-------------------------|
| Grain:                   | 1 row per policy_number |
| Security Classification: | Confidential            |
| Usage Requirement:       | PII                     |

### Grain Description
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs mid_agent_leads_fast %}
{% raw %}

# Agent Leads Fast

![last updated](assets/update_badges/mid_agent_leads_fast.svg)

Table contains information needed to generate sales leads for agents based on policies from the FAST
PAS system. It includes policy information from gold_policies, product information from 
staging_mde_product_hierarchy, and insured party information from gold_policy_parties. 

Note: In the original logic for creating lead lists, they just wanted A membership number, but it 
didn't matter which policy party it came from. The business logic behind that choice was not
re-discovered, so that logic was kept as-is in this model.

We can only get membership numbers for Insured and Owner One from Merkle, so these are the only ones
we are including when trying to find a membership number associated with the policy's parties.


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
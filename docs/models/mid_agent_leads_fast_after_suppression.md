{% docs mid_agent_leads_fast_after_suppression %}
{% raw %}

# Agent Leads Fast After Suppression

![last updated](assets/update_badges/mid_agent_leads_fast_after_suppression.svg)

This table contains policies from [Agent Leads Fast](#!/model/model.aaa_life_data_platform.mid_agent_leads_fast) 
table after suppression. We excluded individuals exist in [Suppression Summary](#!/model/model.aaa_life_data_platform.staging_mde_suppression_summary) 
table with global and club flag set to true, which means the individual does not wish to be 
contacted. This table will be used to generate agent lead lists. Agents will use the lead list to
decide which clients to reach out to.


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
{% docs dsu_deliverables_agent_leads %}
{% raw %}

# DSU Anniversary Leads
![last updated](assets/update_badges/dsu_deliverables_agent_leads.svg)

This table combines records from mid_agent_leads_dsu_anniversaries and mid_agent_leads_dsu_lapses
and produces the final table that is used in python script that pushes a txt file containing all
the DSU leads to AWS S3.

The inclusion logic for the leads can be found in their respective mid schema doc blocks listed 
below:

* [mid_agent_leads_dsu_anniversaries](#!/model/model.aaa_life_data_platform.mid_agent_leads_dsu_anniversaries)
* [mid_agent_leads_dsu_lapses](#!/model/model.aaa_life_data_platform.mid_agent_leads_dsu_lapses)


### Security and Usage Information
|     |                         |
| --- |-------------------------|
| Grain:                   | 1 row per policy_number |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
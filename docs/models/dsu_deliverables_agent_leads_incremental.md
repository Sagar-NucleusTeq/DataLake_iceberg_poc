{% docs dsu_deliverables_agent_leads_incremental %}
{% raw %}

# DSU Anniversary Leads Incremental
![last updated](assets/update_badges/dsu_deliverables_agent_leads.svg)

This table is set up to incrementally refresh on a daily basis from the 
[dsu_deliverables_agent_leads](#!/model/model.aaa_life_data_platform.dsu_deliverables_agent_leads)
table. Each day the latest leads are captured and stored here. That way we have a record of our
leads over time and can set up reporting tracking the success of those leads.

Note: The DSU leads are distributed to the DSU monthly on the 23rd. We really only need to store
the leads that were distributed to the DSU, so It's possible to set this incremental table to only
update on the 23rd of each month to capture only the relevant leads, however if we do that and the
data platform is down on the 23rd for some reason, we may fail to capture the leads for that month.
Because of this consideration, the leads are captured every day and relevant leads will need to be
filtered further down stream.

The inclusion logic for the leads can be found in their respective mid schema doc blocks listed 
below:

* [mid_agent_leads_dsu_anniversaries](#!/model/model.aaa_life_data_platform.mid_agent_leads_dsu_anniversaries)
* [mid_agent_leads_dsu_lapses](#!/model/model.aaa_life_data_platform.mid_agent_leads_dsu_lapses)


### Security and Usage Information
|     |                                              |
| --- |----------------------------------------------|
| Grain:                   | 1 row per policy_number + lead_list_run_date |
| Security Classification: | Confidential                                 |
| Usage Requirement:       | PII                                          |

### Grain Description
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number)

lead_list_run_date

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
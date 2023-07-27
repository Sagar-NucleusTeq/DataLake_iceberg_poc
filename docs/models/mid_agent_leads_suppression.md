{% docs mid_agent_leads_suppression %}
{% raw %}

# Agent Leads Suppression List
![last updated](assets/update_badges/mid_agent_leads_suppression.svg)

This is a list of policies (policy numbers) that have an **insured individual** that should
not be solicited to for various opt-out or do not contact (DNC) reasons. The sources of this table are
the **staging_lifeplus_dynamic_user_fields** and the **staging_mde_suppression_summary** models.

**staging_lifeplus_dynamic_user_fields:**

We use logic on this L+ table to find policy numbers of the people who have opted-out when asked if
their data could be shared with business partners during an annual privacy survey.

**staging_mde_suppression_summary:**

Individuals in this table have indicated that they do not want to be solicited either globally 
or by one of our clubs. This table contains true/false for individuals based on marketing vehicles
(phone, email, SMS, mail). We are including any policy number where the insured individual indicated
they don't want to be solicited by ANY of the marketing vehicles in this table.

### Security and Usage Information
|     |                           |
| --- |---------------------------|
| Grain:                   | one row per policy number |
|Security Classification:| Confidential |
|Usage Requirement:      | Deidentified |

### Grain Description
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
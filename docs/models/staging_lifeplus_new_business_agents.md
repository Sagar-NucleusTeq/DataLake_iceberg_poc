{% docs staging_lifeplus_new_business_agents %}
{% raw %}

# Staging Lifeplus New Business Agents

![last updated](assets/update_badges/staging_lifeplus_new_business_agents.svg)


This is the LifePlus new business multi-writing agents' master table. It provides a tie 
between contracts and [agents](#!/exposure/docs.business_glossary.glossary#agent)
via agent number and 
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number).

This table is the link between policies and agent number for external (non-DSU and non-SISU) agents. It includes agent 
history (but not policy history) so to get the current agent it is necessary to get the records with most recent 
effective date per policy. For DSU, SISU, and agents associated with certain third-party platforms such as Rapport and 
IPTIQ, the agent number can be accessed directly in the contract record.

Please note that there will likely be records in this table associated with contracts sold by internal agents. In these
instances `agent_number` will contain the club code.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per company_code + policy_number  + agent_number |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain Description
See [Company](#!/exposure/docs.business_glossary.glossary#company)
for definition.

See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

**Agent Number**: The identification number used by an agent involved in submitting the 
new business application. 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
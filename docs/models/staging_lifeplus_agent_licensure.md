{% docs staging_lifeplus_agent_licensure %}
{% raw %}

# Agent Licensure

![last updated](assets/update_badges/staging_lifeplus_agent_licensure.svg)

This table contains the Lifeplus agent licensure information. In Lifeplus (also called AS400, Life Support Plus, LSP, Life+) 
this information comes from COMALIC. It contains the information associated with field and DSU agents licensure status.  

Company code will not make its way to the final agent licensure table. Agents licensure is not bound by company code, but rather by state. 
The reason it is in the staging table is that Lifeplus requires company codes for many different types of records.
It is not recommended to use the 'company code' from this staging table for any analysis or model development.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per company, agent number, country, state, license type and license active status |
| Security Classification: | Internal |
| Usage Requirement:       | PII |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

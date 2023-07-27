{% docs staging_dsse_promotion_history_null_address_key_broadlog_id %}
{% raw %}

# Promotion History Known Records with Known Address Keys identified by broadlog_id

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/staging_dsse_promotion_history_null_address_key_broadlog_id.svg)

This table contains a list of broadlog_ids corresponding to direct mail promotion_history records
with NULL address_keys. Direct mail address_keys are not supposed to be NULL, but sometimes they
are pushed to the table without them. 

This list serves as a holding place to exclude previously identified records and exclude them from promotion
history dbt tests. Thus, new occurences can be identified while waiting for the errors to be fixed by 
Merkle. 

This list is updated manually via airflow each time a job fails so that Merkle can be alerted of 
new issues. (Details can be found [here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/10744659988/Promotion+History+Corrections+Automation).) 

Once the corresponding records with NULL address keys are corrected, the broadlog_id will be removed
from this list.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per broadlog_id |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
See [broadlog_id](#!/model/model.aaa_life_data_platform.staging_mde_promotion_history#broadlog_id)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
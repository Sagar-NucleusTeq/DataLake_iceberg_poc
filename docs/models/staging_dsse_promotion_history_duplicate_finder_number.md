{% docs staging_dsse_promotion_history_duplicate_finder_number %}
{% raw %}

# Promotion History Known Duplicate Finder Numbers

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/staging_dsse_promotion_history_duplicate_finder_number.svg)

This table contains a list of known duplicate finder numbers from promotion history.
While finder numbers should be unique, this table contains a list of those known to be used more
than once in error. This table should only be a temporary holding place as these duplicated finder
numbers should be fixed by Merkle. However, as Merkle requires some time to address the
errors, this table allows for a promotion history dbt test such that we can check for new errors without
flagging already known issues. 

This list is updated manually via airflow each time a job fails so that Merkle can be alerted of 
new issues. (Details can be found [here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/10744659988/Promotion+History+Corrections+Automation).) 
Additionally, this list does not contain finder numbers from C7 2019, where finder numbers
were duplicated across the Term and GIWL products, or "Tej Test" records.

Once the corresponding records with duplicate finder numbers are corrected, the finder number will be removed
from this list.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per finder number |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
See [finder number](#!/exposure/docs.business_glossary.glossary#finder_number)
for definition

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
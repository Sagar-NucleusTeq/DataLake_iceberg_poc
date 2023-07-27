{% docs print_vendor_counts %}
{% raw %}

# Print Vendor Counts

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/staging_print_vendors_print_vendor_counts.svg)

Table containing print vendor record counts.  Print vendors that participate in our direct mail marketing programs are 
required to provide reporting on received file counts so we can verify that print files were received completely and 
accurately.  Both counts of total records ingested from print files and "actual" record counts are included.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per touch_id, count_type, and vendor |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

{% docs print_vendor_counts_admr %}
{% raw %}

# ADMR Print Vendor Counts

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/staging_print_vendor_admr_vendor_counts.svg)

Table containing American Direct Marketing Resources (ADMR) print vendor record counts.  Both counts of records ingested
from print files and "actual" record counts are included.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per touch_id and count_type |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}


{% docs print_vendor_counts_rrd %}
{% raw %}

# R.R. Donnelly Print Vendor Counts

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/staging_print_vendor_rrd_vendor_counts.svg)

Table containing R.R. Donnelly (RRD) print vendor record counts.  Both counts of records ingested from print files and 
"actual" record counts are included.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per touch_id and count_type |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}


{% docs print_vendor_counts_merkle %}
{% raw %}

# Merkle Print Vendor Counts

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/staging_print_vendor_merkle_vendor_counts.svg)

Table containing Merkle print vendor record counts.  Both counts of records ingested from print files and 
"actual" record counts are included.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per touch_id and count_type |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs staging_dsse_direct_mail_completion_factors_history %}
{% raw %}

# Direct Mail Completion Factors History Snapshot
![last updated](assets/update_badges/staging_dsse_direct_mail_completion_factors_history.svg)

This snapshot is a type II dimension table containing a history of the direct mail completion factors mappings. This 
snapshot uses unique combinations of product_group and days_since_drop to check for changes to the following fields:
* ['application_completion'](#!/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#application_completion)
* ['settled_completion'](#!/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#settled_completion)
* ['production_completion'](#!/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#production_completion)
* ['application_completion_cumulative'](#!/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#application_completion_cumulative)
* ['settled_completion_cumulative'](#!/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#settled_completion_cumulative)
* ['production_completion_cumulative'](#!/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#production_completion_cumulative)

See [Direct Mail Completion Factors](#!/exposure/docs.business_glossary.glossary#direct_mail_completion_factors) for more information.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per product_group + days_since_drop + dbt_valid_from + dbt_valid_to |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description

See [product_group](#!/snapshot/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#product_group) for more information.

See [days_since_drop](#!/snapshot/snapshots.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#days_since_drop) for more information.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
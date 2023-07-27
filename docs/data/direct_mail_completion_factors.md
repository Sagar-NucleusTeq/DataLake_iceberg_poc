{% docs direct_mail_completion_factors %}
{% raw %}

# Direct Mail Completion Factors Data Seed

![last updated](assets/update_badges/direct_mail_completion_factors.svg)

A CSV serving as the source for the completion factors reference table. As with all seed datasets, this CSV is 
maintained by Analytics Engineers and analysts and updated manually.

See [staging_dsse_direct_mail_completion_factors](#!/model/model.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors) for more information on completion factors and their use.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per days_since_drop, product_group |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
There are two fields that are needed in this table to get a unique row.
1. **Days Since Drop**: See [days_since_drop](#!/model/model.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#days_since_drop) for more information.
2. **Product Group**: See [product_group](#!/model/model.aaa_life_data_platform.staging_dsse_direct_mail_completion_factors#product_group) for more information.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs product_mapping %}
{% raw %}

# Tactic Name to Product Group Mapping Table Seed Dataset
This seed contains the most recent mapping between [tactic names](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping#campaign_year) and [product groups](#!/model/model.aaa_life_data_platform.gold_messages#product_group). Each tactic name should map to
one and only one product group at a time. In other words, there should be no instances of multiple rows containing the
same tactic name, overlapping effective dates, and different product names.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per tactic_name + effective_date |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description

See [Tactic Name](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping#campaign_year)

See [Effective Date](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping#effective_date)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
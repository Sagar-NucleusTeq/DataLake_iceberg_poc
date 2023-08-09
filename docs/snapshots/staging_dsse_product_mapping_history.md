{% docs staging_dsse_product_mapping_history %}
{% raw %}

# Tactic Name to Product Group Mapping History Snapshot
![last updated](assets/update_badges/staging_dsse_product_mapping_history.svg)

This snapshot is a type II dimension table containing a history of mappings between [tactic names](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping_history#tactic_name) and [product groups](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping_history#product_group).
This snapshot checks for changes to `product_group` and `expiration_date` per unique combination of `tactic_name` and
`effective_date`.

## Invalid vs. expired records
Please note that there are three types of records in this snapshot as summarized below.

| Record Type | effective_date | expired_date | dbt_valid_to |
| :--------- | :--------- | :--------- | :--------- |
| Active | &#x2264; current date | &#8805; current date OR NULL | NULL |
| Pending | > current date | &#8805; current date OR NULL | NULL |
| Expired | N/A | &#x2264; current date | NULL |
| Invalid | N/A | N/A | N/A | NOT NULL |

Invalid records are records that either represent older versions of active/ pending/ expired records, or erroneously 
that were included in a seed file by mistake.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per tactic name, effective date, dbt_valid_from, dbt_valid_to |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description

See [Tactic Name](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping_history#tactic_name) for details.

See [Effective Date](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping_history#effective_date) for details.

See [dbt_valid_from](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping_history#dbt_valid_from) for details.

See [dbt_valid_to](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping_history#dbt_valid_to) for details.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
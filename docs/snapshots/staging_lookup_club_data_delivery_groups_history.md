{% docs staging_lookup_club_data_delivery_groups_history %}
{% raw %}

# Club Data Delivery Group History

![last updated](assets/update_badges/staging_lookup_club_data_delivery_groups_history.svg)

This table contains *historical* information from the `club_data_delivery_groups` table, 
which was originally created for the reporting layer so that data from gold_policy_parties and 
gold_policies can be passed along to the appropriate club groups. The 'current' table can be found here:
[club_data_delivery_groups](#!/model/model.aaa_life_data_platform.staging_lookup_club_data_delivery_groups)

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per club_code + delivery_group + deliverable + dbt_valid_from + dbt_valid_to |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
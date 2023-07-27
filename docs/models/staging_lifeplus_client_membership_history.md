{% docs staging_lifeplus_client_membership_history %}
{% raw %}

# Staging Lifeplus Client Membership History

![last updated](assets/update_badges/staging_lifeplus_client_membership_history.svg)

Club membership changes that have occurred over time.

For bulk insertions of new membership numbers, the process of writing to this table was turned off.
Because of this, we may not have the initial load of those membership numbers in this table, but 
will see change records for when those records were updated individually later on.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per client_number + update_date_timestamp |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
[Client Number](#!/model/model.aaa_life_data_platform.gold_services_integrated_offer#party_number)

[Update Date](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_membership_history#update_date)

[Update Timestamp](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_membership_history#update_time)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
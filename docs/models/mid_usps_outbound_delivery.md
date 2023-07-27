{% docs mid_usps_outbound_delivery %}
{% raw %}

# USPS Outbound Delivery

![last updated](assets/update_badges/mid_usps_outbound_delivery.svg)

An intermediate table used in creating gold.messages.

This model determines the delivery date of the broadlog message by 
selecting the earliest "delivered" scan from mid_usps_usps_final_scans 
and using its scan date.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per {broadlog_id, delivered_date, outbound_is_delivered} |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
...


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs mid_usps_inbound_delivery %}
{% raw %}

# USPS Inbound Delivery

![last updated](assets/update_badges/mid_usps_inbound_delivery.svg)

An intermediate table used in creating gold.messages. 

This model provides a picture of the Return Mail status by determining:
 - the first inbound scan date (when did we first see it in the inbound stream?)
 - the latest inbound scan date and zip code (when was it last scanned, and where did that happen?)
 - whether the return mail has arrived at the final destination where Exela picks it up


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per {broadlog_id, first_inbound_scan_date, last_inbound_scan_date, last_inbound_scan_zip, has_return_envelope_arrived} |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
...


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
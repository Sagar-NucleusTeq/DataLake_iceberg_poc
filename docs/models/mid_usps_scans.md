{% docs mid_usps_scans %}
{% raw %}

# USPS Scans

![last updated](assets/update_badges/mid_usps_scans.svg)

An intermediate table used in creating gold.messages.

This model identifies which scans are match our criteria for being 
considered "delivered", and the chronological order of scans that meet 
that critera, per broadlog.  To be considered "delivered", the scan must 
meet one of the following criteria:
 - if the scan's operation code stops the clock
 - if the mail level of the scan is "Delivered" or "Out for Delivery"
 - if the scan is the last scan for the broadlog and the mail level is "Arrival"


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per {broadlog_id, is_inbound, scan_sequence}|
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
...


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
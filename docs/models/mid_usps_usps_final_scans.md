{% docs mid_usps_usps_final_scans %}
{% raw %}

# USPS Final Scans

![last updated](assets/update_badges/mid_usps_usps_final_scans.svg)

An intermediate table used in creating gold.messages.

This model links USPS Informed Visibility scans with direct mail marketing 
promotions. Serial numbers can be re-used so the mapping logic links the scan 
to the promotion if the scan occurs between 30 days before the promotion's touch 
start date and 90 days after the promotion's touch start date.

Additionally, this model identifies if a scan is inbound or outbound, based on 
a service type identifier code ('052' = Return Mail / Inbound),
and for all scans related to an individual promotion, identifies the chronological 
order of scans and the reverse chronological order of scans.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per {broadlog_id, is_inbound, closing_sequence} |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
...


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
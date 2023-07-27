{% docs mid_usps_broadlog_iv_summary %}
{% raw %}

# USPS Broadlog IV Summary

![last updated](assets/update_badges/mid_usps_broadlog_iv_summary.svg)

An intermediate table used in creating gold.messages.

This model summarizes main benchmark scan dates about the outbound and 
inbound mail scans by broadlog. It also calculates the actual delivery 
deadline based on the date of the first outbound scan.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per broadlog_id, except for NULL broadlog_ids  |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
...


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
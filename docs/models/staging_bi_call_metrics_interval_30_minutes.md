{% docs staging_bi_call_metrics_interval_30_minutes %}
{% raw %}

# Call Metrics by Call Type ID and Timezone in 30-Minute Intervals
![last updated](assets/update_badges/staging_bi_call_metrics_interval_30_minutes.svg)

This table comes from `marketingphonedata.dbo.t_call_type_interval` in PRDSQL1. It includes 
a number of metrics for AAA Life's phone call data to all parts of the business. 

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per call_date_time + call_type_id + call_time_zone |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description 
**Call Date Time**:
This is a field to track the date and time of calls to the nearest half hour in the 
staging_bi_call_metrics_interval_30_minutes model. 

**Call Type ID**:
This is a unique identifier for the call type, and therefore which routing script was
used to route this call.

**Call Time Zone**:
The time zone for the dates and time. This field contains is numeric values. The value is
the offset in minutes from UTC (formerly called GMT).

For example, a '300' in this field represents the time zone that is 5 hours different from
UTC and a '240' in this field represents the time zone that is 4 hours different from UTC.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
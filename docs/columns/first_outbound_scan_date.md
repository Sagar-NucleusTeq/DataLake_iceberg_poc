{% docs first_outbound_scan_date %}
{% raw %}

<a name="first_outbound_scan_date"></a>
# First Outbound Scan Date

The date of the first USPS IV scan for a given message. This is the first date where we have
record that a message has entered the postal stream. Null if is_sent was determined only because
returning scans were located. (i.e. no outbound scan was located for the broadlog_id.)

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
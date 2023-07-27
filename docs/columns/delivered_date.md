{% docs delivered_date %}
{% raw %}

# Delivered Date

The date of the USPS IV delivery record for a given message.  If a specific delivery record is not received but we received a 'stop the clock' record from USPS (which indicates that a message has most likely been delivered), the date of that record is used. If no USPS delivery scans are found for this message but there is a returning mail scan for this item (the customer sending back their application), then this field will remain null even though 'is_delivered' changes to True.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
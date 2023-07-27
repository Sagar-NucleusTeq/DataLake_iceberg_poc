{% docs usps_scan_key %}
{% raw %}

<a name="usps_scan_key"></a>
# USPS Scan Key
A surrogate key for this table, consisting of a hashed combination of the IMB 
tracking code, scanned_at datetime, and the file name from which the record was
sourced.  Uniquely identifies records in this table. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

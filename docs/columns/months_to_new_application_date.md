{% docs months_since_new_application_entry_date %}
{% raw %}

<a name="months_since_new_application_entry_date"></a>
# Number of months since the policy application entry date

This field measures the number of months between the DBT refresh date and the application entry date. This field
facilitates filtering pairs of new and replaced policies based on the time that has elapsed since the new policy's
application entry date.

This field is calculated as MONTHS_BETWEEN({current date} - {application entry date}). Assuming there are no invalid application entry
date values, this number should never be negative.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
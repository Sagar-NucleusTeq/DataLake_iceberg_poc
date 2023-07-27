{% docs months_between_replaced_surrender_date_new_application_date %}
{% raw %}

<a name="months_between_replaced_surrender_date_new_application_date"></a>
# Number of months between the replaced policy's surrender date and the new policy's application entry date

This field was developed to facilitate reporting on replacement policies. It is calculated as:
MONTHS_BETWEEN({replaced policy's surrender date} - {new policy's application entry date}). Please note that:
* Values > 0 indicate that the replaced policy's surrender date occurred **after** the new policy's application entry
date; and
* Values < 0 indicate that the replaced policy's surrender date occurred **prior** to the new policy's application 
entry date.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
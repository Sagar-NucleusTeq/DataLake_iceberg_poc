{% docs term_period %}
{% raw %}

<a name="term_period"></a>
# Term Period

The length of time for which premiums are level for this plan

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs term_period_years %}
{% raw %}

<a name="term_period_years"></a>
# Term Period Years

The numeric value of term period without the unit year. For example, if term period is 10 years, 
term period years will be 10.

Note: Only term periods with value of 10, 15, 20, 25, 30 years have a valid term period years field. 
If term period is "ART", then term period years is set to 1. If term period is NULL, the term period
years is NULL. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
{% docs term_end_date %}
{% raw %}

<a name="term_end_date"></a>
# Term End Date
The date when a term policy ends. This date is included in mid_agent_leads_fast and 
mid_agent_leads_lifeplus, it is calculated by adding term period years to the year of the effective 
date of the policy. If the effective date is on 2/29 in a leap year, but after adding term period 
years, the year of term end date is not a leap year, the date will become 3/1.

For the policies with 10, 15, 20, 25, and 30 years term period, term end date equals to the 
effective date with the term period years added to the effective date year. For the policies with 
'ART' as the term period, the term end date is the effective date with one year added to the 
effective date year.


### Security and Usage Information
|     |              |
| --- |--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs months_to_term_end_date %}
{% raw %}

<a name="months_to_term_end_date"></a>
# Months To Term End Date
The number of months until the term_end_date from the last_refreshed_at date, which is the date the
agent lead list was generated.

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

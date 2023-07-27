{% docs base_rider_code %}
{% raw %}

<a name="base_rider_code"></a>
# Base Rider Code

The sequence of the benefit on the policy contract. The value can be double digits or single digit.
A value of "00" or "0" is for the base benefit and values "01" through "98", including "1" through 
"9", are for riders. "99" is reserved for system use.


Rider codes are ordinal and an indication that riders are present. To derive meaning, you would have
to look at the rider plan code against the plan code lookup table.

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %} 
{% enddocs %}

{% docs base_rider_code_agents %}
{% raw %}

<a name="base_rider_code_agents"></a>
# Base Rider Code - Agent

Originally meant to be [Base/Rider Code](#!/exposure/docs.business_glossary.glossary#base_rider_code), 
this field has no direct relationship to the Base/Rider Codes on the policy. There are no 
riders except in a few very old cases. The multi-writing agent table (`CASMWAGT` or 
`staging_lifeplus.inforce_contract_agents`) in modern usage assigned agents at the 
contract level, and all base rider codes in this(ese) table(s) since 2001 have been 99 to indicate that base contract level.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal|
| Usage Requirement:       | Deidentified |

{% endraw %} 
{% enddocs %}
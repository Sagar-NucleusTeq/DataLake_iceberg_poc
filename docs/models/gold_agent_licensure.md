{% docs gold_agent_licensure %}
{% raw %}

# Agent Licensure

![last updated](assets/update_badges/gold_agent_licensure.svg)

This consumption layer table summarizes information about an agent's licensure status. 
AAA Life, as well as the Auto Clubs, employ agents that sell life and/or health insurance. Their licenses to sell that insurance are specific to individual states, so multiple licenses are required to sell in multiple states.

The table only contains "current" state, so it calculates whether the agent has a license in an "active" status for a particular product line (Life, Health) and in a specific state, as of today's date.



### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per agent number, state |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

### Grain Description
The grain of this table is one record per Agent Number and State. 
Licensure is granted at the State level, not the individual, so a single agent could be licensed to sell 
a product in one state but not the other.


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

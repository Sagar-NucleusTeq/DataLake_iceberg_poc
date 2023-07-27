{% docs settled_production %}
{% raw %}

<a name="settled_production"></a>
# Settled Production
The amount of production this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs budget_settled_production %}
{% raw %}

# Budget Settled Production
Budget estimated total settled production by plan code, club_code and sub distribution channel.
Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs actual_settled_production_sum %}
{% raw %}

<a name="actual_settled_production_sum"></a>
# Actual Settled Production
The actual amount of production this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs target_settled_production_sum %}
{% raw %}

<a name="target_settled_production_sum"></a>
# Targeted Settled Production
The expected amount of production this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs agent_settled_production %}
{% raw %}

# Agent Settled Production
The amount of settled production that the agent is credited in this transaction. 
Agent commission is based on this.
Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy.

Agent production, also called 'net' production is very close to the gross 
production amount with first year lapses and cancellations accounted for - meaning that if a policy 
lapses within its first year there will be a reversing entry in the agent production field that 
removes the months of unpaid premium. The reversed, negative amount in that transaction would offset 
with the upfront first year premium credited at time of sale for a "net" number for premium paid 
throughout the first year, accounting for lapses/cancellations.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs dsu_settled_production %}
{% raw %}

# DSU Settled Production
The amount of settled production that the DSU agent is credited in this transaction.
DSU commission is based on this.
Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs mdrt_settled_production %}
{% raw %}

# Million Dollar Round Table Settled Production
MDRT - Million Dollar Round Table - an external ranking of an agent. This field is the 
amount of production from a policy that will be counted for MDRT in ranking the agent.
Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs ranking_settled_production %}
{% raw %}

# Ranking Settled Production
Ranking is referring to the internal ranking of the agent. This field is the amount of settled 
production that the system counts for ranking of the agent.
Production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy. 

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs forecasted_settled_production %}
{% raw %}

<a name="forecasted_settled_production"></a>
# Forecasted Settled Production
The forecasted amount of production from settled policies expected to be received by AAA Life by 
365 days after the campaign begins, based on settled production received so far and historical 
campaign result trends.

Production is calculated in the Policy Administration System (PAS) from the total first-year 
premium paid on a policy, as well as other fees paid for the policy.

**Note:** Forecasted settled production cannot be less than 0.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

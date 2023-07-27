{% docs settled_count %}
{% raw %}

# Settled Policy Count
The number of policies this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

A life insurance policy, in AAA Life's case, is a contract between a customer and AAA Life 
Insurance Company. For life insurance policies, in exchange for premium payments, AAA Life will 
pay a lump sum known as a death benefit to the insured's beneficiaries after their death. In the
case of annuities, the customer pays a lump sum at the time of settlement and then they will 
receive regular payments from AAA Life immediately or at a pre-specified time.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs budget_settled_count %}
{% raw %}

# Budget Settled Count
Budget estimated total number of settled policies by plan code, club_code and 
sub_distribution_channel.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}


{% docs actual_settled_policy_count %}
{% raw %}

# Actual Settled Policy Count
The actual number of policies this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

A life insurance policy, in AAA Life's case, is a contract between a customer and AAA Life 
Insurance Company. For life insurance policies, in exchange for premium payments, AAA Life will 
pay a lump sum known as a death benefit to the insured's beneficiaries after their death. In the
case of annuities, the customer pays a lump sum at the time of settlement and then they will 
receive regular payments from AAA Life immediately or at a pre-specified time.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs target_settled_policy_count %}
{% raw %}

# Targeted Settled Policy Count
The expected number of policies this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

A life insurance policy, in AAA Life's case, is a contract between a customer and AAA Life 
Insurance Company. For life insurance policies, in exchange for premium payments, AAA Life will 
pay a lump sum known as a death benefit to the insured's beneficiaries after their death. In the
case of annuities, the customer pays a lump sum at the time of settlement and then they will 
receive regular payments from AAA Life immediately or at a pre-specified time.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs agent_settled_count %}
{% raw %}

# Agent Settled Count
The amount of settled policies that the agent is credited in this transaction. Partial counts 
means that there are more than 1 agent who worked on this case, thus they get credited partially 
for the portion that they worked on.

Agent settled count, also called 'net' settled count is very close to the gross 
settled count amount with first year lapses and cancellations accounted for - meaning that if a policy 
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

{% docs dsu_settled_count %}
{% raw %}

# DSU Settled Count
The amount of settled policies that the DSU agent is credited in this transaction. Partial 
counts means that there are more than 1 agent who worked on this case, thus they get credited 
partially for the portion that they worked on.


### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs ranking_settled_count %}
{% raw %}

# Ranking Settled Count
Ranking is referring to the internal ranking of the agent. This field is the proportion of 
settled policy that the system admitted for ranking of the agent.


### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs forecasted_settled_policies %}
{% raw %}

<a name="forecasted_settled_policies"></a>
# Forecasted Settled Policies
The forecasted number of policies expected to be received by AAA Life by 365 days after the 
campaign begins, based on current number of policies settled and historical campaign result trends.

A life insurance policy, in AAA Life's case, is a contract between a customer and AAA Life 
Insurance Company. For life insurance policies, in exchange for premium payments, AAA Life will pay 
a lump sum known as a death benefit to the insured's beneficiaries after their death. In the case 
of annuities, the customer pays a lump sum at the time of settlement and then they will receive 
regular payments from AAA Life immediately or at a pre-specified time.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


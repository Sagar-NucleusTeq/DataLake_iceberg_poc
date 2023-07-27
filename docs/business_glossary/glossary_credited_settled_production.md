{% docs glossary_credited_settled_production %}
{% raw %}

<a name="credited_settled_production"></a>
# Credited Settled Production

### Area of the Business
[DSU](#!/exposure/docs.business_glossary.glossary#DSU)

### Definition
See [Lead Cohort](#!/exposure/docs.business_glossary.glossary#lead_cohort_reports),
[Opportunity Cohort](#!/exposure/docs.business_glossary.glossary#opportunity_cohort_reports),
or [Calendar](#!/exposure/docs.business_glossary.glossary#calendar_reports)
for definitions of these terms used below. 

_Lead Cohort Definition_: 
Total [production](#!/exposure/docs.business_glossary.glossary#production)
for the policy. Sum of the [production](#!/exposure/docs.business_glossary.glossary#production)
associated with the policies that were settled as a direct 
result of a lead created and processed within the given calendar period. Policies can be settled 
by more than one agent meaning that each agent will receive part of the production amount from 
the policy. Results should NOT align with the Daily Sales Production report and similar reports 
from BI. 

_Opportunity Cohort Definition_: 
Total [production](#!/exposure/docs.business_glossary.glossary#production)
for the policy. Sum of the [production](#!/exposure/docs.business_glossary.glossary#production)
associated with the policies that were settled as a direct result of an opportunity created and 
processed within the given calendar period. Policies can be settled by more than one agent 
meaning that each agent will receive part of the production amount from the policy.
Results should NOT align with the Daily Sales Production report and similar reports from BI.

_Calendar Definition_:  
Total [production](#!/exposure/docs.business_glossary.glossary#production)
for the policy. Sum of the [production](#!/exposure/docs.business_glossary.glossary#production)
associated with policies settled in a given calendar period. Production is grouped into calendar 
periods via the transaction date from the production table. Policies can be settled by more than 
one agent meaning that each agent will receive part of the production amount from the policy.
Results should align with the Daily Sales Production report and similar reports from BI, assuming 
filtering and grouping are the same for the reports being compared.

### Calculation
`SUM(credited_settled_production)`

### Rules


### Useful Takeaways
This is a Key Performance Indicator for AAA Life Insurance.


{% endraw %}
{% enddocs %}
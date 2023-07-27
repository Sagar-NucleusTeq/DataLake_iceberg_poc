{% docs glossary_average_credited_production_per_credited_settled_policy %}
{% raw %}

<a name="average_credited_production_per_credited_settled_policy"></a>
# Average Credited Production per Credited Settled Policy

### Area of the Business
[DSU](#!/exposure/docs.business_glossary.glossary#DSU)

### Definition
See [Lead Cohort](#!/exposure/docs.business_glossary.glossary#lead_cohort_reports),
[Opportunity Cohort](#!/exposure/docs.business_glossary.glossary#opportunity_cohort_reports),
or [Calendar](#!/exposure/docs.business_glossary.glossary#calendar_reports)
for definitions of these terms used below. 

_Lead Cohort Definition_: 
Total settled [production](#!/exposure/docs.business_glossary.glossary#production) 
that was a direct result of a lead created and processed within the given calendar period 
divided by settled applications that were a direct result of a lead created and processed 
within the given calendar period. Policies can be settled by more than one agent meaning that 
each agent will receive part of the production amount from the policy and each agent will 
receive partial credit for the policy (the denominator can contain a decimal).

_Opportunity Cohort Definition_: 
Total settled [production](#!/exposure/docs.business_glossary.glossary#production) 
that was a direct result of an opportunity created and processed within the given calendar 
period divided by settled applications that were a direct result of the opportunity. Policies 
can be settled by more than one agent meaning that each agent will receive part of the 
[production](#!/exposure/docs.business_glossary.glossary#production) 
amount from the policy and each agent will receive partial credit for the policy (the 
denominator can contain a decimal).

_Calendar Definition_: 
Total settled [production](#!/exposure/docs.business_glossary.glossary#production) 
in a given calendar period divided by settled applications in the same calendar period. Policies 
can be settled by more than one agent meaning that each agent will receive part of the 
[production](#!/exposure/docs.business_glossary.glossary#production) 
amount from the policy and each agent will receive partial credit for the policy (the denominator 
can contain a decimal).

### Calculation
`SUM(production)/SUM(submitted_applications)`

### Rules


### Useful Takeaways
_Lead Cohort_: Measures the typical case size for applications settled 
from leads created in the period, and is a measure of agent effectiveness. 

_Opportunity Cohort_: Measures the typical case size for applications settled from 
opportunities created in the period and is a measure of agent effectiveness.

_Calendar_: Measures the typical case size for applications settled in the period, 
and is a measure of agent effectiveness.

{% endraw %}
{% enddocs %}
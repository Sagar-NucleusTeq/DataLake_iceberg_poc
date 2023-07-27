{% docs glossary_credited_settled_policies %}
{% raw %}

<a name="credited_settled_policies"></a>
# Credited Settled Policies

### Area of the Business
[DSU](#!/exposure/docs.business_glossary.glossary#DSU)

### Definition
See [Lead Cohort](#!/exposure/docs.business_glossary.glossary#lead_cohort_reports),
[Opportunity Cohort](#!/exposure/docs.business_glossary.glossary#opportunity_cohort_reports),
or [Calendar](#!/exposure/docs.business_glossary.glossary#calendar_reports)
for definitions of these terms used below. 

_Lead Cohort Definition_:  
Count of policies that were settled (and the first premium was paid) in 
the policy administration system (PAS) and that were a direct result of a lead created and 
processed within the given calendar period. Results will NOT align with the Daily Sales Production 
report and similar reports from BI. Those reports count policies that were actually settled in 
each calendar period. Policies can be settled by more than one agent meaning that each agent will 
receive partial credit for the policy and this field can contain a decimal.

_Opportunity Cohort Definition_: 
Count of policies that were settled (and the first premium was 
paid) in the policy administration system (PAS) and that were a direct result of an opportunity 
created and processed within the given calendar period. Results will NOT align with the Daily 
Sales Production report and similar reports from BI. Those reports count policies that were 
actually settled in each calendar period. Policies can be settled by more than one agent meaning 
that each agent will receive partial credit for the policy and this field can contain a decimal.

_Calendar Definition_: 
Count of policies that were settled (and the first premium was paid) in 
the policy administration system (PAS) during a given calendar period. Results should align with 
the Daily Sales Production report and similar reports from BI, assuming filtering and grouping 
are the same for the reports being compared. Policies can be settled by more than one agent 
meaning that each agent will receive partial credit for the policy and this field can 
contain a decimal.

### Calculation
`SUM(settled_policies)`

### Rules


### Useful Takeaways


{% endraw %}
{% enddocs %}
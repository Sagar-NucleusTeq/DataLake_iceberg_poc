{% docs glossary_credited_submitted_applications %}
{% raw %}

<a name="credited_submitted_applications"></a>
# Credited Submitted Applications

### Area of the Business
[DSU](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#DSU)

### Definition
See [Lead Cohort](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#lead_cohort_reports),
[Opportunity Cohort](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#opportunity_cohort_reports),
or [Calendar](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#calendar_reports)
for definitions of these terms used below. 

_Lead Cohort Definition_: 
Count of applications entered into the policy administration system 
(PAS) that can be tracked as a direct result of a lead created and processed within the given 
calendar period. An application is a formal request from an outside entity to hold a life 
insurance policy with AAA Life where the applicant answers a series of questions about their 
health and personal information. Applications can be submitted as a result of more than one 
agent meaning that each agent will receive partial credit for the application and this field 
can contain a decimal.

_Opportunity Cohort Definition_: 
Count of applications entered into the policy administration 
system (PAS) that can be tracked as a direct result of an opportunity created and processed within 
the given calendar period. An application is a formal request from an outside entity to hold a 
life insurance policy with AAA Life where the applicant answers a series of questions about their 
health and personal information. Applications can be submitted as a result of more than one agent 
meaning that each agent will receive partial credit for the application and this field can 
contain a decimal.

_Calendar Definition_: 
Count of applications entered into the policy administration system 
(PAS) during the given calendar period. An application is a formal request from an outside 
entity to hold a life insurance policy with AAA Life where the applicant answers a series of 
questions about their health and personal information. Application entry is measured using the 
transaction date from the production table. Applications can be submitted as a result of more 
than one agent meaning that each agent will receive partial credit for the application and this 
field can contain a decimal.

### Calculation
`SUM(submitted_applications)`

### Rules


### Useful Takeaways


{% endraw %}
{% enddocs %}
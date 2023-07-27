{% docs glossary_quoted_opportunities %}
{% raw %}

<a name="quoted_opportunities"></a>
# Quoted Opportunities

### Area of the Business
[DSU](#!/exposure/docs.business_glossary.glossary#DSU)

### Definition
See [Lead Cohort](#!/exposure/docs.business_glossary.glossary#lead_cohort_reports),
[Opportunity Cohort](#!/exposure/docs.business_glossary.glossary#opportunity_cohort_reports),
or [Calendar](#!/exposure/docs.business_glossary.glossary#calendar_reports)
for definitions of these terms used below. 

_Lead Cohort Definition_: 
Count of quoted opportunities created in Salesforce that were a direct 
result of a lead, created and processed within the given calendar period. Anytime a quote is 
given to a prospective lead in the DSU, an opportunity is created in salesforce. If more than 
one quoted opportunity is created from a lead, both are counted.

_Opportunity Cohort Definition_: 
Count of quoted opportunities created in Salesforce created 
and processed within the given calendar period. Anytime a quote is given to a prospective lead 
in the DSU, an opportunity is created in salesforce. If more than one quoted opportunity is 
created from a lead, both are counted.

_Calendar Definition_: 
Count of quoted opportunities created in Salesforce within the given 
calendar period. Anytime a quote is given to a prospective lead in the DSU, an opportunity is 
created in salesforce. If more than one quoted opportunity is created from a lead, both are 
counted as long as both were created in the given calendar period.

### Calculation
`SUM(quoted_opportunities)`

### Rules
Quoted opportunities are created during the application process in order to give the customer 
a better understanding of the rate they should expect to pay for premiums for their policy.
This means that all applications should have an opportunity associated with them, and is the
primary reason AAAL sometimes starts the funnel with quoted opportunities instead of leads. 

### Useful Takeaways
In general, the number of quoted opportunities can tell you the degree of interest of the 
prospective customer.

{% endraw %}
{% enddocs %}
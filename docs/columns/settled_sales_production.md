{% docs settled_sales_production %}
{% raw %}

# Settled Sales Production
The amount of sales production this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

Sales production defers from [Settled Production](#!/exposure/docs.business_glossary.glossary#production) 
in that it increases the converted policies to their annualized_premium amount, and it gives 
Annuities 10% of their settled premium instead of the 6% which is used in the gross production.

Gross production is calculated in the Policy Administration System (PAS) from the total 
first-year premium paid on a policy, as well as other fees paid for the policy.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}
{% docs mid_bi_production_converted_policies %}
{% raw %}

# BI Production Converted Policies

![last updated](assets/update_badges/mid_bi_production_converted_policies.svg)

The goal of this table is to capture the original settled annualized_premium for converted policies for the
purpose of using it to calculate the sales metric in production transactions. This is
necessary because it's possible that annualized_premium can change over time. We want only the 
original premium when the policy first converted.

This table is incrementally built based on policies that appear in staging_bi.premium_production.
It joins to gold_policies to see if the policy conversion_type is "Conversion" or "Internal Replacement", 
and if it is then the policy along with its annual_premium (and other attributes) are added to this table. 
Once the policy has been added then it will never be updated unless a full refresh is done on this table.

The other important thing this table does is calculate the sales adjustment amount needed in
production to accurately represent the submitted/settled sales production metrics. This table
is UNION'ed with the gold production table in order to merge the sales adjustments for converted
policies into the final production transactions table.

### Security and Usage Information
|     |                         |
| --- |-------------------------|
| Grain:                   | 1 row per policy_number |            
| Security Classification: | Confidential            |
| Usage Requirement:       | PII                     |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

{% docs gold_production_by_transaction %}
{% raw %}

# Production By Transaction

![last updated](assets/update_badges/gold_production_by_transaction.svg)

This table includes submits/settled premium, production, and counts per transaction applied to AAAL. 
However, this table should not be used to determine policy counts. Instead, please use the `gold_policies`
table for policy counts.

**Notes:**
1. `sales_production_product_group` should not contain NULL values in any record where
the transaction date is on or after 2021-01-01. While theoretically this field should 
always be populated, the business has not had the resources to investigate NULL values 
that occur prior to 2021.
2. Settled dates that come in as '1900-01-01' are manually changed to NULLs in
staging_bi.premium_production before coming into this table.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | One record per transaction. A production transaction is semi-unique per policy number, transaction date, transaction source, plan code, company, club code, distribution channel, sub distribution channel, and agent number, but similar or identical transactions can and do exist. |            
| Security Classification: | Confidential |
| Usage Requirement:       | PII |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
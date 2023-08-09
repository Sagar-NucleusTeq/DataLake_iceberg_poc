{% docs gold_direct_mail_campaign_performance_history %}
{% raw %}

# Direct Mail Campaign Performance History (Snapshot Table)

![last updated](assets/update_badges/direct_mail_campaign_performance_history.svg)

This table captures the *history* of all of the changes for the model
gold_direct_mail_campaign_performance which includes the following information: 

Performance of AAA Life direct mail campaigns for 2021 and on. This table includes the
performance of actual campaigns vs targets for those campaigns. Submitted applications,
settled policies, and settled production is included. The data in this table is limited
to campaigns for financial years 2021 and later. 

This table sources from Messages, Sales plan, and Mail File Volume. For the table's
dimensions, the field values are first retrieved from Messages, then Sales plan if the
Messages field is null, and then Mail File Volume if the Sales plan field is null.

The decision to limit results to 2021 or later was made in May 2021 by Emily Heinlein due to
issues with incomplete or inaccurate information about Informed Delivery and Sales Plan for
campaigns prior to 2021.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per campaign + recipient_club_state + recipient_club_code + recipient_state + tactic_type + message_product_group + dsse_reporting_group + campaign_finance_year + campaign_number + dbt_valid_from + dbt_valid_to |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |

### Grain Description
This table is the history of all transactions from a table that includes a slight roll
up to the level which we budget at to be able to report results. So it is at a level of
company, product and tactic, and club state for every campaign of the year.   

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %} 

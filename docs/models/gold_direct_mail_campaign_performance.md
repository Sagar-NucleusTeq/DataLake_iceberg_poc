{% docs gold_direct_mail_campaign_performance %}
{% raw %}

# Direct Mail Campaign Performance

![last updated](assets/update_badges/gold_direct_mail_campaign_performance.svg)

Performance of AAA Life direct mail campaigns for 2021 and on. This table includes the performance of actual campaigns 
vs targets for those campaigns. Submitted applications, settled policies, and settled production is included. The data 
in this table is limited to campaigns for financial years 2021 and later. 

This table sources from Messages and Sales plan. For the table's dimensions, the field values are first retrieved from 
Messages, then Sales plan if the Messages field is null.

The decision to limit results to 2021 or later was made in May 2021 by Emily Heinlein due to issues with incomplete or 
inaccurate information about Informed Delivery and Sales Plan for campaigns prior to 2021.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per campaign_finance_year + campaign_number + recipient_club_code + recipient_state + tactic_type + message_product_group |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |

### Grain Description
This table is a slight roll up to the level which we budget at to be able to report results.
So it is at a level of product, tactic, club_code, and state for every campaign of the year.   

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %} 
{% docs mid_direct_mail_messages %}
{% raw %}

# Messages

![last updated](assets/update_badges/mid_direct_mail_messages.svg)

Direct mail marketing message information aggregated to the grain of campaign name, campaign number, 
campaign finance year, resident club code, state, tactic name, product type, and tactic type.

The tactic "GIWL to Term Declined (GIWLTDCS) Trigger" and other mail-based trigger tactics, are excluded from this 
table, as they are not included in the budget, which this table joins to for performance comparison downstream.

The decision to limit results to 2021 or later was made in May 2021 by Emily Heinlein due to
issues with incomplete or inaccurate information about Informed Delivery and Sales Plan for
campaigns prior to 2021.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per campaign name, campaign number, campaign finance year, resident club code, state, tactic |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
This table rolls up the data to the level which we budget at to be able to report campaign 
performance in a downstream model. So it is at a level of club, state, and tactic for every direct 
mail campaign of the year.    


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
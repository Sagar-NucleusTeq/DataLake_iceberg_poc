{% docs mid_direct_mail_sales_plan %}
{% raw %}

# Sales Plan

![last updated](assets/update_badges/mid_direct_mail_sales_plan.svg)

Projections of mail volumes, submitted and settled policy counts, and production
dollars for direct mail campaigns. Projection modes are either sales plans, forecasts, or assumptions.

Forecast mode is when a campaign has been dropped for at least 30 days. This projection mode takes into account the actual results.

Assumption mode is when a campaign has selected for volume but has not been dropped. This projection mode takes into account the actual volume.

Sales plan mode is for campaigns that does not belong to any of the above categories. The sales plan projection is applied.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per campaign name, campaign number, campaign finance year, club code, state, and tactic |
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
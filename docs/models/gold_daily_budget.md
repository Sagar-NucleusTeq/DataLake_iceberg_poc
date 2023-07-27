{% docs gold_daily_budget %}
{% raw %}

# Daily Budget
This table contains the production/count budget for settled and submitted policies broken down by 
day as to allow for performance benchmarking against a period to date benchmark in our daily sales 
 production report.

This table contains several additional dimensions that were not previously available in our old
budget load process including the following:

- response_channel_category
- response_channel
- finance_company_code
- reporting_group_club_level
- reporting_group_company_level
- reporting_group_insurance_company_level
- event_date (daily)

Note: This table contains only budget amounts where the event date is the same as the sales plan year
which would exclude any carry over events. You can see the carry over events in
[staging_dsse_daily_budget_history](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history).

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per sales_plan_year + version  + event_year + event_month_number + event_day + lead_source + club_code + plan_code |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description

See [sales_plan_year](#!/model/model.aaa_life_data_platform.gold_daily_budget#sales_plan_year)

See [version](#!/model/model.aaa_life_data_platform.gold_daily_budget#version)

See [sales_plan_year](#!/model/model.aaa_life_data_platform.gold_daily_budget#sales_plan_year)

See [event_year](#!/model/model.aaa_life_data_platform.gold_daily_budget#event_year)

See [event_month_number](#!/model/model.aaa_life_data_platform.gold_daily_budget#event_month_number)

See [event_day](#!/model/model.aaa_life_data_platform.gold_daily_budget#event_day)

See [lead_source](#!/model/model.aaa_life_data_platform.gold_daily_budget#lead_source)

See [club_code](#!/model/model.aaa_life_data_platform.gold_daily_budget#club_code)

See [plan_code](#!/model/model.aaa_life_data_platform.gold_daily_budget#plan_code)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
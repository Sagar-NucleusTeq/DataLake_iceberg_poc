{% docs daily_budget %}
{% raw %}

# Daily Budget Seed
This seed table contains the production budget broken down by day as to allow for performance
benchmarking against a period to date benchmark in our daily sales production report.

This table also allows for splits by lead source code and daily which was not previously available
in the previous version of the budget load file.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per sales_plan_year + version + campaign_year + campaign_number + agent_type + is_rider_or_upsell + event_year + event_month_number + event_day + lead_source + club_code + plan_code |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description

See [sales_plan_year](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#sales_plan_year)

See [version](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#version)

See [sales_plan_year](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#sales_plan_year)

See [campaign_number](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#campaign_number)

See [campaign_year](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#campaign_year)

See [agent_type](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#agent_type)

See [is_rider_or_upsell](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#is_rider_or_upsell)

See [event_year](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#event_year)

See [event_month_number](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#event_month_number)

See [event_day](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#event_day)

See [lead_source](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#lead_source)

See [club_code](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#club_code)

See [plan_code](#!/model/model.aaa_life_data_platform.staging_dsse_daily_budget_history#plan_code)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
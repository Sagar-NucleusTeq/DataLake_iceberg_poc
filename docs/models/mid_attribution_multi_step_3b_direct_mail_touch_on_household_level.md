{% docs mid_attribution_multi_step_3b_direct_mail_touch_on_household_level %}
{% raw %}

# Direct Mail Step 3b Touch on Household Level

![last updated](assets/update_badges/mid_attribution_direct_mail_step_3b_direct_mail_touch_on_household_level.svg)

Holding place for the messages tied to policies during step 3b. Step
3b attempts to match to the packages mailed to the insured's 
household_key prior to the application date. This table is for multi-touch attribution
so there will be multiple matches to a given household_key. Additionally, not just mail
responses are considered for attribution, but rather policies from all response channels. 
Finally, this table contains only those records that were not matched in steps 1, 2, or 3a.

For complete logic documentation please see this confluence page: 
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

Note: This table only contains policies that are known to have marketing 
sent after the launch of the MDE (April 2019). These policies are excluded
in step 1. Additionally, this table only contains policies that match in step 3b, 
policies without matches are excluded as well..

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per policy + broadlog_id|
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
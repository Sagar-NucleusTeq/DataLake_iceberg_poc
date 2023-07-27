{% docs mid_attribution_multi_step_4b_email_touch_on_household_level %}
{% raw %}

# Email Step 4b Touch on Household Level

![last updated](assets/update_badges/mid_attribution_direct_mail_step_4b_email_touch_on_household_level.svg)

Holding place for the messages tied to policies during step 4b. Step
4b attempts to match to the email messages sent to the insured's 
household_key prior to the application date. This table is for multi-touch attribution
so there will be multiple matches to a given household_key. Additionally, not just digital
responses are considered for attribution, but rather policies from all response channels. 
Finally, this table contains only those records that were not matched in steps 4a (also 1, 2, 3
by definition of the fact that they aren't email messages).

For complete logic documentation please see the second table on
this confluence page: 
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

Note: This table only contains policies that are known to have marketing 
sent after the launch of the MDE (April 2019). These policies are excluded
in step 1. Additionally, this table only contains policies that match in step 4b, 
policies without matches are excluded as well.

Also, 4 distinct `attributed_broadlog_id` values were identified as being associated with null
`attributed_keycode` values: '720997588', '987842070', '988605072', '988516205'.
While we investigate the root cause of this metadata issue, we have excluded these four values from
the `not_null` test on `attributed_keycode`.

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
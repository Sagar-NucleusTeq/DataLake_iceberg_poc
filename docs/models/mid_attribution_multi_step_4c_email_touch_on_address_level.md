{% docs mid_attribution_multi_step_4c_email_touch_on_address_level %}
{% raw %}

# Email Step 4c Touch on Address Level

![last updated](assets/update_badges/mid_attribution_direct_mail_step_4c_email_touch_on_address_level.svg)

Holding place for the messages tied to policies during step 4c. Step
4c attempts to match to the email messages sent to the insured's 
address_key prior to the application date. This table is for multi-touch attribution
so there will be multiple matches to a given address_key. Additionally, not just digital
responses are considered for attribution, but rather policies from all response channels. 
Finally, this table contains only those records that were not matched in steps 4a or 4b (also 1, 2, 3
by definition of the fact that they aren't email messages).

For complete logic documentation please see this confluence page: 
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

Note: This table only contains policies that are known to have marketing 
sent after the launch of the MDE (April 2019). These policies are excluded
in step 1. Additionally, this table only contains policies that match in step 4c, 
policies without matches are excluded as well.

Also, 2 `attributed_broadlog_id` values are associated with null `attributed_keycode` values: 
'988845865', '988390253'.
While we are identifying the root cause of this metadata issue, these values have been exempted from
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
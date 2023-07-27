{% docs mid_attribution_multi_step_4a_email_touch_on_individual_level %}
{% raw %}

# Email Step 4a Touch on Individual Level

![last updated](assets/update_badges/mid_attribution_email_step_4a_direct_mail_touch_on_individual_level.svg)

Holding place for the messages matched to policies during step 4a. Step
4a attempts to match to the packages mailed to the insured's 
individual_key prior to the application date. This table is for multi-touch attribution
so there will be multiple matches to a given individual_key. Additionally, not just digital
responses are considered for attribution, but rather policies from all response channels. 
Finally, this table contains only email messages which were not considered for steps 1-3.

For complete logic documentation please see this confluence page: 
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

Note: This table only contains policies that are known to have marketing 
sent after the launch of the MDE (April 2019). These policies are excluded
in step 1. Additionally, this table only contains policies that match in step 4a, 
policies without matches are excluded as well.

Also, the following 30 `attributed_broadlog_id` values were found to have null values in 
`attributed_keycode`: '988093390', '988492793', '988817388', '988822925', '988475439', '988860356',
    '987906365', '988515686', '988024978', '988307668', '988485181', '988834921', '988797899', 
    '988848817', '988509455', '987827333', '988234318', '988266445', '988623313', '988164719', 
    '988861712', '988816042', '987808611', '988136272', '988658499', '987981926', '988332921', 
    '988390253', '988516205'.
Until we identify the root cause of this metadata issue, records with these broadlog ids  will be
allowed to have corresponding null keycode values.

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
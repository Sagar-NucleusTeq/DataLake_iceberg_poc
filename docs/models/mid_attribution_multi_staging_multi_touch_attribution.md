{% docs mid_attribution_multi_staging_multi_touch_attribution %}
{% raw %}

# Multi-Touch Attribution Staging Table

![last updated](assets/update_badges/mid_attribution_multi_all_touches.svg)

Table containing all messages linked to a particular policy. Currently this only includes
direct mail and email messages. Records are indexed by distance from application date, meaning
a touch_number of -1 is the last touch. Last touch is not determined by finder number or 
phone number matching. It is simply the last time we marketed to this individual, household,
or address in any order. Additionally, if an individual received two packets for the same campaign
(on the individual, household, or address level), these are counted as two touches because we did 
in fact attempt to contact them twice. This phenomenon can arise due to the rekey. For example,
at the time of mailing we thought we were mailing two different individuals. However, once we
get more information and the individual_keys are rekeyed, it becomes apparent that we mailed
the same person twice.

Logic for attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)


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
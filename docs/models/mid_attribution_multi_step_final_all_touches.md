{% docs mid_attribution_multi_step_final_all_touches %}
{% raw %}

# Multi-Touch Attribution All Touch Table

![last updated](assets/update_badges/mid_attribution_multi_all_touches.svg)

Table containing all records linked to a particular policy. Currently this only includes
direct mail and email messages. Records are indexed by distance from application date, meaning
a touch_number of -1 is the last touch. Last touch is not determined by finder number or 
phone number matching. It is simply the last time we marketed to this individual, household,
or address in any order.

Logic for attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

Note: 34 `attributed_broadlog_id` values are associated with null `attributed_keycode` values. These
broadlog ids originate in the `mid_attribution_multi_step_4a_email_touch_on_individual_level`, 
`mid_attribution_multi_step_4b_email_touch_on_household_level`, and 
`mid_attribution_multi_step_4c_email_touch_on_address_level` models. These broadlog ids are: 
'988845865', '720997588', '987842070', '988605072', '988390253', '988516205', '988407658', 
'988093390', '988492793', '988817388', '988822925', '988475439', '988860356', '987906365', 
'988515686', '988024978', '988307668', '988485181', '988834921', '988797899', '988848817', 
'988509455', '987827333', '988234318', '988266445', '988623313', '988164719', '988861712', 
'988816042', '987808611', '988136272', '988658499', '987981926', '988332921'.

While we investigate the root cause of these `attributed_keycode` values we have exempted the above
`attributed_broadlog_id` values from the `not_null` test on `attributed_keycode`.


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
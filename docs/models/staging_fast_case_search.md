{% docs staging_fast_case_search %}
{% raw %}

# Fast Cases Search

![last updated](assets/update_badges/staging_fast_case_search.svg)

Case object table. Cases are created from submitted applications and represent the underwriting 
phase of the policy issue process.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | Currently 1 record per policy_number + type. There is a possible occurrence of duplicates at policy number level due to policy change. Excluding type = '00000000-0000-0000-0000-000000000006' from policy_number test to eliminate duplicate issue. |            
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

{% docs mid_policy_lifeplus %}
{% raw %}

# LifePlus Policies

![last updated](assets/update_badges/mid_policy_lifeplus.svg)

Table containing policy contract and benefit information from AS400. Will be joined with the
FAST mid table to become policy entity.

This table includes an exclusion for policies that have been converted to FAST.

NOTES: 
1. The `plan_code` in this table will be the inforce product configuration when there
exists a `plan_code` on a settled policy, and if no `plan_code` exists there, this table will
hold the product configuration from the new business record (application).

2. `call_center_agent_number` is available only when the policy was sold by an internal agent (ie, 
DSU or SISU).

3. Testing not_null on application_entry_dates, reporting_group_club_level, 
reporting_group_insurance_company_level and reporting_group_company_level is only done where
application_entry_dates are since 2001 since data before this date are irrelevant for
reporting today. We generally only go back a few years for reports. 
In addition, the policy_numbers '0002667249', '4045040609' are excluded from testing not_null on
application_entry_date, reporting_group_club_level, reporting_group_insurance_company_level
and reporting_group_company_level because they currently (7/26/22) don't have one and cannot be
fixed in the source system. 

**Information from Karen Ouellette on 6/30/22:**
*4045040609*
This policy was stuck in eApp and could not be processed out because the policy was already
inforce. The cause of this issue was researched thoroughly but we could not identify the exact
cause of this issue.  It was considered a “one off” since it never occurred in the past. 
Tyson Skinner worked with NBS personnel to request a cancel/transfer of this policy to resolve
the issues.

*0002667249*
This was a PDA conversion that was done on 7/26/2000 and was then cancelled on 1/08/2001.
There is no way to tell why there is no New Business record.


| policy_number | settled_date  |
| ------------- | ------------- |
|  0002667249   | 2026-12-17    |
|  4045040609   | 2020-10-28    |

4. Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per policy number |
| Security Classification: | SRD   |
| Usage Requirement:       | Sensitive  |

### Grain - Policy Number
See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

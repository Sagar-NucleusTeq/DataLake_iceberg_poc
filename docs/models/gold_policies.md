{% docs gold_policies %}
{% raw %}

# Policies

![last updated](assets/update_badges/gold_policies.svg)

Contract details for applications and inforce policies from the LifePlus and FAST policy
administration systems. 

NOTE: There are two policies that have a NULL application_entry_date with settled_dates in
2020 or greater. This (bad) data makes it into this table, but would fail
earlier tests if not identified and carved out of the test. 

**Policies with NULL application_entry_date**

| policy_number | settled_date  |
| ------------- | ------------- |
|  0002667249   | 2026-12-17    |
|  4045040609   | 2020-10-28    |

See the 
[mid_policy.lifeplus documentation](#!/model/model.aaa_life_data_platform.mid_policy_lifeplus)
for more information on why these dates are NULL and why they can't be corrected.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy |
| Security Classification: | SRD  |
| Usage Requirement:       | Sensitive |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}

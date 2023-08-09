{% docs gold_possible_policy_replacements_history %}
{% raw %}

# Possible Policy Replacements

![last updated](assets/update_badges/gold_possible_policy_replacements_history.svg)
One of Compliance's requirements for possible replacement reporting is to only view pairs of new and replaced policies 
that have met the other replacement reporting requirements since the last report. This snapshot allows us to identify 
when a pair of new and replaced policies became eligible for reporting.

For more information on what this table contains, please see the [documentation](#!/model/model.aaa_life_data_platform.gold_possible_policy_replacements) for `gold.possible_policy_replacements`.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per new policy number, replaced policy number, inclusion reason, termination date, loan date, and surrender date|
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
Each record in this table represents a pair of new and replaced policies, the action that triggered the pair's
inclusion, the date of that trigger, and when the pair of records first met the reporting inclusion criteria. The reason 
we need the date of the trigger is because we cannot rule out the possibility that multiple loan or surrender events 
might occur for a single replaced policy. We do not need to include the valid to and valid from dates because each 
pair and trigger event should only have one record in this table.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

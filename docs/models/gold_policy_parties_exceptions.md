{% docs gold_policy_parties_exceptions %}
{% raw %}

# Policy Parties Exceptions

![last updated](assets/update_badges/gold_policy_parties_exceptions.svg)

This table contains the policies referenced from 
[gold.policy_parties](#!/model/model.aaa_life_data_platform.gold_policy_parties) that do not 
meet the business rules as established and therefore need to be corrected in source system.

Examples of business rules that would cause an exception:
* Multiple clients assigned the role type of 'Insured'
* Multiple clients assigned the role type of 'Owner One'

### Security and Usage Information
|     |                                                    |
| --- |----------------------------------------------------|
| Grain:                   | One row per policy_number + exception_description |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
[Policy Number](#!/model/model.aaa_life_data_platform.gold_policy_parties#policy_number)

[Exception Description](#!/model/model.aaa_life_data_platform.gold_policy_parties_exceptions#exception_description)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
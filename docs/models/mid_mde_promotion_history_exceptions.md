{% docs mid_mde_promotion_history_exceptions %}
{% raw %}

# Promotion History Exceptions

![last updated](assets/update_badges/mid_mde_promotion_history_exceptions.svg)

Records from [Promotion History](#!/model/model.aaa_life_data_platform.staging_mde_promotion_history)
that violate established business rules, but do not rise to the level of a test 
warning or error.

This model includes all records that violate one or more of the rules below.  If 
a record violates more than one rule, it will appear in this table more than once.

As these records are by definition exceptions to business rules, limited data testing
is applied to this model - these are known exceptions.

### Business Rules Checked
|   |
|---|
| Missing Address Key|

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:    | 1 record per broadlog_id and exception_description.  |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
This table includes one record per exception identified for a given broadlog_id.  For example, if a 
single broadlog_id record in promotion_history had a missing address_key and an invalid touch_id, it 
would appear in this model twice:

| broadlog_id | other fields  | exception_description |
|-------------|---------------|-----------------------|
| 73735963    | ...           | Missing Address Key   |
| 73735963    | ...           | Invalid touch_id      |

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
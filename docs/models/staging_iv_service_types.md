{% docs staging_iv_service_types %}
{% raw %}

# Informed Visibility Service Types

![last updated](assets/update_badges/staging_iv_service_types.svg)

A lookup table with the informed visibility service type identifiers (STID) which tell us the class of mail 
(Ballot Returns, Bound Printed Matter, First-Class Mail, Periodicals, Priority Mail, etc.),
as well as the more specific address correction ancillary service option.

Note: There is a notes indicator '***' present in a few of the records in the following fields:
* basic_or_non_automation_with_iv_mtr
* basic_or_non_automation_without_iv_mtr
* full_service_without_iv_mtr
* full_service_with_iv_mtr

In some instances the indicator is appended to the end of the STID string (e.g., '513***'). In
other cases the indicator appears alone.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per basic_or_non_automation_with_iv_mtr + basic_or_non_automation_without_iv_mtr + full_service_without_iv_mtr + full_service_with_iv_mtr |
| Security Classification: | Public |
| Usage Requirement:       | Anonymized |

### Grain Description
**basic_or_non_automation_with_iv_mtr**: STID values indicating that the mail piece is tracked
with basic or no automation, and uses IV-MTR


**basic_or_non_automation_without_iv_mtr**: STID values indicating that the mail piece is tracked
with basic or no automation, and does not use IV-MTR


**full_service_without_iv_mtr**: STID values indicating that that the mail piece is tracked using
full service automation, and does not use IV-MTR


**full_service_with_iv_mtr**: STID values indicating that that the mail piece is tracked using
full service automation, and does not use IV-MTR

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
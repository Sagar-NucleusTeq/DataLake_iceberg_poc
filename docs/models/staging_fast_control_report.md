{% docs staging_fast_control_report %}
{% raw %}

# Control Report

![last updated](assets/update_badges/staging_fast_control_report.svg)

This table is a summary of many fields from applications, cases, policies, and possibly 
other sources.  It is currently our primary source for FaceAmount, IssueAge, ModalAmount, 
BillingMode, and BillingMethod.

These fields have been translated from FAST GUID codes into text fields.

There are some issues with Apps, Cases, and Policies that contribute to this table but the 
table itself seems to be clean.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per potential policy (policy_number) |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
One row per potential FAST policy, which is created when an application, case, or policy is
created in the FAST system.
See [**policy number**](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
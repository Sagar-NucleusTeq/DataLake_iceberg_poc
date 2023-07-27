{% docs gold_possible_policy_replacements %}
{% raw %}

# Possible Policy Replacements

![last updated](assets/update_badges/gold_possible_policy_replacements.svg)

The National Association of Insurance Commissioners and state agencies enforce specific regulations around replacement 
life insurance policies to ensure that agents and insurers act in the best interest of the customer. One of these
regulations is that policies that were sold by agents for the purpose of replacing an existing policy must be identified
as replacement policies. This consumption layer table displays all DSU, SISU, and agent-sold life insurance policies 
that meet the business criteria for a replacement policy, but were not labelled replacement policies in the policy 
management systems. Each record consists of key information from this new policy, as well as the original or replaced 
life insurance policy.

Two policies are considered a new and replaced pair if the following conditions are met:
* The insured is the same in both policies;
* The status of the old policy is not "death", "expiry", or "conversion";
* The new policy was sold by a DSU, SISU, or field agent; 
* The new policy is not strictly an accident or accident death benefit policy; and
* A termination, loan, or surrender event has occurred within the specified timeframes (detailed below).

A record is included any of the following three reasons:
* The replaced policy is terminated up to 4 months before or after the application entry date of the new record;
* A loan is taken out against the cash portion of the replaced policy up to 4 months before, or 13 months after the new 
policy's application entry date; or
* A partial surrender against the replaced policy occurs up to 4 months before, or 13 months after the new policy's
application entry date.

The range for records in this table is:
* The new policy's application entry date >= 2022-08-01 as per Norm Von Seggern and Tamieka Porter
* **Terminations:** For records where the replaced policy was terminated, the new policy application entry date must 
occurs within the four months preceding the report anchor date, where the report anchor date is the first day of the 
next month after the month in which the record was first identified. The report anchor date is also the report delivery 
date. Therefore, a report delivered to the business on 2023-05-01 will contain records where the new policy's 
application entry date falls between 2023-01-01 and 2023-04-30, endpoint inclusive. This works as follows:
    * On 2023-01-10 policies '1123456789' and '0123456789' are identified as a possible new and replacement policies
    respectively. The anchor date is therefore 2023-02-01. If the new policy '1123456789' has an application date on or
    after 2022-10-01 the record will be included in this model. Otherwise, it will be excluded.
* **Loans and surrenders:** For records where the replaced policy had a loan or surrender event, the new policy's
application entry date will be no earlier than 13 months before the first of the current date. For example, if the
current date is 2023-05-09 then the earliest application entry date for the new policy would be 2023-04-01.

Because each record represents a specific trigger as well as a pair of new and replaced policies, it is possible that 
multiple rows in this table will contain the same new and replaced policy numbers. It is even possible that multiple
records will contain the same new policy number, replaced policy number, and inclusion reason if the inclusion reason
is "Loan" or "Surrender".

Note 1: Currently, this table only contains replaced policies that have been terminated because loan and surrender 
information is not yet in the data platform. This also means that the following fields are currently entirely null:
* `replaced_loan_date`
* `replaced_surrender_date`
* `replaced_surrender_type`
* `months_between_replaced_loan_date_new_application_date`
* `months_between_replaced_surrender_date_new_application_date`

Note 2: This table does not contain records where new_agent_number is blank. For more information on why policies sold
by agents would not contain agent numbers, please see Note 2 in the `mid_compliance_possible_terminated_replacements` 
[model description](#!/model/model.aaa_life_data_platform.mid_compliance_possible_terminated_replacements).

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per new policy number, replaced policy number, inclusion reason, termination date, loan date, and surrender date |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
Each record in this table represents a pair of new and replaced policies, the action that triggered the pair's
inclusion, and the date of that trigger. The reason we need the date of the trigger is because we cannot rule out the
possibility that multiple loan or surrender events might occur for a single replaced policy.


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

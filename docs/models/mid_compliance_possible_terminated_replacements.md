{% docs mid_compliance_possible_terminated_replacements %}
{% raw %}

# Pairs of terminated policies and their replacement policies

![last updated](assets/update_badges/mid_compliance_possible_terminated_replacements.svg)

This table supports Compliance efforts to ensure that life insurance policies are labeled as replacements if they were 
purchased to replace existing life insurance policies. This table contains pairs of replaced (original) and replacement
(new) policies where:
* The new policy was sold by the DSU, SISU, or field agents;
* The new policy's application entry date is on or later than 2022-08-01 as per Norm Von Seggern and Tamieka Porter in 
Compliance. In addition, the new policy application entry date occurs within the four months preceding the report anchor
date, where the report anchor date is the first day of the next month after the month in which the record was first 
identified. The report anchor date is also the report delivery date. Therefore, a report delivered to the business on
2023-05-01 will contain records where the new policy's application entry date falls between 2023-01-01 and 2023-04-30,
endpoint inclusive. This works as follows:
    * On 2023-01-10 policies '1123456789' and '0123456789' are identified as a possible new and replacement policies
    respectively. The anchor date is therefore 2023-02-01. If the new policy '1123456789' has an application date on or
    after 2022-10-01 the record will be included in this model. Otherwise, it will be excluded.
* The individual key of the insured is the same on both the replaced and new policies;
* The replaced policy was terminated within 4 months of the new policy's application entry date;
* The replaced policy was not terminated due to death. This occurs when a member dies and their spouse inherits their
old AAA membership number. Because Merkle uses membership number as a "hard" person identifier, the spouse becomes
associated with their deceased partern's individual key;
* The replaced policy is neither a term policy whose term has expired, nor was it converted to a different policy; and
* The replaced policy is not an accident product or an accidental death benefit. However, whole life and universal life
products with accidental death benefit riders are included, as listed in the following table of product types:

**Excluded Product Types for Replaced Policies**

| Insurance Type | Sub-Product Line |
| --- | --- |
| ADB | ADB |
| ADB | Accident |
| Accident | All |

One of the implications of these inclusion criteria is that both new and replaced policy numbers may be present more 
than once in the in a given report. Unless business rules prevent it, a replaced policy may be associated with more than
one new policies. Likewise, two different policies might be associated with the same new policy. There is no 
deduplication logic because Compliance wants to review all cases where this occurs.
 
Note 1: DSU and SISU agent number fields currently contain club codes, not the actual agent codes. This will be fixed in
a future enhancement.

Note 2: Records where the new agent number is blank have been excluded because Compliance requires an agent number to 
investigate possible policy replacement instances. The reason there are records with blank new_agent_number is because 
the business has begun to migrate polices that were sold by agents into FAST. Currently, FAST is not configured to store 
or send agent information. Until FAST resolves this issue we will filter out these records.

For more information, please refer to the [ERD](https://lucid.app/lucidchart/3ea52137-1ee6-46f1-ad04-745d218dc47c/edit?invitationId=inv_d1dbc9e8-63b3-4488-b94c-330188be3e96&page=RJLM6QsRZ8yW#) the replacements reporting project.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per new_policy_number and replaced_policy_number|
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
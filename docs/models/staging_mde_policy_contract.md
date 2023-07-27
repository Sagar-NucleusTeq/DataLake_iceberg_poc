{% docs staging_mde_policy_contract %}
{% raw %}

# Policy Contract

![last updated](assets/update_badges/staging_mde_policy_contract.svg)

Merkle table containing details on AAAL contracts. Contains policy_number, contract_status, and
other contract and/or policy details like settled_date, application_signed_date, paid_to_date,
billing_mode, etc.

NOTE 1: A contract is a legally enforceable agreement between two or more parties; the agreement
consists of a promise or a set of promises.

NOTE 2: Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy number |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Policy Number
Unique identifier of a AAA Life policy. Policy numbers exist for every
policy application whether or not the policy was issued. Policy numbers
are unique and can not be repeated for different policies. The length of 
the string is 10 characters. FAST policies start with 3, AS400 policies 
may start with a letter or a number. 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
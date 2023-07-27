{% docs mid_eservices_auto_payment_by_policy %}
{% raw %}

# Auto Paymeny by Policy

![last updated](assets/update_badges/mid_eservices_auto_payment_by_policy.svg)

This table shows the status of each policy's auto-payment enrollment.
It simply includes the policy number and a boolean field that states whether or not the policy
is on auto-payment. The auto-payment information comes from eServices data and this model
de-duplicates the auto-payment status on policy number using the `company_code` from the policies
model. Namely, it uses the record in `staging_lifeplus.account_payment_status` where the
`company_code` matches the `company` in `gold.policies`.

NOTE:
This process will remove any policy numbers in `staging_lifeplus.account_payment_status` 
that do not exist in `gold.policies`. Since this model uses `gold.policies` to get the
correct `company_code` for each policy number that is duplicated in
`staging_lifeplus.account_payment_status`. We don't really care about these
records anyway since they're not in gold.policies.
The way it does this is that `gold.policies` is unique at the policy number level, so 
there is one 'correct' record in `staging_lifeplus.account_payment_status` where the
`company_code` matches `gold.policies` on `policy_number` _and_ `company_code`.
That is the record that is used for this mid table.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
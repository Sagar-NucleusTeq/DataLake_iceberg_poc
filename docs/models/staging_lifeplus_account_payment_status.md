{% docs staging_lifeplus_account_payment_status %}
{% raw %}

# Account Payment Status

![last updated](assets/update_badges/staging_lifeplus_account_payment_status.svg)

Sourced from the LifePlus table APPCTRL (Account Control Master), we are currently only using 
this table to get the account payment status (ACDFRQ) and use it to get a boolean auto-payment
field for a data feed for Merkle.

The staging table is named in this way because the table as a whole has not been data discovered,
so a more meaningful name than 'Account Control Master' cannot be determined at this time.
'Account Payment Status' tells us what is being used from this table at this time.

All fields and records are brought in from the source/landing since we have a few (177 as of
9/16/22) `policy_number`s with multiple `account_payment_status`es. All of these policy numbers
currently exist in `gold.policies`. This means that `gold.policies` can therefore be used to
get the correct record from this table in mid. This is done using `company_code` in this table
and `company` from `gold.policies`.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per company_code + policy_number + account_payment_status |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
See [Company](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#company)
for definition.

See [Policy Number](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

**Account Payment Status**: The account payment status tells us whether a policy has set up
recurring payments or if they make single payments on their policy. Recurring payments are
also known as a policy being on 'auto-pay'.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

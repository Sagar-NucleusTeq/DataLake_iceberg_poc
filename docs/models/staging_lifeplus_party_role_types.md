{% docs staging_lifeplus_party_role_types %}
{% raw %}

# LifePlus Party Role Types

![last updated](assets/update_badges/staging_lifeplus_party_role_types.svg)

This a lookup table for the LifePlus party role types. It tells us what the 
role_type_code means in plain english, namely, Insured, Owner, Payor, Beneficiary, etc.

The field CPAREQ has been purposefully left out of this table since there is no documentation on 
what it is, and all values are 'N'.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per role type |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
Role type identifies the type of role to which this record corresponds, for 
example, Insured, Payor, or Beneficiary are some role types one may come across.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
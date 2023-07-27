{% docs staging_lifeplus_new_business_contracts %}
{% raw %}

# New Business Contracts

![last updated](assets/update_badges/staging_lifeplus_new_business_contracts.svg)

The new_business_contracts table in staging pulls from the nbspcntr table in landing,
it contains the life support plus ( also called AS400, lifeplus, LSP) new business policy contracts.
LSP is the original policy administration system (PAS) of AAALife. At the time of creation
of the data platform the company is undergoing a switch to FAST policy administrations system.
New business contracts in LSP are applications that may or may not convert to issued policies.

One policy has an application signed date of Feb 29, 1997, which is not a valid date, but is 
allowed within the LifePlus system. This field is changed to 3/1/1997, since that is the next valid 
date.


### Security and Usage Information
|    |    |
|---|---|
|Grain:|one row per policy number |
|Security Classification:|SRD|
|Usage Requirement:|Gold|


### Grain Description
See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
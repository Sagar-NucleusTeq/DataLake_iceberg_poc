{% docs staging_lifeplus_inforce_contract_benefit %}
{% raw %}

# Inforce Contract Benefit

![last updated](assets/update_badges/staging_lifeplus_inforce_contract_benefit.svg)

This table contains the Lifeplus inforce benefit information. In Lifeplus (also called AS400,
Life Support Plus, LSP, Life+) this information comes from CASBENE (also called inforce contract
benefit). The table contains the benefit information associated with the policy number. When a
policy has a rider it will be a second record in the table because riders contain their own
set of benefits. 

Exceptions: Today (April 2020) there are two records with blank policy numbers, one with a base
rider code (BRCD) of 0 (indicating a base) the other with a BRCD of 1 (indicating a rider). They 
have a lot of the same details which suggests the records are from the same policy.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy number + base rider code - one exception noted above |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [Base Rider Code](#!/exposure/docs.business_glossary.glossary#base_rider_code)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

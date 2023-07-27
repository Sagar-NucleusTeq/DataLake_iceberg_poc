{% docs staging_bi_claims_lifeplus %}
{% raw %}

# Claims Lifeplus
![last updated](assets/update_badges/staging_bi_claims_lifeplus.svg)

A compilation of claim data from Lifeplus and PDA systems. In this table,
claim number is not unique because a claim can be on a policy but multiple benefits.

### Security and Usage Information
|     |                                                          |
| --- |----------------------------------------------------------|
| Grain:                   | 1 row per claim_number + policy_number + base_rider_code |
| Security Classification: | SRD                                                      |
| Usage Requirement:       | Gold                                                     |

### Grain Description
**Claim Number**: An automatically assigned number for a claim. Claim numbers are unique to the event. 
Read more on claim number [here](#!/model/model.aaa_life_data_platform.staging_bi_claims_lifeplus#claim_number).

See [Policy Number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [Base Rider Code](#!/exposure/docs.business_glossary.glossary#base_rider_code)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}
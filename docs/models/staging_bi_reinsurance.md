{% docs staging_bi_reinsurance %}
{% raw %}

# Reinsurance

![last updated](assets/update_badges/staging_bi_reinsurance.svg)

This table contains the information about reinsurance. It is sourced from 
Actuarial.Reinsurance.ReinsuranceMaster, which is not the primary source for reinsurance information. 
For now, we pull this table in to get ceded amount on claims. The source is updated once a month. In
the future, we would like to ingest data directly from the administration system, TAI. 

### Security and Usage Information
|     |                                                                                                                                          |
| --- |------------------------------------------------------------------------------------------------------------------------------------------|
| Grain:                   | 1 row per policy_number, base_rider_code, face_increase_code, reinsurance_contract, reinsurance_status, admin_system, from_date, to_date |
| Security Classification: | Confidential                                                                                                                             |
| Usage Requirement:       | Deidentified                                                                                                                             |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [Base Rider Code](#!/exposure/docs.business_glossary.glossary#base_rider_code)
for definition.

See column descriptions for remaining pieces of the grain description.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
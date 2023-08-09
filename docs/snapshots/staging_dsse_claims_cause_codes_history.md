{% docs staging_dsse_claims_cause_codes_history %}
{% raw %}

# Claims Cause Codes History Snapshot
![last updated](assets/update_badges/staging_dsse_claims_cause_codes_history.svg)

This snapshot is a type II dimension table containing a history of the claims cause code mappings. 
This snapshot uses unique combinations of source_system and cause_code to check for changes to the 
following fields:
* ['cause_code_description'](#!/snapshots.aaa_life_data_platform.staging_dsse_claims_cause_codes_history#cause_code_description)
* ['alternate_pas_code'](#!/snapshots.aaa_life_data_platform.staging_dsse_claims_cause_codes_history#alternate_pas_code)
* ['source_cause_description'](#!/snapshots.aaa_life_data_platform.staging_dsse_claims_cause_codes_history#source_cause_description)
* ['cause_type'](#!/snapshots.aaa_life_data_platform.staging_dsse_claims_cause_codes_history#cause_type)

See [Claims Cause Code](#!/seed/seed.aaa_life_data_platform.claims_cause_codes) for more information.

### Security and Usage Information
|     |                                                                         |
| --- |-------------------------------------------------------------------------|
| Grain:                   | 1 record per source_system + cause_code + dbt_valid_from + dbt_valid_to |
| Security Classification: | Internal                                                                |
| Usage Requirement:       | Deidentified                                                            |

### Grain Description

See [source_system](#!/snapshot/snapshots.aaa_life_data_platform.staging_dsse_claims_cause_codes_history#source_system) for more information.

See [cause_code](#!/snapshot/snapshots.aaa_life_data_platform.staging_dsse_claims_cause_codes_history#cause_code) for more information.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
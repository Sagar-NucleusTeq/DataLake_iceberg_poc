{% docs claims_cause_codes %}
{% raw %}

# Claims Cause Codes Data Seed

![last updated](assets/update_badges/claims_cause_codes.svg)

A CSV serving as the source for the claims cause code mapping table. As with all seed datasets, this 
CSV is maintained by Analytics Engineers and analysts and updated manually.

See [staging_dsse_claims_cause_codes](#!/model/model.aaa_life_data_platform.staging_dsse_claims_cause_codes) 
for more information on claims cause code and their use.

### Security and Usage Information
|     |                                     |
| --- |-------------------------------------|
| Grain:                   | 1 row per source_system, cause_code |
| Security Classification: | Internal                            |
| Usage Requirement:       | Deidentified                        |

### Grain Description
There are two fields that are needed in this table to get a unique row.
1. **Source System**: See [source_system](#!/model/model.aaa_life_data_platform.staging_dsse_claims_cause_codes#source_system) for more information.
2. **Cause Code**: See [cause_code](#!/model/model.aaa_life_data_platform.staging_dsse_claims_cause_codes#cause_code) for more information.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
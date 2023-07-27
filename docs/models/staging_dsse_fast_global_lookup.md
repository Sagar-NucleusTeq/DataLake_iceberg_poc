{% docs staging_dsse_fast_global_lookup %}
{% raw %}

# Fast Global Lookup

![last updated](assets/update_badges/staging_dsse_fast_global_lookup.svg)

This table contains the translation of the combination of a [domain](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_domain_type)
and [id](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_id)
defined within the 
FAST PAS system into friendly code and/or description for usage in dashboards and reports.

NOTE: This table does **not** include contract statuses. Contract statuses are contained in the 
[contract status map table](#!/model/model.aaa_life_data_platform.staging_dsse_contract_status_map)

**Example Table:**

| FAST Domain Type | FAST ID                        | FAST Domain Code | FAST Domain Code Description |
| ---------------- | ------------------------------ | ---------------- | ---------------------------- |
| EntrySource      | 00000000-0000-0000-0000-000000000013 | V3         | Exela                        |
| States           | 00000000-0000-0000-0000-000000000001 | AL         | Alabama                      |
| Club             | 00000000-0000-0000-0000-000000000068 | 950        | 950-AAA Nevada               |
| LeadSource       | 00000000-0000-0000-0000-000000000001 | 31         | Exela                        |
| Gender           | 00000000-0000-0000-0000-000000000004 | U          | Unknown                      |
| CaseType         | 00000000-0000-0000-0000-000000000002 | NULL       | Contract                     |


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per fast_domain_type + fast_id  |            
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
See [FAST Domain Type](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_domain_type)
for definition.

See [FAST ID](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_id)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}

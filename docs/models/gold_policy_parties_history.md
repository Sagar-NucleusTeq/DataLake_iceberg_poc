{% docs gold_policy_parties_history %}
{% raw %}

# Policy-Party Role History
![last updated](assets/update_badges/gold_policy_parties_history.svg)

This is a snapshot table that tracks the history of [gold_policy_parties](#!/model/model.aaa_life_data_platform.gold_policy_parties)
table.

It tracks changes to the following columns, and if a change is detected then the current record
will be invalidated and a new record is created with the updated information. Changes are tracked
per the policy_number + role_type + party_number grain.

- 'policy_party_role_effective_date'
- 'policy_party_role_end_date'
- 'organization_name'
- 'party_name_prefix'
- 'party_name_first'
- 'party_name_middle'
- 'party_name_last'
- 'party_name_suffix'
- 'address_line_1'
- 'address_line_2'
- 'address_line_3'
- 'address_line_4'
- 'city'
- 'state_code'
- 'zip_code'
- 'home_phone_number'
- 'work_phone_number'
- 'cell_phone_number'
- 'fax_number'
- 'date_of_birth'
- 'email_address'
- 'benefit_share_percentage'
- 'party_type'
- 'club_client_id'
- 'membership_number_current'
- 'source_system'


### Security and Usage Information
|     |                                                                                    |
| --- |------------------------------------------------------------------------------------|
| Grain:                   | 1 row per polciy_number + role_type + party_number + dbt_valid_from + dbt_valid_to |
| Security Classification: | Confidential                                                                       |
| Usage Requirement:       | PII                                                                                |

### Grain Description
See [policy_number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [role_type](#!/exposure/docs.business_glossary.glossary#role)
for definition.

See [party_number](#!/exposure/docs.business_glossary.glossary#party_number)
for definition.

**DBT Valid From**: The timestamp when this row was first added to the table.

**DBT Valid To**: The timestamp when this row became out-of-date due to the new data received.
A `NULL` value in this column indicates that this record is the most current data for this key.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
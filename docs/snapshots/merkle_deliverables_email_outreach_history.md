{% docs merkle_deliverables_email_outreach_history %}
{% raw %}

# History of the Policy-Parties Table with eServices Data for Merkle
![last updated](assets/update_badges/merkle_deliverables_email_outreach_history.svg)

Contains *historical* information from the `merkle_deliverables_email_outreach` table.

See [email_outreach table documentation](#!/model/model.aaa_life_data_platform.merkle_deliverables_email_outreach)
for a better understanding of the core table that corresponds to this history table.
This table includes all records that have ever existed in the email_outreach table since
10/1/22 with a effective/end date (dbt_valid_from/dbt_valid_to date) for each (a NULL in
the dbt_valid_to date means that the record is still correct and exists in the original table).

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + role_type + dbt_valid_from + dbt_valid_to |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
See [**Policy Number**](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [**Role**](#!/exposure/docs.business_glossary.glossary#role)
for definition.

**DBT Valid From**: The timestamp when this row was first added to the table.

**DBT Valid To**: The timestamp when this row became out-of-date due to the new data received.
A `NULL` value in this column indicates that this record is the most current data for this key.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
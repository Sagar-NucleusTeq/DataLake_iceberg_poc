{% docs gold_policies_history %}
{% raw %}

# Policies History

![last updated](assets/update_badges/gold_policies_history.svg)

This is a snapshot table that tracks the history of [gold_policies](#!/model/model.aaa_life_data_platform.gold_policies)
table.

It tracks changes to the following columns, and if a change is detected then the current record
will be invalidated and a new record is created with the updated information. Changes are tracked
by policy_number which is the grain of the gold_policies table.

- 'application_signed_date'
- 'application_entry_date'
- 'plan_code'
- 'settled_date'
- 'contract_status'
- 'contract_status_stage'
- 'contract_status_description'
- 'was_settled'
- 'club_code'
- 'company'
- 'state_of_issue'
- 'reporting_group_company_level'
- 'reporting_group_insurance_company_level'
- 'reporting_group_club_level'
- 'face_amount'
- 'lead_source_code'
- 'campaign_code'
- 'application_id'
- 'application_membership_number'
- 'age_at_issue'
- 'sex_at_issue'
- 'response_channel'
- 'response_channel_category'
- 'is_substandard'
- 'risk_class'
- 'paid_to_date'
- 'expiry_date'
- 'policy_number_converted_from'
- 'agent_number'
- 'is_primary_agent'
- 'annualized_premium'
- 'has_additional_insured_rider'
- 'additional_insured_rider_count'
- 'has_return_of_premium_rider'
- 'return_of_premium_rider_count'
- 'has_hospital_income_protection_rider'
- 'hospital_income_protection_rider_count'
- 'has_accidental_death_benefit_rider'
- 'accidental_death_benefit_rider_count'
- 'has_travel_accident_rider'
- 'travel_accident_rider_count'
- 'has_other_rider'
- 'other_rider_count'
- 'termination_date'
- 'conversion_type'
- 'billing_mode'
- 'payment_type'
- 'modal_premium'
- 'units_of_insurance'
- 'internal_agent_id'
- 'effective_date'
- 'next_renewal_date'
- 'withdrawn_date'
- 'source_system'


### Security and Usage Information
|     |                                                         |
| --- |---------------------------------------------------------|
| Grain:                   | 1 row per policy_number + dbt_valid_from + dbt_valid_to |
| Security Classification: | SRD                                                     |
| Usage Requirement:       | Sensitive                                               |

### Grain Description
See [policy_number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

**DBT Valid From**: The timestamp when this row was first added to the table.

**DBT Valid To**: The timestamp when this row became out-of-date due to the new data received.
A `NULL` value in this column indicates that this record is the most current data for this key.

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}

{% docs staging_dsse_club_state_rollup %}
{% raw %}

# Club-State Rollup Table

![last updated](assets/update_badges/staging_dsse_company_club_hierarchy.svg)

A lookup table using the combination of club and state to meet the different
reporting groups needs. This table will generally be used to assign one or many of the 
reporting groups that exist in the table to a single club-state combination. The accurate
reporting group will be the one found on the record where the application_entry_date
is within the effective_date and expiration_date boundaries in this table. 

The DSSE created this rollup table in 2022, so there are many changes to club-state roll-ups that
are not documented here, but the current set of club-state combinations with the max effective
date (or no expiration date) will give you an accurate picture of how the clubs currently roll up.

### Security and Usage Information

|     |     |
| --- | --- |
| Grain:                    | 1 row per club_code + state + effective_date + expiration_date |
| Security Classification:  | Internal |
| Usage Requirement:        | Deidentified |

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
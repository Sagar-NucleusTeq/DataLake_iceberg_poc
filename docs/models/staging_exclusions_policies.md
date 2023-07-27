{% docs staging_exclusions_policies %}
{% raw %}

# Exclusions Policies

![last updated](assets/update_badges/staging_exclusions_policies.svg)

This table is part of the [Temporary Global Policy Exclusion process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) and contains policies that should be 
excluded from nearly all staging, mid, and gold models in the data platform due to their violating one or more critical
data quality tests. Policies are not intended to be permanently excluded, barring exceptions that are evaluated on a
case by case basis. Instead, this table is part of a process intended to allow the DBT CI/CD scheduled jobs to run
while the data and business teams investigate the issues that are causing the policies to fail.

Note: Please note that there is no test to check for at least one row in this table because ideally this table will have
no rows--meaning no policies need to be excluded from the data warehouse.

### Security and Usage Information
|                          |                     |
|--------------------------|---------------------|
| Grain:                   | 1 row per policy_number |
| Security Classification: | Internal            |
| Usage Requirement:       | Deidentified        |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number) for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
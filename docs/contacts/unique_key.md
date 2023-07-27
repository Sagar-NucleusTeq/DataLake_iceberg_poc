{% docs unique_key %}
{% raw %}

<a name="unique_key"></a>
# Unique Key
This field was created in the staging_lifeplus_lexis_nexus_scores table in order to create a
unique key column that is used to determine duplicate records that need to be excluded from
the table. This column is created using the dbt_utils.surrogate_key macro and is a md5 hash of
the policy_number, client_number, and the requirement_sequence.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

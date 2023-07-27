{% docs tactic_id %}
{% raw %}

<a name="tactic_id"></a>
# Tactic Identifier
Unique identifier for the tactic, the product/audience grouping.
See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

All tactic ids must exist in the campaign tactic table to be valid. A
dbt test needs to be implemented for this field once the table is
available on the new platform.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs attributed_tactic_id %}
{% raw %}

<a name="attributed_tactic_id"></a>
# Attributed Tactic ID

Tactic id is the unique identifier for the tactic, the product/audience
grouping. See Metadata structure and hierarchy documentation for a better
understanding of this field.

The attributed tactic id is the tactic id of the record
in promotion_history that the application was attributed to. This
entity is assigned during the attribution process using the
logic found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
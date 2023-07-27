{% docs cell_id %}
{% raw %}

<a name="cell_id"></a>
# Cell Identifier - The Who
The 'who'. Identifier for the cell, a low-level grouping of like consumers.
See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs attributed_cell_id %}
{% raw %}

# Attributed Cell Identifier

The 'who'. Identifier for the cell, a low-level grouping of like
consumers. See Metadata structure and hierarchy
documentation for a better understanding of this field.

The attributed cell id is the cell id of the record
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
{% docs creative_id %}
{% raw %}

<a name="creative_id"></a>
# Creative Identifier
The Identifier of creative used in the touch. See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

| Example values                                    |
|---------------------------------------------------|
| Enhanced Benefit Update #10 - D TERMLCS           |
| Enhanced Benefit Update #10 - 100 - D TERM2CS     |
| Enhanced Benefit Update #10 - 200 - D TERM2CS     |
| EMAIL PLACEHOLDER                                 |
| Kit Request - Accident                            |
| Kit Request - MLTA                                |
| Employer Coverage More #10 - 200 - D TERM2CS      |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs attributed_creative_id %}
{% raw %}

<a name="creative_id"></a>
# Attributed Creative Identifier
The Identifier of creative used in the touch. See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

| Example values                                    |
|---------------------------------------------------|
| Enhanced Benefit Update #10 - D TERMLCS           |
| Enhanced Benefit Update #10 - 100 - D TERM2CS     |
| Enhanced Benefit Update #10 - 200 - D TERM2CS     |
| EMAIL PLACEHOLDER                                 |
| Kit Request - Accident                            |
| Kit Request - MLTA                                |
| Employer Coverage More #10 - 200 - D TERM2CS      |

The attributed creative id is the creative id of the record
in gold.messages that the application was attributed to. This
entity is assigned during the attribution process using the
logic found here:

[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
{% docs touch_id %}
{% raw %}

<a name="touch_id"></a>
# Touch Identifier

Unique identifier at the touch level, which is the communication effort to reach a consumer.
The name of the marketing touch associated with the message.
See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs attributed_touch_id %}
{% raw %}

# Attributed Touch ID

Unique identifier at the touch level,
which is the communication effort to reach a consumer.
See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.


The attributed touch id is the touch id of the record
in promotion_history that the application was attributed to.
This entity is assigned during the attribution process using the
logic found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
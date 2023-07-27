{% docs campaign_name %}
{% raw %}

<a name="campaign_name"></a>
# Campaign Name

Name of campaign, a channel and sequence/scheduling. Multiple years can have the same
campaign_name, but not campaign_id. See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

| Example values                |
|-------------------------------|
| Cross Sell                    |
| C5-2021                       |
| Remarketing                   |
| 2021 - Kit Request - Accident |
| C13-2020                      |
| Policy Communication          |
| DM C6                         |
| 2020 - Evergreen              |

Note: Email messages with campaign name of "Service" are non-marketing emails.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
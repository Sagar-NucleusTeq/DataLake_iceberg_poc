{% docs staging_mde_campaign_creative_package %}
{% raw %}

# Campaign Creative Packages
![last updated](assets/update_badges/staging_mde_campaign_creative_package.svg)

Detail on the content and documents for Direct Mail and Email campaigns,
called "creative packages."

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per creative_id + touch_id + state_code_key + package_id |
| Security Classification: | SRD  |
| Usage Requirement:       | Gold |

### Grain Description

**Creative ID**: The Identifier of creative used in the touch. 

**Touch ID**: Unique identifier at the touch level, which is the communication effort to reach a 
consumer. The name of the marketing touch associated with the message.

**State Code Key**: A 2-character code to identify state.

**Package ID**: A 4-digit numeric unique package identifier of the direct mail product, 
vendor, package name, format, offer, format-specific description that is mailed to the individual. 
The Operations team manages package master - where the package_id's can be found with all of 
their associated information.

See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of these fields.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

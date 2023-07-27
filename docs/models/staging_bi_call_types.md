{% docs staging_bi_call_types %}
{% raw %}

# Call Types

![last updated](assets/update_badges/staging_bi_call_types.svg)

This table comes from `marketingphonedata.dbo.t_call_type` from PRDSQL1. It includes information 
related to each call type. 

### Security and Usage Information
|     |                        |
| --- |------------------------|
| Grain:                   | 1 row per call_type_id |
| Security Classification: | Internal               |
| Usage Requirement:       | Deidentified           |

### Grain Description
**Call Type ID**:
This is a unique identifier for the call type, and therefore which routing script was
used to route this call.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
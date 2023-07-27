{% docs interaction_status %}
{% raw %}

# Interaction Status

The current delivery status of the message.  Valid values are:

| Value | Description |
| ------ | ------ |
| Success | We attempted to reach the target and were successful, regardless of the message's depromotion status |
| Failure | We attempted to reach the target, and either attempted to reach the target and failed, or we have not yet succeeded |
| Null | We did not attempt to reach the target.  This includes depromoted mail that was never sent. |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
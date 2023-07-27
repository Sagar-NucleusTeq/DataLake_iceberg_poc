{% docs percent_answered_within_threshold %}
{% raw %}

<a name="percent_answered_within_threshold"></a>
# Percent Answered Within Threshold
The percentage of service_level_events that are answered within the service_level_threshold
(abandons are handled based on the abandoned_call_calculation_level). Service Level is
calculated depending on the abandoned_call_calculation_level (see definition of 
[abandoned_call_calculation_level](#!/model/model.aaa_life_data_platform.staging_bi_call_metrics_interval_30_minutes)
for calculations).

NOTE: For non-voice tasks and for Unified CCE calls, the abandoned_call_calculation_level is
always set to ignore abandoned calls.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

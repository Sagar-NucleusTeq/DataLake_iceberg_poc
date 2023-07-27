{% docs abandoned_call_calculation_level %}
{% raw %}

<a name="abandoned_call_calculation_level"></a>
# Abandoned Call Calculation Level
A setting (1,2,3), by call queue that determines the how the `percent_answered_within_threshold`
calculation handles abandoned calls.  

1. Ignore Abandoned Calls: 
`calls_answered_within_threshold`/(`service_level_events` - `calls_abandoned_within_threshold`)
2. Abandoned Calls have Negative Impact:
`calls_answered_within_threshold`/`service_level_events`
3. Abandoned Calls have Positive Impact:
(`calls_answered_within_threshold` + `calls_abandoned_within_threshold`)/`service_level_events`

This field is applicable to both Unified ICM andUnified CCE with the following exception: the
field is not incremented if the call is answered by an agent on a standard ACD unless the cal
was translation routed.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

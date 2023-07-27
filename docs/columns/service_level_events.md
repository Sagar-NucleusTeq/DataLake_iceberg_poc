{% docs service_level_events %}
{% raw %}

<a name="service_level_events"></a>
# Service Level Events
The number of calls of this call type that had service level events 
during the reporting interval. Calls are counted for service level purposes as soon as
it is determined how the call contributes to the service level calculation. This
determination is made when either the service level timer passes, the call is answered,
or the caller abandons - whichever occurs first.

A service level event occurs when one of the following
happens to the call:

1. The call is answered by an agent before the service_level_threshold expires. In this case,
the calls_abandoned_within_threshold and calls_answered_within_threshold database
fields are incremented.

2. The call abandons before the service_level_threshold expires. In this case, the
calls_abandoned_within_threshold and calls_answered_within_threshold database fields are
incremented.

3. The call is Redirected on No Answer (RONAs) before the service_level_threshold expires.
In this case, only the calls_answered_within_threshold database field is incremented.

4. The call reaches the service_level_threshold without being answered by an agent or
abandoned. In this case, the calls_answered_within_threshold database field is incremented.
Tasks that abandon before the short calls timer do not count towards the
calls_answered_within_threshold or calls_abandoned_within_threshold call counters.
In the calls_answered_within_threshold field, calls sent to the labels or calls that
encountered an error are counted, irrespective of how the calls ended (within or beyond
the threshold). You can use the error_count + agent_error_count fields to exclude all the
erroneous calls and use service_level_error field to exclude erroneous calls before
threshold. For calls sent to labels, you can use the label related fields 
(e.g. calls_routed_non_agent, return_busy, return_ring) to exclude all calls which
are returned to the labels.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

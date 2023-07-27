{% docs total_calls_abandoned %}
{% raw %}

<a name="total_calls_abandoned"></a>
# Total Calls Abandoned
The total number of calls abandoned while in VRU (that is, while undergoing prompting
or listening to voice menus options), calls abandoned while queued to skill group,
and calls abandoned at agent desktop This field also includes abandons for calls that
are not in the queue; for example, when the caller hangs up while listening to a
VRU prompt. Therefore, the number of calls abandoned at a VRU before being queued
is total_calls_abandoned - router_calls_abandoned_to_agent - router_calls_abandoned_queue. 

NOTE: Does not include short calls aka calls to the route that were too short to
be considered abandoned during the reporting interval.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

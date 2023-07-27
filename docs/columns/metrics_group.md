{% docs metrics_group %}
{% raw %}

<a name="metrics_group"></a>
# Metrics Group

A subgroup of direct mail plans for metrics tracking.

The field "metrics_group" is not NULL (and not "None") only when the 
field "product_channel_type" equals "Direct Mail".

The field "product_channel_type" is one of 3 values: {"Direct Mail", "Agent Sold", NULL}.

If the field "product_channel_type" equals "Agent Sold", then "metrics_group" will be "None".
If the field "product_channel_type" is NULL, then "metrics_group" will be NULL.

Example values for "metrics_group" when "product_channel_type" equals "Direct Mail":
(not an exhaustive list)
{"None","365","365 Rider","ADB","BM DMT 2016","DM Term 1999","DM Term 2000","DM Term 2008","DM Term Rider","GIWL 2005","GIWL 2006","MPA","MPA Rider"}

Note the above examples: even when "product_channel_type" equals "Direct Mail", 
the "metrics_group" can be "None" for some plan codes.

Both fields "metrics_group" and "product_channel_type" are used in legacy BI reporting.  

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
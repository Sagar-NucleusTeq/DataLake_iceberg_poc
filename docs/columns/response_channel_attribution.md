{% docs response_channel_attribution %}
{% raw %}

# Response Channel Attribution

Column defined by attribution. Response Channel is the means through
which an application enters our policy administration system. Applications
can be mailed, called in (SISU or DSU), submitted digitally (Vanity URL,
OnlineGIWL, ExpressTerm), or submitted with the help of a field agent.
By definition this level of attribution does not take into account what
marketing drove interest in the product. The logic that drives this is
largely determined by lead_source and therefore cannot be NULL. 

| Valid Values |
|:------------:|
|  AGENT_SOLD  |
|  GIWL_ONLINE |
| EXPRESS_TERM |
| MAIL         |
| SISU         |
| VANITY_URL   |
| DSU          |

Logic for this level of attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
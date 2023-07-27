{% docs response_channel %}
{% raw %}

<a name="response_channel"></a>
# Response Channel

Response Channel is the means through which an application enters our 
policy administration system. Applications
can be mailed, called in (SISU or DSU), submitted digitally (Vanity URL,
OnlineGIWL, ExpressTerm), or submitted with the help of a field agent.
By definition this level of attribution does not take into account what
marketing drove interest in the product. The logic that drives this is
largely determined by lead_source and therefore cannot be NULL. 

| Example Values    |
|:-----------------:|
| Agent Sold        |
| GIWL Online       |
| Express Term      |
| Mail              |
| SISU              |
| GIWL Vanity URL   |
| AAA Life DSU      |

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}

{% docs response_channel_category %}
{% raw %}

<a name="response_channel_category"></a>
# Response Channel Category
A collection of Response Channels that have a common theme.  For instance, *GIWL Online*, *GIWL Vanity URL*, and *Express 
Term* are all part of the Response Channel Category *Online* 

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
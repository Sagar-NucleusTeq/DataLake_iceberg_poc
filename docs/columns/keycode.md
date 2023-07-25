{% docs keycode %}
{% raw %}

<a name="keycode"></a>
# Keycode
Keycode is the [campaign code](#!/exposure/docs.business_glossary.glossary#campaign_code_keycode)
for direct mail campaigns. 

<a href="https://aaainsights.atlassian.net/wiki/spaces/DMC/pages/316997850/Keycode+Structure+Changes+for+2020" target="_blank">2020 Keycode logic - Marketing Confluence Page</a>  
<a href="https://aaalife-data.atlassian.net/wiki/spaces/DMC/pages/5821104326/2020+Keycode+Structure+Changes" target="_blank">2020 Keycode logic - DSSE Confluence Page</a>

<a href="https://aaainsights.atlassian.net/wiki/spaces/DMOC/pages/1605795852/2021+Keycode+Structure" target="_blank">2021 Keycode logic - Marketing Confluence Page</a>  
<a href="https://aaalife-data.atlassian.net/wiki/spaces/DMC/pages/7113801713/2021+Keycode+Structure" target="_blank">2021 Keycode logic - DSSE Confluence Page</a>

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs keycode_type %}
{% raw %}

<a name="keycode_type"></a>
# Keycode Type
Keycode is the campaign code for the direct mail campaign. The keycode type implies the kind 
of audience AAA Life is communicating with.

| Example values    |
|-------------------|
| broadmarket       |
| customermarketing |
| acquisition       |
| trigger           |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs attributed_keycode %}
{% raw %}

<a name="attributed_keycode"></a>
# Attributed Keycode

Keycode is the campaign code for the direct mail campaign. Attributed
keycode is the keycode listed on the consumption layer messages
table/promotion_history record the policy application is attributed to.

<a href="https://aaainsights.atlassian.net/wiki/spaces/DMC/pages/316997850/Keycode+Structure+Changes+for+2020" target="_blank">2020 Keycode logic - Marketing Confluence Page</a>  
<a href="https://aaalife-data.atlassian.net/wiki/spaces/DMC/pages/5821104326/2020+Keycode+Structure+Changes" target="_blank">2020 Keycode logic - DSSE Confluence Page</a>

<a href="https://aaainsights.atlassian.net/wiki/spaces/DMOC/pages/1605795852/2021+Keycode+Structure" target="_blank">2021 Keycode logic - Marketing Confluence Page</a>  
<a href="https://aaalife-data.atlassian.net/wiki/spaces/DMC/pages/7113801713/2021+Keycode+Structure" target="_blank">2021 Keycode logic - DSSE Confluence Page</a>

This entity is assigned during the attribution process using the
logic found here: <a href="https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements" target="_blank">Attribution Requirements</a>

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs keycode_10th_position %}
{% raw %}

<a name="keycode_10th_position"></a>
# 10th Position of Keycode

Tenth position of the keycode (1-digit), used to identify [variants](#!/exposure/docs.business_glossary.glossary#variant).
See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

| Example values    |
|-------------------|
| A   |
| B   |
| C   |
| D   |
| E   |
| F   |

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}

{% docs keycode_messages %}
{% raw %}

<a name="keycode"></a>
# Keycode in Messages Table
Keycode is the [campaign code](#!/exposure/docs.business_glossary.glossary#campaign_code_keycode)
for direct mail campaigns and the digital campaign code for email campaigns. These are two separate fields from 
promotion history (MDE) that are merged into a single field in messages as they are roughly the same in interpretability. 

<a href="https://aaainsights.atlassian.net/wiki/spaces/DMC/pages/316997850/Keycode+Structure+Changes+for+2020" target="_blank">2020 Keycode logic - Marketing Confluence Page</a>  
<a href="https://aaalife-data.atlassian.net/wiki/spaces/DMC/pages/5821104326/2020+Keycode+Structure+Changes" target="_blank">2020 Keycode logic - DSSE Confluence Page</a>

<a href="https://aaainsights.atlassian.net/wiki/spaces/DMOC/pages/1605795852/2021+Keycode+Structure" target="_blank">2021 Keycode logic - Marketing Confluence Page</a>  
<a href="https://aaalife-data.atlassian.net/wiki/spaces/DMC/pages/7113801713/2021+Keycode+Structure" target="_blank">2021 Keycode logic - DSSE Confluence Page</a>

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
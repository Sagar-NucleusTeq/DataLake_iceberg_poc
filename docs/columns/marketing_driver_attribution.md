{% docs marketing_driver_attribution %}
{% raw %}
<a name="marketing_driver_attribution"></a>
# Marketing Driver Attribution

Derived during attribution. This is the second level of attribution and
attempts to determine the marketing group that drove interest in our
product and resulted in an application. 

|  Marketing Drivers |
|:-------------:|
| Direct Mail |
| Digital Advertising |
| Email |
| Transfer |
| Lead List |
| General Advertising |
| Integrated Offer |
| *Agent Sold |
| **Retired |

*Policies sold via field agents require additional data to be able to determine the associated marketing
driver. As such, the "Agent Sold" identifier is a place holder for future work.

**Some lead source codes are no longer in use. The "is_active_lead_source_code" column indicates which codes
have been retired. Where information was available, these codes were still 
tagged with the correct marketing driver. When no information was available, these were marked "Retired".

Logic for this level of attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}

{% docs marketing_driver_multi_touch_attribution %}
{% raw %}
<a name="marketing_driver_multi_touch_attribution"></a>
# Marketing Driver Multi-Touch Attribution

Derived during the multi-touch attribution algorithm found in the mid_attribution_multi
schema. This is the second level of attribution and
attempts to determine the marketing group that drove interest in our
product and resulted in an application. As this is multi-touch, it is very likely that a single
policy will have multiple marketing drivers as marketing driver is an attribution of the 
message received by the policy holder, rather than an attribute of the policy (like response channel).
For a current list of marketing drivers, see staging_bi.lead_sources.

This derivation happens two ways. In the case of multi-touch attribution steps 2-4, marketing 
driver is assigned based on the type of message received. In step 1 and the final unattributable 
policy step, marketing driver is assigned based on the lead-source code of the policy. While this
means that the marketing drivers are sourced differently, it also allows for us to capitalize on 
all available information on the policy while we wait for messages from additional marketing drivers
to be added to the platform and afterwards the algorithm.


Logic for this level of attribution and details on attribution steps can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}


{% docs last_touch_marketing_driver_attribution %}
{% raw %}
<a name="last_touch_marketing_driver_attribution"></a>
# Last Touch Marketing Driver Attribution

Derived during multi-touch attribution. This marketing driver is the marketing driver
associated with the last message known to be sent to the policy holder via the messages table. 
Thus, it may not always align with the marketing driver that is typically associated with the 
policy lead_source.


Logic for this level of attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}


{% docs lead_source_marketing_driver_attribution %}
{% raw %}
<a name="lead_source_marketing_driver_attribution"></a>
# Lead Source Marketing Driver Attribution

Derived via the lead source code on the policy. Logic is based on a lookup table,
staging_bi.lead_sources.


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
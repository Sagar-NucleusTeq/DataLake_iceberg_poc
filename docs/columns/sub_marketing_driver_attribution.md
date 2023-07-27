{% docs sub_marketing_driver_attribution %}
{% raw %}

<a name="sub_marketing_driver_attribution"></a>
# Sub Marketing Driver Attribution

Derived during attribution. This column provides additional information to the marketing driver
level of attribution. It attempts to provide further insight into the marketing group that drove interest in our
product and resulted in an application. 

|  Marketing Drivers | Sub Marketing Drivers| 
|:-------------:| -------------- |
| Direct Mail |  ***Customer, ***Member, ***Broad Market|
| Digital Advertising | Click Platform, Direct Webpage, Internet Display Ad, Paid Search, Social Media, Video Ad |
| Email | Customer, Broad Market |
| Transfer | Click Platform, Digital Advertising, Email, General Advertising, Inbound, Paid Search, Phone, Social Media|
| Lead List | Customer, ***Member |
| General Advertising | Print Advertising |
| Integrated Offer | Integrated Offer |
| *Agent Sold | ***Customer, ***Member, ***Broad Market |
| **Retired | Retired |

*Policies sold via field agents require additional data to be able to determine the associated marketing
driver. As such, the "Agent Sold" identifier is a place holder for future work.

**Some lead source codes are no longer in use. The "is_active_lead_source_code" column indicates which codes
have been retired. Where information was available, these codes were still 
tagged with the correct marketing driver. When no information was available, these were marked "Retired".

*** Indicates work to be completed in the future.

Logic for this level of attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}


{% docs sub_marketing_driver_multi_touch_attribution %}
{% raw %}

<a name="sub_marketing_driver_attribution"></a>
# Sub Marketing Driver Attribution

Derived during attribution. This column provides additional information to the marketing driver
level of attribution. It attempts to provide further insight into the marketing group that drove interest in our
product and resulted in an application. 

|  Marketing Drivers | Sub Marketing Drivers| 
|:-------------:| -------------- |
| Direct Mail |  ***Customer, ***Member, ***Broad Market|
| Digital Advertising | Click Platform, Direct Webpage, Internet Display Ad, Paid Search, Social Media, Video Ad |
| Email | Customer, Broad Market |
| Transfer | Click Platform, Digital Advertising, Email, General Advertising, Inbound, Paid Search, Phone, Social Media|
| Lead List | Customer, ***Member |
| General Advertising | Print Advertising |
| Integrated Offer | Integrated Offer |
| *Agent Sold | ***Customer, ***Member, ***Broad Market |
| **Retired | Retired |

*Policies sold via field agents require additional data to be able to determine the associated marketing
driver. As such, the "Agent Sold" identifier is a place holder for future work.

**Some lead source codes are no longer in use. The "is_active_lead_source_code" column indicates which codes
have been retired. Where information was available, these codes were still 
tagged with the correct marketing driver. When no information was available, these were marked "Retired".

*** Indicates work to be completed in the future.

This derivation happens two ways. In the case of multi-touch attribution steps 2-4, sub marketing 
driver is assigned based on the type of message received. In step 1 and the final unattributable 
policy step, sub marketing driver is assigned based on the lead-source code of the policy, using 
a lookup to the staging_bi.lead_sources table. While this
means that the sub marketing drivers are sourced differently, it also allows for us to capitalize on 
all available information on the policy while we wait for messages from additional marketing drivers
to be added to the platform and afterwards the algorithm.

Logic for this level of attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)


### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
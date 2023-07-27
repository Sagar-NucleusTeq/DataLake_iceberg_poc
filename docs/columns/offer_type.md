{% docs offer_type %}
{% raw %}

<a name="Offer Type"></a>
# Offer Type
The numerical code corresponding to the final decision made by the Integrated
Offer Decision Engine. The codes are partially defined in the table below. 
Roughly, the first digit
represents the individual's eligibility for a product, and the second digit
translates to the agent's eligibility to sell a product. However, it should be
noted that the way these codes are defined the second digit does not always mean
the same agent eligibility. Additionally, while translations of these numerical codes appear
identical in several cases, they represent different paths and nodes on 
the decision tree. As such, the translations below do not fully represent the
meanings behind the codes. (NOTE: Offer codes 71 and 72 are missing from the table below. 
The full definitions are not available on 1/27/2022 and the MR needs to be submitted so 
dbt can run. These will be added at a later date.)

|     |     |     |     |     |
| --- | --- | --- | --- | --- |
| Code | Member Eligibility | Agent Eligibility | Offer | Refer to Life Specialist |
| 11 | Not In Use | Not in Use | Not in Use | True |
| 21 | Eligible for Term | Licensed to Sell Life |  Life - Integrated Offer | False |
| 22 | Eligible for Term | Licensed to Sell Health | Accident - Accident Offer | True |
| 23 | Eligible for Term | Not licensed to Life or Health | No Offer | True | 
| 31 | Eligible for Health | Licensed to Sell Health | Accident - Accident Offer | True |
| 32 | Eligible for Health | Not licensed to Sell Health | No Offer | True |
| 41 | Eligible for Health | Licensed to Sell Health | Accident - Accident Offer| False |
| 42 | Eligible for Health | Not licensed to Sell Health |  No Offer | False |
| 51 | Not Eligible for Either Product | N/A | No Offer | True |
| 61 | Not Eligible for Either Product | N/A | No Offer | False |
| 71 | Eligible for GIWL | Licensed to Sell Life | Life - Guaranteed Issue | False |
| 72 | Eligible for GIWL | Licensed to sell Health | Accident - Accident Offer | True |
| 73 | Eligible for GIWL | Not licensed to sell Life or Health | No Offer | True |



### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
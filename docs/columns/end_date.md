{% docs end_date %}
{% raw %}

<a name="end_date"></a>
# Plan Code Effective Date

This date shows the validity of plan code to product group.

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_party_role_end_date %}
{% raw %}

<a name="policy_party_role_end_date"></a>
# Policy-Party Role End Date
The place holder for an expiration date in the policy-party tables. This field will likely
contain the role_end_date.

It was decided at the time of creating the policy_party tables that this date would be NULLed
until we could get the data needed to include it, but we are not sure what the business purpose
was for the date, and therefore we can't be sure which date was intended to be used. 

**Definition of the Expected Policy-Party Role End Date:**
The end date or last day when the party is considered attached to the policy in a
specific role (insured, owner, etc).

This is the role end date which is when the party connection becomes inactive in regards 
to a policy, or in other words, it is the date on which the 
[role](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#role) 
becomes ineffective.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

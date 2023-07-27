{% docs effective_date %}
{% raw %}

<a name="effective_date"></a>
# Effective Date

The effective date of the data in that row

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs plan_code_effective_date %}
{% raw %}

<a name="plan_code_effective_date"></a>
# Plan Code Effective Date

This date shows the validity of plan code to product group.

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_effective_date_time %}
{% raw %}

<a name="policy_effective_date_time"></a>
# Policy Effective Date and Time
The effective date is generally understood as the first day that the policy 
enters into force. An effective date is generally the time, day, month, and year when the 
insurance coverage becomes active. It also marks when the first monthly premium has been paid.
In this instance, it can also include the date on which the policy has been revised (i.e. a rider 
was added, or the face amount was updated).

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_effective_date %}
{% raw %}

<a name="policy_effective_date"></a>
# Policy Effective Date
The effective date is generally understood as the first day that the policy 
enters into force. An effective date is generally the day, month, and year when the 
insurance coverage becomes active. It also marks when the first monthly premium has been paid.
In this instance, it can also include the date on which the policy has been revised (i.e. a rider 
was added, or the face amount was updated).

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_party_role_effective_date %}
{% raw %}

<a name="policy_party_role_effective_date"></a>
# Policy-Party Role Effective Date
The place holder for an effective date in the policy-party tables. This field will likely
contain the role_start_date.

It was decided at the time of creating the policy_party tables that this date would be NULLed
until we could get the data needed to include it, but we are not sure what the business purpose
was for the date, and therefore we can't be sure which date was intended to be used. 

**Definition of the Expected Policy-Party Role Effective Date:**
The effective date or first day when the party is considered attached to the policy in a
specific role (insured, owner, etc).

This is the role start date which is when the party connection becomes active in regards 
to a policy, or in other words, it is the date on which the 
[role](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#role) 
becomes effective.

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

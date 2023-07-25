{% docs promotion_state %}
{% raw %}

<a name="promotion_state"></a>
# Promotion State

The residential state of the individual receiving the promotion at the time it was sent.
  
Add a relation test should be added to this column once the staging version of
landing_global_lookups.stage_province is available.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs state_name %}
{% raw %}


<a name="state_name"></a>
# State Name
The name of a geographic state or province.

| Example Values |
| -------------- |
|   Michigan     |
|   Alabama      |
|   Montana      |
|   Nevada       |
|   California   |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Public |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs state_code %}
{% raw %}

<a name="state_code"></a>
# State Code
A 2-character code to identify state.

| Example Values |
| -------------- |
|      MI        |
|      AL        |
|      MO        |
|      NV        |
|      CA        |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Public |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs state_at_application %}
{% raw %}

<a name="state_at_application"></a>
# State at Time of Application
The two-letter code for the state in which the primary insured lived while the application.
was submitted

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs state_of_issue %}
{% raw %}

<a name="state_of_issue"></a>
# State of Issue (Code)
The two-letter code for the state in which the policy was issued.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs state_of_issue_description %}
{% raw %}

<a name="state_of_issue_description"></a>
# State of Issue
The fully spelled out name of the state in which the policy was issued.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs recipient_state %}
{% raw %}

<a name="recipient_state"></a>
# Recipient State

The US state to which marketing materials were sent as part of a given campaign.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs current_state %}
{% raw %}

<a name="current_state"></a>
# Current State

The state in which the individual currently resides. This is Merkle's best estimate
of an individual's actual current residence using club and Wunderman data. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}


{% docs license_state %}
{% raw %}

# Agent License State
The state for which an agent license is valid.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs client_state_code %}
{% raw %}

<a name="client_state_code"></a>
# Client State Code
Two-character code to identify the state of the client's mailing address.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs integrated_offer_member_state %}
{% raw %}

<a name="integrated_offer_member_state "></a>
# Member State at Time of Integrated Offer

The residential state of the member at the time the individual was considered for an integrated offer.
  

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

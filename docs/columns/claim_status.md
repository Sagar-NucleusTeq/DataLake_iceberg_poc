{% docs claim_status %}
{% raw %}

<a name="claim_status"></a>
# Claim Status
The status of the claim. 

A claim is considered as pending when
- Review completed
- Has a claim number
- Decision has not been made - the claim hasn't been approved, denied, finished or completed

A claim can be closed without payment if it is 

- Denied
- Closed because a required proof is missing
- Closed because of an incomplete decision
- For PDA claims, there is no difference between closed & closed incomplete denied
- Need to split these out

| Code | Description            |
|------|------------------------|
| PAID | Paid and closed        |
| PEND | Pending                |
| CWOP | Closed without payment |

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %} 
{% enddocs %}

{% docs claim_status_description %}
{% raw %}


<a name="claim_status_description"></a>
# Claim Status Description
The description of the status of a claim.

| Code | Description            |
|------|------------------------|
| PAID | Paid and closed        |
| PEND | Pending                |
| CWOP | Closed without payment |

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

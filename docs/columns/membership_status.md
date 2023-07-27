{% docs membership_status_flag %}
{% raw %}

<a name="membership_status_flag"></a>
# Membership Status Flag
Indicates if a membership is active or not:

| Valid Values | Meaning |
| ------------ | ------- |
|      A       | Active  |
|      C       | Converted |
|      E       | AAA Member - Membership Number unknown or incorrect |
|      N       | Not a Member |
|      X       | Expired |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs pas_membership_status %}
{% raw %}

<a name="pas_membership_status"></a>
# PAS Membership Status
Indicates the policy administration system's best known membership status (AKA whether 
a membership is Active, Missing, Non-Member, etc.) Note that people can move, edit, adjust their 
memberships and the PAS (either FAST or LifePlus) may not know about it.

LifePlus:

| Valid Values |
| ------------ |
| Active       |
| Converted    |
| AAA Member - Membership Number unknown or incorrect |
| Not a Member |
| Expired      |

FAST:

| Valid Values |
| ------------ |
| Active       |
| Spouse       |
| Missing      |
| Non-Member   |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


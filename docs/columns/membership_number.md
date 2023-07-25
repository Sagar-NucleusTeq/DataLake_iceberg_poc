{% docs membership_number %}
{% raw %}

<a name="membership_number"></a>
# AAA Membership Number
The AAA membership number is a key used by AAA National to identify a particular member. In
theory, membership number is a key that corresponds to one individual, which is the case in club
files. In individual summary this is not the case. Individuals in the same household as a primary
member will get assigned the same membership number. Generally speaking, an individual needs to
be a member sourced from the club file(s) in order to be assigned a membership_number.

Membership numbers are not static and can change over time. An individual may lapse their
membership and have a new number assigned when they re-join. This means that a particular
indiv_key may have several membership numbers associated with it over time. Club files are the
source for all legitimate membership numbers.

All policies do not necessarily have a membership number associated with it. This occurs
primarily for two reasons.
1. AAAL admin systems did not record the number, 
2. The policy is a broadmarket (non-member) policy and a membership number does not exist.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs membership_number_current %}
{% raw %}

<a name="membership_number_current"></a>
# Current AAA Membership Number
The current [membership number](#!/exposure/docs.business_glossary.glossary#membership_number)
is the most current known membership number assigned to an individual. Individuals in the same 
household as a primary member will get assigned the same membership number. Generally speaking, 
an individual needs to be a member sourced from the club file(s) in order to be assigned 
a membership_number.

Membership numbers are not static and can change over time. An individual may lapse their
membership and have a new number assigned when they re-join. This means that a particular
indiv_key may have several membership numbers associated with it over time. Club files are the
source for all legitimate membership numbers.

All policies do not necessarily have a membership number associated with it. This occurs
primarily for two reasons.
1. AAAL admin systems did not record the number, 
2. The policy is a broadmarket (non-member) policy and a membership number does not exist.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs party_membership_number %}
{% raw %}

<a name="party_membership_number"></a>
# Party Membership Number
The party membership number is the [membership number](#!/model/model.aaa_life_data_platform.gold_services_integrated_offer#membership_number)
associated with this party in the policy administration system (PAS). This may be stale or 
infrequently updated. Each PAS (LifePlus and FAST) holds these membership numbers slightly 
differently.

FAST: The membership number provided at the time of application if the applicant could produce it.
Which means if you want to know for a given person if they have a membership and the details of the
membership you should NOT use this field, it's a policy connected source. A person can move
memberships to another domain and the membership associated with the policy is not automatically
updated.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs application_membership_number %}
{% raw %}

<a name="application_membership_number"></a>
# Application Membership Number
The application membership number is the 
[membership number](#!/exposure/docs.business_glossary.glossary#membership_number)
associated with this application or policy in the policy administration system (PAS). This may 
be stale or infrequently updated. Each PAS holds these membership numbers slightly different. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs internal_membership_number %}
{% raw %}

<a name="internal_membership_number"></a>
# ACG Internal Member Number
This value is an internal field used by ACG's system to identify a member or 
member account.  It functions and is structured identically to a standard member 
number but it is distinct from a standard AAA member number.  Some ACG 
members (typically from northern ACG states) have an internal member number that
is different from their actual member number.  In southern ACG states both numbers
are usually identical.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}
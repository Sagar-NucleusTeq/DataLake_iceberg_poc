{% docs is_lapse_lead %}
{% raw %}

<a name="is_lapse_lead"></a>
# Is Lapse Lead
A boolean indicator of whether a record is a lapse lead. Policyholders having lapsed or canceled 
Direct Mail Term that has expired in the past 90 days will be included in this lead list. 

The criteria used to select this lead are:
- Sub product line is Direct Mail Term
- Having a non null issue date (To indicate they have been issued a policy at some point even if 
  they do not have one in force now)
- The policy has lapsed or been cancelled 
- The withdrawn date or the termination date is 3 months ago from the date the lead list was
  generated (Setting 3 months as the cutoff because termination date needs a lag time and it is 
  backdated after the 60 day grace period)

### Security and Usage Information
|     |            |
| --- |------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs is_withdrawal_lead %}
{% raw %}

<a name="is_withdrawal_lead"></a>
# Is Withdrawal Lead
A boolean indicator of whether a record is a withdrawal lead. Policyholders having withdrawn 
Direct Mail Term that has expired in the past 90 days will be included in this lead list.

The criteria used to select this lead are:
- Sub product line is Direct Mail Term
- Having a non null issue date (To indicate they have been issued a policy at some point even if
  they do not have one in force now)
- The policy has been withdrawn
- The withdrawn date or the termination date is 3 months ago from the date the lead list was
  generated (Setting 3 months as the cutoff because termination date needs a lag time and it is 
  backdated after the 60 day grace period)

### Security and Usage Information
|     |            |
| --- |------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs is_60_to_64_anniversary_lead %}
{% raw %}

<a name="is_60_to_64_anniversary_lead"></a>
# Is 60 to 64 Anniversary Lead
A boolean indicator of whether a record is an anniversary lead for individuals with age at renewal
from 60 to 64. Policyholders having a Direct Mail Term product that needs renewal in 2 months and 
whose age at the renewal is between 60 and 64 will be included in this lead list.

The criteria used to select this lead are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be greater than 60 and less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Direct Mail Term'

### Security and Usage Information
|     |            |
| --- |------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs is_less_than_60_anniversary_lead %}
{% raw %}

<a name="is_less_than_60_anniversary_lead"></a>
# Is Less Than 60 Anniversary Lead
A boolean indicator of whether a record is an anniversary lead for individuals with age at renewal
less than 60 and greater than 35. Policyholders having a Direct Mail Term product that needs renewal
in 2 months and whose age at the renewal is between 35 and 60 will be included in this lead list.

The criteria used to select this lead are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at next renewal date should be greater or equal to 35 and less than or 
  equal to 60
- The policyholder's age at next renewal date should end with 0 or 5 because there will be rate 
  increase for individual whose age ends in 0 and 5
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Direct Mail Term'

### Security and Usage Information
|     |            |
| --- |------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs is_term_expiry_lead %}
{% raw %}

<a name="is_term_expiry_lead"></a>
# Is Term Expiry Lead
A boolean indicator of whether a record is a near expiry term lead. Policyholders having Term 
product that will expire in 2 months will be included in this lead list. 

The criteria used to select this lead are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Term'
- The policy is 2 months away from the term end date

### Security and Usage Information
|     |            |
| --- |------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs is_ulwl_annuity_anniversary_lead %}
{% raw %}

<a name="is_ulwl_annuity_anniversary_lead"></a>
# Is ULWL Annuity Anniversary Lead
A boolean indicator of whether a record is an anniversary lead for products Universal Life, 
Annuity, Ordinary Whole Life, Ordinary SIWL, Juvenile Whole Life and Juvenile SIWL. Policyholders
having the above products that needs renew in 2 months will be included in this lead list. 

The criteria used to select this lead are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Universal Life' or 'Annuity' or 'Ordinary and Juvenile' 
  with sub product line 'Whole Life' or 'SIWL'


### Security and Usage Information
|     |            |
| --- |------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}
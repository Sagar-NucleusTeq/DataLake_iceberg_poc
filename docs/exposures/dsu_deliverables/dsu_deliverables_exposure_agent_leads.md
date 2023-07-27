{% docs dsu_deliverables_exposure_agent_leads %}
{% raw %}

# DSU Agent Leads
The DSU receives sales leads list generated using information from the LifePlus and FAST PAS systems.

Leads are prioritized for the clubs. Any lead that belongs to a club code that is not currently 
setup to receive them as part of the club lead list process are routed to the DSU.

There are 6 types of leads - lapse, withdrawal, 60 to 64 anniversary, less than 60 anniversary,
near expiry and ULWL annuity anniversary leads.

For LifePlus policies, we only include the policy with lexis score greater than 400 or equal to 0
and with Rx score less than 1.5. For FAST policies, we currently don't have any filters associated 
with Lexis and Rx score.

The criteria used to select lapse leads are:
- Sub product line is Direct Mail Term
- Having a non null issue date (To indicate they have been issued a policy at some point even if 
  they do not have one in force now)
- The policy has lapsed or been cancelled 
- The withdrawn date or the termination date is 3 months ago from the date the lead list was
  generated (Setting 3 months as the cutoff because termination date needs a lag time and it is 
  backdated after the 60 day grace period)

The criteria used to select 60 to 64 anniversary leads are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be greater than 60 and less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Direct Mail Term'

The criteria used to select less than 60 anniversary leads are:
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

The criteria used to select near expiry leads are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Term'
- The policy is 2 months away from the term end date

The criteria used to select ULWL annuity anniversary leads are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Universal Life' or 'Annuity' or 'Ordinary and Juvenile' 
  with sub product line 'Whole Life' or 'SIWL'

The criteria used to select withdrawal leads are:
- Sub product line is Direct Mail Term
- Having a non null issue date (To indicate they have been issued a policy at some point even if
  they do not have one in force now)
- The policy has been withdrawn
- The withdrawn date or the termination date is 3 months ago from the date the lead list was
  generated (Setting 3 months as the cutoff because termination date needs a lag time and it is 
  backdated after the 60 day grace period)

### Security and Usage Information
|     |                                                  |
| --- |--------------------------------------------------|
| Security Classification: | Confidential                                     |
| Usage Requirement:       | PII                                              |
| Grain:                   | 1 row per policy_number                          |
| Refresh Cadence:         | The leads list generated every 23rd of the month |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs club_deliverables_exposure_agent_leads_60_to_64_anniversary %}
{% raw %}

# Agent Leads 60 to 64 Anniversary
Agents receive sales leads list generated using information from the LifePlus and FAST PAS systems.

There are 6 types of leads list - lapse, withdrawal, 60 to 64 anniversary, less than 60 anniversary,
near expiry and ULWL annuity anniversary leads. For each club, each leads list is a tab in an Excel 
file. The new leads list generated from Data Platform suppresses individuals that are on a "do no 
call" or "do not send" list. 

For LifePlus policies, we only include the policy with lexis score greater than 400 or equal to 0
and with Rx score less than 1.5. For FAST policies, we currently don't have any filters associated 
with Lexis and Rx score.

The criteria used to select 60 to 64 anniversary leads are:
- The policy is in status 'inforce'
- The policy is 2 months away from the next renewal date (Setting 2 months as the cutoff so 
  policyholders have enough time to renew the policy without them accidentally crossing the premium 
  jump)
- The policyholder's age at the renewal date should be greater than 60 and less than 65
- The duration of the policy should be at least 4 years (Ensures that the duration of the policy is
  more than 4 years - we haven't recouped our selling costs yet, so we don't want to cross/upsell)
- The policy should have a product line of 'Direct Mail Term'

### Security and Usage Information
|     |                                                               |
| --- |---------------------------------------------------------------|
| Security Classification: | Confidential                                                  |
| Usage Requirement:       | PII                                                           |
| Grain:                   | 1 row per policy_number                                       |
| Refresh Cadence:         | The leads list generated every 1st of the month               |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
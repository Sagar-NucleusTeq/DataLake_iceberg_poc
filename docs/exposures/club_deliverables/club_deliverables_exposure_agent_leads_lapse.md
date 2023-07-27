{% docs club_deliverables_exposure_agent_leads_lapse %}
{% raw %}

# Agent Leads Lapse
Agents receive sales leads list generated using information from the LifePlus and FAST PAS systems.

There are 6 types of leads list - lapse, withdrawal, 60 to 64 anniversary, less than 60 anniversary,
near expiry and ULWL annuity anniversary leads. For each club, each leads list is a tab in an Excel 
file. The new leads list generated from Data Platform suppresses individuals that are on a "do no 
call" or "do not send" list. 

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
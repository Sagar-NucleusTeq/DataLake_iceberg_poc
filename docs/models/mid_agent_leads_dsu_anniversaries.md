{% docs mid_agent_leads_dsu_anniversaries %}
{% raw %}

# DSU Anniversary Leads
![last updated](assets/update_badges/mid_agent_leads_dsu_anniversaries.svg)

This table was created to apply transformations on the club_deliveries_agent_leads model to
create the monthly leads to be sent to the DSU. This model contains all of the inclusion logic
for the anniversary leads.

**Inclusion Criteria:**

* Inforce polices only
* Remove ACG, ACE and MWG companies
* Remove the following club codes:
  * ('007','032','034','127','164','176','212','241','263','023','260','111','006','130','177','238','071')
* Duration of the policy is more than 4 years
* Include only policies that are 3 months to term renewal
* Include Universal Life policies
* Include Ord and Juv, but only Whole Life and SIWL policies
* Include Term policies
* Age at Renewal must be in the following
  * (30,35,40,45,50,55,60,61,62,63,64)

**Additional Criteria For Lifeplus Policies**

(these criteria are already applied in the club_deliverables_agent_leads model)

* RxScore <= 1.5 OR RxScore = 0 OR RxScore = -1 OR RxScore = '' OR RxScore IS NULL
* RiskScore >= 400 OR RiskScore = 0 OR RiskScore IS NULL
* OrderStatus <> 'N' OR OrderStatus IS NULL

### Security and Usage Information
|     |                         |
| --- |-------------------------|
| Grain:                   | 1 row per policy_number |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
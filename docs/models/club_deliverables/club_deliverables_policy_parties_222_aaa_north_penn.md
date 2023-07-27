
{% docs club_deliverables_policy_parties_222_aaa_north_penn %}
{% raw %}

# Policy Parties 222 - AAA North Penn - Club Deliverable

![last updated](assets/update_badges/club_deliverables_policy_parties_222_aaa_north_penn.svg)

A [reporting layer table](#!/exposure/docs.business_glossary.glossary#reporting_layer)
for parties related to applications and policies that have the club code of 222 - AAA North Penn showing all 
policy-party roles with types: 

**insured** (*LifePlus*: INS, JNT; *FAST*: OLI_REL_INSURED),  
**owner** (*LifePlus*: OW1, OW2; *FAST*: OLI_REL_OWNER, OLI_REL_JOINTOWNER),  
**payor** (*LifePlus*: PAY, PY2, PAE; *FAST*: OLI_REL_PAYOR),  
and **beneficiary** (*LifePlus*: BEN, BNC; *FAST*: OLI_REL_BENEFICIARY, OLI_REL_CONTGNTBENE).

LifePlus: Currently, as of 7/20/2021, the start_date and end_date are 
set to NULL due to the historical tables in AS400/LifePlus needing data discovery. These 
columns likely won't be useful until at least September 1, 2021.

FAST: Currently, as of 1/12/2022, the effective_date and end_date are
set to NULL due to the need to align with LifePlus and the historical tables in AS400/LifePlus 
needing data discovery. These columns likely won't be useful until at least September 1, 2021.

Exceptions in this table:

1. The grain of the table (see below). We are "grandfathering" these party_numbers in because 
they are a known issue and the business hasn't responded with a correction. This test condition 
will likely not be corrected in the source system due to the shift from LifePlus to FAST. This 
test is here to catch any new instances where a party has the same role with the same
policy multiple times, aka duplicates at the grain level. 
('0003417744','0002918540','0002895102','0002907168')

2. The length of party_number should be 10 for LifePlus policies. We are 
"grandfathering" these LifePlus party_numbers in because they are a known issue and the business 
hasn't responded with a correction.
This test condition will likely not be corrected in the source system due to the shift from 
LifePlus to FAST. This test is here to catch any new party numbers that come in and are 
less than length of 10 characters. ('000890413','000888336','000737232','000604749','000749807')

3. NULL policy_numbers with party_numbers IN ('0005053816','0007411319','0000435875','0006318386','0000133628','0004245338')
have been **removed** from this table. This table is to show the contacts related to policies, so if
there is no way to know how a person relates to any specific policy, i.e. the policy number is null, 
then they shouldn't make it to the table.


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + role_type + party_number - minus party_numbers: '0003417744','0002918540','0002895102','0002907168' |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
See [**Policy Number**](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [**Role**](#!/exposure/docs.business_glossary.glossary#role)
for definition.

See [**Party Number**](#!/exposure/docs.business_glossary.glossary#party_number)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
                        
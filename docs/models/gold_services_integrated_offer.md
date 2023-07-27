{% docs gold_services_integrated_offer %}
{% raw %}

# Integrated Offer

![last updated](assets/update_badges/gold_services_integrated_offer.svg)

A table detailing summary information for members and policy holders that 
are used in the determination of an offer in the integrated offer program.

Integrated Offer is a new program as of the summer of 2021. The table is used to serve life insurance
offers to Licensed Auto Club agents at the point of sale of home/auto insurance.  

This table is explicitly for machine to machine communication and is not
appropriate for use by humans.

Plan codes that exist in gold.policies but do not exist in product hierarchy will 
have incorrect values for product specific fields. Additionally the decision tree will render an 
inaccurate decision for those individuals.

## ACG Member Number Adjustments
Due to an identified issue with ACG member numbers as provided to Merkle, we overwrite member numbers 
for ACG members based on a master file provided by ACG.  Numbers to be adjusted are identified via 
the following logic:

```sql
SUBSTRING(Merkle.member_number,1,3) = SUBSTRING(new_data.member_number,1,3) AND 
SUBSTRING(Merkle.member_number,4,3) = SUBSTRING(new_data.member_number,4,3)
SUBSTRING(Merkle.member_number,7,9) = RPAD(new_data.internal_member_number,9,0)
```
This ensures that 
1. Only members received from ACG match (their unique BIN is 429)
2. We don't get any false matches from people inside ACG with the same internal member number but different club codes
3. A 9-character unique member number segment is used for comparison between the original data and the translation table

Even after this, there is a small number of members (288 as of 6/22/2022) who end up with duplicated
policy numbers using this logic due to being received on the same club file (and thus having the 
same associated club code).  Per discussion with Z. Hites, we are removing the older of the two from
the lookup table, on the assumption that younger people are more likely to get a new auto or home 
policy, and thus be eligible for an Integrated Offer.

### Security and Usage Information
|    |    |
|---|---|
|Grain:|1 row per individual_key|
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

### Grain Description 
Identifier of an individual and all their known information in 
the AAALife database. In theory, individual keys should correspond to 
one and only one individual. An individual does not need to be an AAA 
member to be assigned a key.

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}

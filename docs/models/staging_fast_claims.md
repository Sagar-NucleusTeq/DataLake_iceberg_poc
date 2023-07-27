{% docs staging_fast_claims %}
{% raw %}

# Claims FAST
![last updated](assets/update_badges/staging_fast_claims.svg)

A compilation of claim data from FAST. In this table,
claim number is not unique because a claim can be on a policy's multiple benefits.

NOTE: There are currently 6 records with NULL claim numbers. It is expected that these six policy
numbers will be the only records that come through with a NULL claim_number - they are the first
6 policies processed through FAST
('3000102156','3000100218','3000103253','3000104277','3000108237','3000100382')

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per claim_number + coverage_type + benefit_type |
| Security Classification: | SRD   |
| Usage Requirement:       | Gold   |

### Grain Description
**Claim Number**: An automatically assigned number for a claim. Claim numbers are unique to the event. 
Read more on claim number [here](#!/model/model.aaa_life_data_platform.staging_bi_claims_lifeplus#claim_number).

**Coverage Type**: TODO: Define this when mid_claims_fast is created

**Benefit Type**: The type of benefit associated with the claim. 

| Valid Values | Meaning  |
|--------------|----------|
| RECUP        | Hospital |
| ER           | Medical  |
| LMB          | ?        |
| HOSP         | Hospital |

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}
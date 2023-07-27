{% docs staging_lifeplus_client_membership %}
{% raw %}

# LifePlus Client Membership

![last updated](assets/update_badges/staging_lifeplus_client_membership.svg)

Club membership numbers that were submitted with the policy applications in Lifeplus.  In the 
Lifeplus system, these application membership numbers are stored with either the insured's or owner's
client information. For policies resulting from direct mail campaigns, the membership number 
belongs to the party that AAA Life marketed to, and may not be the insured’s membership number.

Note: 
There are 193 null values in the club_code column. The records have the following 
membership_status_flag: X (Expired), N (Not a Member), E (Membership Number unknown or incorrect).
To add not_null test for future records, records with membership flags X, N, and E are excluded from
the test. 

### Security and Usage Information
|     |                                     |
| --- |-------------------------------------|
| Grain:                   | 1 row per client_number + club_code |
| Security Classification: | Internal                            |
| Usage Requirement:       | Deidentified                        |

### Grain Description
[Client Number](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_master#party_number)

[Club Code](#!/exposure/docs.business_glossary.glossary#club_code)

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
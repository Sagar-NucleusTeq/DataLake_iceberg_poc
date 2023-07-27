{% docs staging_lookup_club_data_delivery_groups %}
{% raw %}

# Club Data Delivery Group Lookup (by Club Code)

![last updated](assets/update_badges/staging_lookup_club_data_delivery_groups.svg)

A DSSE-created lookup table for club code and delivery group originally created for the 
reporting layer so that data from gold_policy_parties and gold_policies can be passed along
programmatically to the appropriate club groups. (This is done in the club_deliverables_policies...
and club_deliverables_policy_parties... models.)

Example Match-ups: 

|    Example Delivery Groups    | Club Code |
| ----------------------------- | --------- |
| 188 - AAA Northampton County  |    217    |
| 217 - AAA Schuylkill County   |    217    |
| ACG (ALMI)                    |    020    |
| ACG (ALMI)                    |    069    |
| ACG (ALMI)                    |    270    |
| ACE (ALSC)                    |    001    |
| ACE (ALSC)                    |    036    |
| ACE (ALSC)                    |    601    |
| AANE                          |    008    |
| AANE                          |    097    |
| AANE                          |    240    |
| 215 - AAA East Central        |    189    |
| 215 - AAA East Central        |    215    |
| MWG (ALCS)                    |    005    |
| MWG (ALCS)                    |    255    |
| 260 - AAA Washington          |    260    |
| 260 - AAA Washington          |    261    |
| AAA HOME                      |    000    |
| 006 - AAA Colorado            |    006    |
| AANY                          |    097    |
| 241 - AAA South Dakota        |    241    |
| AAA Life Home Office          |    961    |

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per club_code + delivery_group + deliverable |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
**Delivery Group**: The group that the 
See [club_code](#!/exposure/docs.business_glossary.glossary#club_code)
for definition.


**Deliverable**: The [deliverable](#!/model/model.aaa_life_data_platform.staging_lookup_club_data_delivery_groups#deliverable) 
that this other data is used for. This is generally a short string created by
the DSSE team describing the deliverable, for example, "CLUB POLICIES AND PARTIES".

**Delivery Group**: The group that the 
[deliverable](#!/model/model.aaa_life_data_platform.staging_lookup_club_data_delivery_groups#deliverable)
is being delivered to. Currently this includes mostly club/company groupings 
and/or independent clubs.


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
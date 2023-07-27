{% docs staging_merkle_individual_acg_extracts %}
{% raw %}

# ACG Membership ID Mapping

![last updated](assets/update_badges/staging_merkle_individual_acg_extracts.svg)

A table used to replace incorrect member numbers provided by ACG for their members 
with those members' actual membership numbers.  This is needed to allow for the 
proper function of the Integrated Offer product in the ACG footprint until we 
are able to receive and process corrected club membership files from ACG into the
Marketing Data Environment.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per member_number|
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
This table contains one record per ACG membership number.  If a person owns more 
than one membership within ACG's geographic territory, or is associated with more 
than one internal identifier in ACG's platform, they could appear in this table
more than once.  No membership number should be assigned to more than one person
, however.  

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
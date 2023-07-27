{% docs staging_dsse_club_city_zip_suppression %}
{% raw %}

# Club-City-Zips Not Chosen for look up table

![last updated](assets/update_badges/staging_dsse_club_city_zip_suppression.svg)

A table for the club-zip matches that should be suppressed because they were not picked for the
1-1 lookup table since club_code and zip_code are not necessarily a 1-1 match. These records
exist in the staging_dsse_club_city_zip model, but they are removed (because of their presence
in this model) when the clean 1-to-1 zip-to-club mapping needs to be done in SQL CTEs.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:    |1 row per zip_code + club_code + state_code + city + effective_date + expiration_date |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
The above 6 columns are needed for uniqueness in this table. 
See column descriptions below for each piece of the grain description.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
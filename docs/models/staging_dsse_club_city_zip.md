{% docs staging_dsse_club_city_zip %}
{% raw %}

# Club-City-Zip Lookup Table

![last updated](assets/update_badges/staging_dsse_club_city_zip.svg)

A lookup table for all club-city-zip rollups, both the most current chosen and historical 
club code(s) for any zip code, state and/or city. The historical records will be expired (have
an expiration date).

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:    | 1 row per zip_code + club_code + state_code + city + effective_date + expiration_date (except for zip_code = '20653' AND club_code = '212' AND state_code = 'MD' AND city = 'LEXINGTON PARK') |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
The above 6 columns are needed for uniqueness in this table. 
See column descriptions below for each piece of the grain description.

NOTE: There is currently a duplicate in this table where zip_code = '20653' AND club_code = '212'
AND state_code = 'MD' AND city = 'LEXINGTON PARK'.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
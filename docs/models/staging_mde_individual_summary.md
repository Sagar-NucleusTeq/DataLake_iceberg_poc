{% docs staging_mde_individual_summary %}
{% raw %}

# Individual Summary

![last updated](assets/update_badges/staging_mde_individual_summary.svg)

All information for an individual person, including related census and amerilink data, scores
for AAA Life products, and other information for this individual. This table is sourced from the
Merkle Redshift AAA Life database. As of 3/11/2021 individuals who can no longer be marketed to for
any reason (DNS) are removed from this table in the source system. Since they are suppressed by 
Merkle they are not present in the MDE version of this table either. An individual who is
suppressed from some, but not all, marketing (e.g. can email but not mail), will still be
included in this table.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per individual |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
See [individual key](#!/exposure/docs.business_glossary.glossary#individual_key)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.


{% endraw %}
{% enddocs %}
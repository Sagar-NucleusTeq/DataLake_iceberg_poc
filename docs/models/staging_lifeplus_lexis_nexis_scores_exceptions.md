{% docs staging_lifeplus_lexis_nexis_scores_exceptions %}
{% raw %}

# Lexis Nexis Scores Exceptions

![last updated](assets/update_badges/staging_lifeplus_lexis_nexis_scores_exceptions.svg)

Table comes from the Lifeplus UWRLEX table and contains all the exceptions that are excluded from
the staging_lifeplus_lexis_nexis_scores model.

Exclusion criteria: duplicate records or multiple scores per 
policy_number+party_number+requirement_sequence

Note: As of 9/20/22 there are 46 records included in this exclusion table. These records belong to 
23 policies. 20 of them have more than one risk_class_score. 

As of 9/20/22, the excluded polices are:
4033826613,
4034778367,
4035609983,
4034778235,
4035348616,
4034778409,
4034778284,
4034778383,
4034778136,
4034778201,
4034778292,
4034778300,
4033885254,
4034999419,
4034778342,
4034778193,
4034778060,
4034778359,
4034778318,
4034778474,
4034778102,
4034778151,
4034778268.

Table Contains underwriting results for risk scores. These mortality scores based on a
composite of things gathered from lexis nexis data.


### Security and Usage Information
|     |                                           |
| --- |-------------------------------------------|
| Grain:                   |  |
| Security Classification: | SRD                                       |
| Usage Requirement:       | Gold                                      |

### Grain Description
Because these records are exceptions that were excluded from the staging_lifeplus_lexis_nexis_scores
model for duplication there is no way to determine the grain of this exception table because it
contains the bad data.


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
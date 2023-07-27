{% docs staging_lifeplus_lexis_nexis_scores %}
{% raw %}

# Lexis Nexis Scores

![last updated](assets/update_badges/staging_lifeplus_lexis_nexis_scores.svg)

Table comes from the Lifeplus UWRLEX table.

Contains underwriting results for risk scores. These mortality scores based on a
composite of things gathered from lexis nexis data.

Note: As of 9/20/22 there are 23 policies that appear to have duplicate records in this table. 20 of them
have more than one risk_class_score. These policies have been excluded and an exception table has
been created called staging_lifeplus_lexis_nexis_scores_exceptions to store these exceptions until
they get corrected in the source system.

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


### Security and Usage Information
|     |                                           |
| --- |-------------------------------------------|
| Grain:                   | 1 row per policy_number + party_number + requirement_sequence |
| Security Classification: | SRD                                       |
| Usage Requirement:       | Gold                                      |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [party number](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_master#party_number)
for more information

**requirement sequence**:

This field is associated with the staging_lifeplus_lexis_nexis_scores model and is part of the grain
of that table. This sequence number is related to the underwriting requirements and the number gets
increased by one every time a user adds another requirement that already exists within the
requirements table (NBSUNWRQ) in Lifeplus.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
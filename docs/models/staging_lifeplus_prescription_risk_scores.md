{% docs staging_lifeplus_prescription_risk_scores %}
{% raw %}

# Lifeplus Prescription Scores

![last updated](assets/update_badges/staging_lifeplus_prescription_scores.svg)

This is a table from Lifeplus that contains data about the prescription scores from Actuarial.

For prescription history scores, the bigger the score the worse the risk (it's essentially a 
mortality scalar - at least in the middle of the bell curve it is) scores are between 0 & 10. This
relationship is in opposition to Lexis Nexis scores (also mortality scores based on a composite
of things) those scores are measured in hundreds and the higher the score the better the risk from
AAA Life's point of view.

### Security and Usage Information
|     |                                 |
| --- |---------------------------------|
| Grain:                   | 1 row per policy_number + base_rider_code |
| Security Classification: | SRD                             |
| Usage Requirement:       | Gold                            |

### Grain Description
See [Policy Number](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [Base Rider Code](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#base_rider_code)
for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
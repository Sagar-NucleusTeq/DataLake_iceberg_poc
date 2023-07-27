{% docs current_milliman_bucket_score %}
{% raw %}

# Milliman Bucket Score

milliman_bucket_score scores indicate the relative mortality risk present for an individual at present time.

Scores do not exist for every individual in the database nor do they exist for every 
member in the club file. They do however exist for the majority of both populations.

milliman_bucket_score scores can be null or any of the following 5 values (0,1,2,3,4).

| Score Value | Description |
| ----------- | ----------- |
| null | We never sent the record to Milliman to be scored |
| 0 | The record was sent to Milliman but Milliman could not find a match in their DB |
| 1 | Individual has baseline mortality risk |
| 2 | Individual has twice the mortality risk of a 1 |
| 3 | Individual has 3x the mortality risk of a 1 |
| 4 | Individual has 4x the mortality risk of a 1 |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs promotion_household_milliman_bucket_score %}
{% raw %}
# Milliman Bucket Score for the Household at Time of Promotion

Describes the mortality risk associated with the promotion message recipient's
household, as provided by Milliman. This is used to determine inclusion/exclusion
in marketing programs. A higher score implies higher risk of mortality.
Note that because promotion records come from the Adobe campaign software,
in which Null and zero are indistinguishable. Therefore, unknown values
are shown as 0 here.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs promotion_milliman_bucket_score %}
{% raw %}
# Promotion Milliman Bucket Score

Describes the mortality risk associated with the promotion message recipient,
as provided by Milliman. This is used to determine inclusion/exclusion in
marketing programs. A higher score implies higher risk of mortality.
Note that because promotion records come from the Adobe campaign software,
in which Null and zero are indistinguishable. Therefore, unknown values
are shown as 0 here.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
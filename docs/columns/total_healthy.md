{% docs total_healthy %}
{% raw %}

<a name="total_healthy"></a>
# Total Healthy

Count of mail considered 'healthy.'

Healthy mail is defined as:
1. Mail that was sent on time AND was delivered on time
2. Mail that was sent on time AND has not been delivered AND has not passed the delivery deadline.
3. Mail that has not yet entered the postal stream because the associated campaign has not dropped.

Used in the calculation for [Overall Health Score](#!/exposure/docs.business_glossary.glossary#overall_health_score).

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
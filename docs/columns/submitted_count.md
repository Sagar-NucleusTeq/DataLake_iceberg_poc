{% docs submitted_count %}
{% raw %}

<a name="submitted_count"></a>
# Submitted Application Count
The number of applications this transaction contributes to aggregate submitted application counts.
Can be fractional or negative in the case of corrections or cancels. 
An application is a formal request from an outside entity to hold a life insurance policy with AAA 
Life where the applicant answers a series of questions about their health and personal information.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs budget_submitted_count %}
{% raw %}

<a name="budget_submitted_count"></a>
# Budget Submitted Count
Budget estimated total number of [submitted applications](#!/model/model.aaa_life_data_platform.staging_bi_premium_production#submitted_count) 
by plan code, club_code and sub_distribution_channel. 
An application is a formal request from an outside entity to hold a life insurance policy with AAA 
Life where the applicant answers a series of questions about their health and personal information.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs target_submitted_application_count %}
{% raw %}

<a name="target_submitted_application_count"></a>
# Target Submitted Application Count
Expected total number of [submitted applications](#!/model/model.aaa_life_data_platform.staging_bi_premium_production#submitted_count),
or the expected number of applications this transaction contributes to aggregate submitted 
application counts. Can be fractional or negative in the case of corrections or cancels.
An application is a formal request from an outside entity to hold a life insurance policy with AAA 
Life where the applicant answers a series of questions about their health and personal information.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs actual_submitted_application_count %}
{% raw %}

<a name="actual_submitted_application_count"></a>
# Actual Submitted Application Count
The actual number of [submitted applications](#!/model/model.aaa_life_data_platform.staging_bi_premium_production#submitted_count)
received by AAA Life.
An application is a formal request from an outside entity to hold a life insurance policy with AAA 
Life where the applicant answers a series of questions about their health and personal information.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification: | Internal |
|Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs forecasted_submitted_applications %}
{% raw %}

<a name="forecasted_submitted_applications"></a>
# Forecasted Submitted Applications
The forecasted number of submitted applications expected to be received by AAA Life by 365 days 
after the campaign begins, based the actual applications submitted thus far and historical campaign 
result trends. An application is a formal request from an outside entity to hold a life insurance 
policy with AAA Life where the applicant answers a series of questions about their health and 
personal information.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

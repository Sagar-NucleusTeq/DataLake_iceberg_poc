{% docs coverage_option %}
{% raw %}

<a name="coverage_option"></a>
# Coverage Option
The option of coverage for a given policy number. This field helps us understand what kind of 
coverage we are looking at. The reason we need this is to be able to have a unique table 
since one policy can have more than one coverage attached to it. The coverage is related to 
the benefit so one policy may have a base coverage and also spouse or child term coverages.

NOTE: Values in this field match those in a field called ProductOption

| Valid Values | Defintion                          | Notes |
| ------------ | ---------------------------------- | ----- |
| BaseCovg_GI  | Base Policy - Guaranteed Issue     | N/A   |
| BaseCovg_Acc | Base Policy - Accident (MLTA)      | N/A   |
| CTR          | Child Term Rider                   | Attached to MLTA policies |
| STLIR        | Spousal Term Life Insurance Rider  | Attached to MLTA policies |
| <unknown>    | Loss of Life                       | N/A   |
| <unknown>    | Hospital Daily Benefit             | N/A   |
| <unknown>    | Recuperation after Hospital Stay   | N/A   |
| <unknown>    | ER Visit                           | N/A   |
 | BaseCovDA | Base Policy - Deferred Annuity | N/A |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

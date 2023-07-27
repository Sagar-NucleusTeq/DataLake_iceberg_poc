{% docs coverage_type %}
{% raw %}

<a name="coverage_type"></a>
# Coverage Type
The type of coverage for a given policy number, namely if the policy is a base policy or a rider.
When the row contains a base policy, this field contains information regarding the product type. 
When the row contains arider, then this field contains the code for the rider 
(i.e. CTR = Child Term Rider). This field helps us understand what kind of 
coverage we are looking at. The reason we need this is to be able to have a unique table 
since one policy can have more than one coverage attached to it. The coverage is related to 
the benefit so one policy may have a base coverage and also spouse or child term coverages.

| Valid Values          | Defintion                          | Notes |
| --------------------- | ---------------------------------- | ----- |
| BasePolicyCov_Common  | Base Policy                        | N/A   |
| CTR                   | Child Term Rider                   | Attached to MLTA policies |
| STLIR                 | Spousal Term Life Insurance Rider  | Attached to MLTA policies |
| <unknown>             | Loss of Life                       | N/A   |
| <unknown>             | Hospital Daily Benefit             | N/A   |
| <unknown>             | Recuperation after Hospital Stay   | N/A   |
| <unknown>             | Emergency Room Visit               | N/A   |
 | BaseCovDA | Base Policy - Deferred Annuity | N/A |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs rating_code %}
{% raw %}

<a name="rating_code"></a>
# Rating Code
An underwriting rating identifies the mortality risk classification of a particular policy.  An
individual with a baseline risk is referred to as "standard". Individuals with lower than average
mortality risk (healthier individuals) are referred to as "preferred". Individuals with higher
than average mortality risk are referred to as "sub-standard".

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | SRD |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}


{% docs rating_code_description %}
{% raw %}

<a name="rating_code_description"></a>
# Description of Rating Code
Simple, plain english description of a rating code.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | SRD |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}

{% docs is_smoker %}
{% raw %}

<a name="is_smoker"></a>
# Is Smoker
Boolean field that identifies whether or not a rating code is a smoker code.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | SRD |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}


{% docs is_substandard %}
{% raw %}

<a name="is_substandard"></a>
# Is Substandard
A Substandard policy is one which is issued with a higher than normal risk associated with it. 
These policies are placed in a risk class that is "substandard" and pay more for coverage because
of this. There are several types of substandard policies but it's first important to note that
you can only be substandard on underwritten products. This means Accident and GIWL products all
be "False" for is_substandard. In Life+ the smoker code (which is also called risk class) 
indicates a substandard policy by the following codes:

| Risk Class or Source System | Description |
| --------------------------- | ----------- |
| W,X,Y,Z | Substandard risk classes for most of our products (sometimes called "rated"). Any number (usually 1-7) - substandard (sometimes called "table rated" the name table rated comes from the mortality table that is added on) A,C - substandard risk classes for express term. |
| FAST | In FAST for 2021 we have not yet found the risk class field to ingest, thus we are mapping all FAST policies to is_substandard of False because none of the products we are bringing in to FAST in the next year are underwritten. |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | SRD |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}
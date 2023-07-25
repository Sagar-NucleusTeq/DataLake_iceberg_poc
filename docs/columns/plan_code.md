{% docs plan_code %}
{% raw %}

<a name="plan_code"></a>
# Plan Code
The unique code for each product configuration. Details in plan code communicate product type, 
the length of term, file year etc. These plan codes roll up to sub_product_lines. More
information can be found within the product hierarchy table.

NOTE: When `plan_code` is attached to an application that has not yet been settled, the `plan_code`
represents the product configuration from the new business entity. When `plan_code` is
associated with a settled policy, then that `plan_code` represents the product configuration that
the applicant (now policyholder) was approved for.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs plan_code_promotion_history %}
{% raw %}

# Plan Code

The unique code for each product configuration. Details in plan code
communicate product type, the length of term, file year etc. These plan 
codes roll up to sub_product_lines. More information can be found within
the product hierarchy table.

Specifics for plan code in promotion_history: 

- The plan code in promotion history is the plan code of the product
promoted, not the plan code an individual ends up purchasing.
  
- Each direct mail promotion_history record should have a plan code.
Outside of the Tej test records, every attempt has been made to ensure
all records have plan codes. As of 3/9/2021 there is an outstanding issue
with tactic 65 in promotion_history. Merkle has been informed to fix it
for the MDE, but in the meantime, this plan code is hard coded (GW178)
into the dbt model. This work was done by Brittany Spencer and validated
- by Lisa Sultana-Bogacki.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs plan_description %}
{% raw %}

<a name="plan_description"></a>
# Plan Description
	
Specific description of the plan code 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs plan_type %}
{% raw %}

<a name="plan_type"></a>
# Plan Type
	
Whether the plan code is a Rider, Base, Either Rider or Base, or Supplemental Benefit

| Valid Values | Meaning |
| ------------ | ------- |
| Either       | Can mean both rider and base, but not necessarily both. Sometimes it could be an exclusive OR, meaning it could mean either just rider or just base. |
| Rider        | The plan type is rider |
| Base         | The plan type is base  |
| Supplemental | The plan type is supplemental, or the type of coverage you can purchase in addition to a whole or term life insurance policy |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs plan_code_original %}
{% raw %}

# Plan Code Original

The [plan code](#!/exposure/docs.business_glossary.glossary#plan_code)
applied for at application

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
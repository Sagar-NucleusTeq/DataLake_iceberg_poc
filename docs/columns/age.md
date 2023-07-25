{% docs age_at_promotion %}
{% raw %}

<a name="age_at_promotion"></a>
# Age at Time of Promotion

The age of the individual at the time the promotional material was sent. Note that because 
promotion records come from the broadlog of the adobe campaign software, in which
null and zero are indistinguishable. Therefore, unknown ages are shown as 0 here.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs age_of_insured %}
{% raw %}

<a name="age_of_insured"></a>
# Age of Insured
Age of the individual who is the primary insured on a policy, application, or case, at the
time that the corresponding document (application, case, policy) was created.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs resolved_age %}
{% raw %}

<a name="resolved_age"></a>
# Resolved Age
The current age assigned to an individual in individual_summary.

Individuals in our databases are assigned age based on an identity resolution process performed 
by Merkle. 

The identity resolution process checks the individual against a list of sources (in decreasing
order of accuracy) and assigns the best possible age based on the information we have. 

Generally speaking, the following sources are used (from most to least accurate):

1. Policyholder Data
2. Club Membership Data
3. Merkle Data

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs age_at_issue %}
{% raw %}

<a name="age_at_issue"></a>
# Age at Time of Issue

The age of the insured at time of issue. The age of the insured on the effective date of the
benefit, as defined by the "age at issue" calculation method. This method depends on the product, 
namely, some products are written with an ANB (age nearest birthday) method, some are with ALB
(age last birthday). The *age at issue* is the age of the insured on the policy at the time the
policy goes effective. Depending on the [plancode](#!/model/model.aaa_life_data_platform.gold_policies#plan_code)
and the corresponding mortality table it was written with, an applicant may be considered 20 or 21
depending on how close they are to their birthday and what the method of underwriting is.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Deidentified |


{% endraw %}
{% enddocs %}

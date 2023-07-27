{% docs promotion_gender %}
{% raw %}

<a name="promotion_gender"></a>
# Gender at Time of Promotion
Indicator of whether the gender of the individual to whom the promotion was sent is Male, Female
or if the gender is unknown

| Values    |  Def  |
|-----------|-------|
|  M  |  Male    |
|  F  |  Female  |
|  U  |  Unknown |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs current_gender %}
{% raw %}

<a name="current_gender"></a>
# Current Gender
The gender of an individual, AKA whether the individual is Male, or Female. The value 'Unknown' is
used for individuals with an unknown gender. This is Merkle's best estimate of an individual's
gender using club and Wunderman data. 

| Values    |  Definition |
|-----------|-------------|
| M         |  Male       |
| F         |  Female     |
| U         |  Unknown    |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs gender_code %}
{% raw %}

<a name="gender_code"></a>
# Gender Code
The letter that represents the gender of the person in question (insured, individual, customer, 
applicant, etc.) AKA whether the individual is Male, or Female. The value 'Unknown' is used for
individuals with an unknown gender. 

|  Gender Code   | Gender Description |
|----------------|--------------------|
|       M        |   Male             |
|       F        |   Female           |
|       U        |   Unknown          |
|       O        |   Other            |
|       X        |   No Gender        |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs gender_description %}
{% raw %}

<a name="gender_description"></a>
# Gender Description
The gender of the person in question (insured, individual, customer, applicant, etc.) AKA
whether the individual is Male, or Female. The value 'Unknown' is used for individuals with an
unknown gender. 

|  Gender Code   | Gender Description |
|----------------|--------------------|
|       M        |   Male             |
|       F        |   Female           |
|       U        |   Unknown          |
|       O        |   Other            |
|       X        |   No Gender        |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs gender_combined %}
{% raw %}

<a name="gender_combined"></a>
# Gender

This is the gender identity of the individual in question. It is used primarily for outreach and marketing purposes, not
for underwriting.
                                            
| Sex Description | System |
| ------ | ------ |
| Male | All |
| Female | All |
| Unisex | Lifeplus |
| No Gender | All |
| Other | All |
| Unknown | All |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs lifeplus_client_gender %}
{% raw %}

<a name="lifeplus_client_gender"></a>
# Client Gender

This is the last recorded gender identity of the client in the Lifeplus system.
                                            
| Code |     Sex     | Notes |
| ---- | ----------- | ----- |
|  M   |  Male       |       |
|  F   |  Female     |       |
|  U   |  Unisex     |       |
|  N   |  No Gender  |       |
|  O   |  Other      |       |
|  K   |  Unknown    | LifePlus does not gather intel on new business records so all records in an application phase is automatically set to 'Unknown' |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}
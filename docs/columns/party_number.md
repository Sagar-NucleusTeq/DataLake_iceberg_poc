{% docs party_number %}
{% raw %}

<a name="party_number"></a> 
# Party Number
Party Number is the unique identifier used by LifePlus which is AAAL's older policy 
administration system. A LifePlus party is a person or business that has a name and other 
attributes that uniquely define it, a mailing address, and a specific interest or connection 
to the policy it’s attached to. These are the people or businesses with whom we might need 
to interact with as the policy goes through its life cycle from new business to claim payout.

Party number should be unique, i.e. one individual_key should be associated with one 
party_number. Similar to individual_keys, shifting occurs, and while no party number will be 
associated with two individuals, we may see one individual associated with two party numbers.

A FAST party is a person or business that has a name and other 
attributes that uniquely define it, a mailing address, and a specific interest or connection 
to the policy it’s attached to. These are the people or businesses with whom we might need 
to interact with as the policy goes through its life cycle from new business to claim payout.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs party_number_original %}
{% raw %}

<a name="party_number_original"></a>
# Party Number Original
The original [party number](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_master#party_number) 
when an error gets created or is corrected. In reality, there are no party number replacements,
so this is a 100% match to the first party number.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
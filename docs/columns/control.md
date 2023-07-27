{% docs control_number_1 %}
{% raw %}

<a name="control_number_1"></a>
# Control Number 1
The information contained in this field is dependent on the relationship type.  For example, 
when the relationship type is an owner, insured, payor, or beneficiary then this field contains the 
policy number that the client is related to.

It can contain any of the following: [Policy Number](#!/model/model.aaa_life_data_platform.gold_production_by_transaction#policy_number),
[Client Number](#!/model/model.aaa_life_data_platform.staging_mde_policy_client#client_number),
[Account Control Number](#!/source/source.aaa_life_data_platform.mde.policy_contract#acct_control_num), 
[Agent Number](#!/model/model.aaa_life_data_platform.staging_mde_policy_benefit#agent_number), 
[Bank Number](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_relationships), 
or [Group Number](#!/model/model.aaa_life_data_platform.staging_lifeplus_inforce_contract_master#group_number).

### Security and Usage Information
#### NOTE: Depending on the filters added to this field for your table, the security and usage of the table may be less restrictive.

|     |     |
| --- | --- |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

{% endraw %}
{% enddocs %}


{% docs control_number_2 %}
{% raw %}

<a name="control_number_2"></a>
# Control Number 2
The information contained in this field is dependent on the [relationship_type](#!/model/model.aaa_life_data_platform.staging_lifeplus_inforce_contract_master#relationship_type). 
For example, when the relationship_type is an owner (OW1, OW2), insured (INS, JNT), or payor (PAY, PY2, PAE), 
then this field contains the [Base/Rider Code](#!/model/model.aaa_life_data_platform.staging_lifeplus_new_business_benefit#base_rider_code) 
of the policy that the client is related to. 

It can contain any of the following:
[Base/Rider Code](#!/model/model.aaa_life_data_platform.staging_lifeplus_new_business_benefit#base_rider_code)
or Bank Branch.

### Security and Usage Information
#### NOTE: Depending on the filters added to this field for your table, the security and usage of the table may be less restrictive.

|     |     |
| --- | --- |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

{% endraw %}
{% enddocs %}
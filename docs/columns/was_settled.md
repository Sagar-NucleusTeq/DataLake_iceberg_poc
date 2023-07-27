{% docs was_settled %}
{% raw %}

<a name="was_settled"></a>
# Policy Was Settled

The was_settled field indicates if a policy was officially "settled" and, thus, became a part of 
our [inforce](#!/model/model.aaa_life_data_platform.staging_lifeplus_inforce_contract_master)
policies for any length of time. This is important because a policy which is "issued" and an 
offer was extended to the policyholder does not become active or effective until money has 
been exchanged. The exchange of payment settles the policy and means that the company is now 
officially insuring the insured.

If a policy is issued but not paid we are not yet liable for claims.

In Life+ the technical way a policy moves through the system is very true to the rules listed 
above. A new business record will be marked as settled when it moves to the inforce table and is 
given a settled date. In FAST the application moves through the system differently, with issued 
date being their primary date field indicating when an application moves to the policy object. 
Settled date is a construct AAAL has asked them to calculate. They calculate the settled date as 
being the date the first payment was made after the policy was issued.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

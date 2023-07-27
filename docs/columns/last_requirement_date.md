{% docs last_requirement_date %}
{% raw %}

<a name="last_requirement_date"></a>
# Last Requirement Date

The date we received a specific requirement that is considered as the last requirement on a claim.
For death claims, there is only one date. We know the last requirement would be the death certificate. 
For accident claims (PDA claims), the date might change because we might need more requirements 
after receiving one. 

Claim examiner fills out these dates manually when the last document was received in order to 
approve the claim. This date is needed for making approved or denied decision.

Note: This is not approval date because they could approve at a later date. 

Note: In mid_claims_fast, the last requirement date are made null where it equals to 1/1/1900. 

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs file_id %}
{% raw %}

# File ID

Identification number for entry into the policy administration system.
These are used to distinguish updates to tables such as policy_client 
where all changes are still present in the table. 

In the case of policy_client, the first file_id usually corresponds to 
the first information entered into the policy administration system for 
a policy as a whole. Record_id is nested within file_id. Record_id's 
correspond to individual records for the insured, owner, payer etc.
Updates (excluding rekeys to individual keys) to policy information 
will have a new file_id and new record_ids. 

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Gold |

{% endraw %}
{% enddocs %}
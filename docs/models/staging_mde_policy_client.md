{% docs staging_mde_policy_client %}
{% raw %}

# Policy Client

![last updated](assets/update_badges/staging_mde_policy_client.svg)

Merkle table containing details on AAAL clients (only people, not corporations). Contains client_number and policy_number keys and the  
merkle individual_key among other client details like name, phone, email, etc.

NOTE 1: There are 6 policies whose insured had problems during identity resolution, causing multiple
individuals to be linked as the insured, which is not possible in the current
business logic. Until those issues are resolved, the records associated with those policies
have been purged from this staging table.

NOTE 2: Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per client |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
A client as defined by a unique combination of columns:
+ individual_key
+ company_code
+ policy_number
+ policy_role_code

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
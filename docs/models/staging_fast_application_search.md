{% docs staging_fast_application_search %}
{% raw %}

# FAST Application Search

![last updated](assets/update_badges/staging_fast_application_search.svg)

This table holds records for Applications received. The application is the first object created in
the policy issue process in FAST. Note that AAA Life may have received an application, but was not
able to process the application. That is an important distinction from the Life+ system.
The FAST Application object will allow us to see how many applications hit the entry point but
without the necessary information to be processed. Today we only allow successfully submitted 
applications through the gateway in anything downstream. (One can identify these successfully
submitted applications by the application_statuses of
'00000000-0000-0000-0000-000000000001' and '00000000-0000-0000-0000-000000000002', namely,
'new' and 'submitted', respectively.

The lookup for the application_status_code field is in 
[staging_dsse_contract_status_map](#!/model/model.aaa_life_data_platform.staging_dsse_contract_status_map).

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
One record per policy application created in the FAST system - uniquely identified by 
[policy_number](#!/exposure/docs.business_glossary.glossary#policy_number).

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
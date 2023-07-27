{% docs staging_eservices_logins %}
{% raw %}

# eServices logins

![last updated](assets/update_badges/staging_eservices_logins.svg)

The data in this table comes from eservicesDB.eservicesLogins. It contains eServices users' 
logins information, such as the type of device and channel that the user used to access 
eServices and the timestamps of when the user log into the system.

### Security and Usage Information
|                          |                                       |
|--------------------------|---------------------------------------|
| Grain:                   | 1 row per client_id + login_timestamp |
| Security Classification: | Internal                              |
| Usage Requirement:       | Deidentified                          |

### Grain Description
See [**Party Number**](#!/exposure/docs.business_glossary.glossary#party_number)
for definition.

**Login Timestamp**
The timestamp of when a user of eServices log into the system. 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
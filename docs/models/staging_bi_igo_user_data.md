{% docs staging_bi_igo_user_data %}
{% raw %}

# iGo User (Agent) Data

![last updated](assets/update_badges/staging_bi_igo_user_data.svg)

This table contains Igo Cossnet user (agent) data. Each individual data item has its own record in 
these tables.  User (agent) data is fairly small(agent name, address, license, club, stuff like that).

This table has the following structure.  Each has five columns:
- GUID            -> user_id
- Field Name      -> object_name
- Value           -> object_value
- GUID of Updater -> updated_by
- Update Timestamp-> updated_date_time 

This structure lets the iGo program add any data item at any time without having to restructure the 
table to add another column.  The primary key consists of the GUID + Field Name.  All values except 
Update Timestamp are String; Update TimeStamp is an SQL Timestamp.

Each individual in these tables has a unique GUID.  That individual’s records all have the same GUID, 
so a “record” actually consists of multiple records per person.

### Security and Usage Information
|     |                              |
| --- |------------------------------|
| Grain:                   | 1 row per user_id + object_name |
| Security Classification: | Confidential                             |
| Usage Requirement:       | PII                         |

### Grain Description
- user_id
- object_name

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
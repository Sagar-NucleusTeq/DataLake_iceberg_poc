{% docs staging_bi_igo_client_data %}
{% raw %}

# iGo Client Data

![last updated](assets/update_badges/staging_bi_igo_client_data.svg)

This table contains Igo Cossnet client data. Each individual data item has its own record in 
these tables. Client info can be much larger, because besides individual information (name, address, 
UW info, etc.) each individual annual value is stored as a separate record.

This table has the following structure.  Each has five columns:
- GUID            -> client_id
- Field Name      -> object_name
- Value           -> object_value
- GUID of Updater -> updated_by
- Update Timestamp-> updated_date_time 

This structure lets the iGo program add any data item at any time without having to restructure the 
table to add another column.  The primary key consists of the GUID + Field Name.  All values except 
Update Timestamp are String; Update TimeStamp is an SQL Timestamp.

Each individual in these tables has a unique GUID.  That individual’s records all have the same GUID, 
so a “record” actually consists of multiple records per person. There should be an entry for each
client that provides the agents GUID witch allows a relationship with the iGo User Table.

### Security and Usage Information
|     |                                      |
| --- |--------------------------------------|
| Grain:                   | 1 row per client_id + object_name + updated_date_time |
| Security Classification: | Confidential                         |
| Usage Requirement:       | PII                                  |

### Grain Description
- client_id
- object_name
- updated_date_time

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
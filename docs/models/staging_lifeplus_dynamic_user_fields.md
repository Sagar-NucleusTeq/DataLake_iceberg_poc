{% docs staging_lifeplus_dynamic_user_fields %}
{% raw %}

# Lifeplus Dynamic User Fields

![last updated](assets/update_badges/staging_lifeplus_dynamic_user_fields.svg)

A base table called DYFNDATA from Lifeplus system that displays dynamic user fields. The system 
allows for the assignment of variables which shows up in this table as a key field. The source file 
column indicates the table this dynamically added column is intended to bump up against. The user 
field column indicates the content of the dynamic field. 

Since these key fields are user defined, it's possible to get various unrelated dimensions like 
client_number, opt_out_flag, and even cell_phone_number as variables in the key_field columns.

Currently, this table is being used in the club lead list generation process to identify individuals 
who responded to the annual privacy notice and requested that we did not share their information 
with other business partners. This can be done using the user_field = "CMPRVOPTN" which would 
indicate an opt out flag.

To extract cell phone number for Lifeplus PAS system, we need to take the records with 
user_field = "CYCPHE" and source_file = "CMSCLNAD" (client address). 

### Security and Usage Information
|     |                                                                                                                              |
| --- |------------------------------------------------------------------------------------------------------------------------------|
| Grain:                   | source_file + user_field + company_code + party_number + key_field_2 + key_field_3 + key_field_4 + key_field_5 + key_field_6 |
| Security Classification: | SRD                                                                                                                          |
| Usage Requirement:       | Gold                                                                                                                         |

### Grain Description
This tables grain is a combination of all the user defined key fields

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
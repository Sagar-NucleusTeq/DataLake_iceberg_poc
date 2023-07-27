{% docs igo_user_id %}
{% raw %}

<a name="igo_user_id"></a>
# iGo User/Client ID
Also referred to as the GUID. This field is available in the iGo User (Agent) Table and iGo Client
Table.

The user_id is a unique key associated with an individual agent or client in these iGo tables.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs igo_object_name %}
{% raw %}

<a name="igo_object_name"></a>
# iGo Object Name
Also referred to as the Field Name. This field is available in the iGo User (Agent) Table and iGo Client
Table.

The object_name is a dimension field within the iGo system and identifies the field that each record
in the iGo User and Client table is associated with. Each object_name has an associated value in the
object_value field.

User (agent) data is fairly small (agent name, address, license, club, stuff like that).  Client info 
can be much larger, because besides individual information (name, address, UW info, etc.) each 
individual annual value is stored as a separate record.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs igo_object_value %}
{% raw %}

<a name="igo_object_value"></a>
# iGo Object Value
Also referred to as the Value. This field is available in the iGo User (Agent) Table and iGo Client
Table.

The object_value is a value that is associated with the dimension listed in the object_name field for
each record in the iGo User and Client table.

User (agent) data is fairly small (agent name, address, license, club, stuff like that).  Client info 
can be much larger, because besides individual information (name, address, UW info, etc.) each 
individual annual value is stored as a separate record.

### Security and Usage Information
|     |              |
| --- |--------------|
| Security Classification: | Confidential |
| Usage Requirement:       | PII          |

{% endraw %}
{% enddocs %}

{% docs igo_updated_by %}
{% raw %}

<a name="igo_updated_by"></a>
# iGo Updated By
Also referred to as the GUID of Updater. This field is available in the iGo User (Agent) Table and iGo Client
Table.

The updated_by GUID of the individual who updated the record in the iGo System.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs igo_updated_date_time %}
{% raw %}

<a name="igo_updated_date_time"></a>
# iGo Updated Date Time
This is the date that the individual record from the iGo User or Client table was updated in the 
source system. It is associated with the updated_by field which is the GUID of the individual who
updated the piece of information.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}



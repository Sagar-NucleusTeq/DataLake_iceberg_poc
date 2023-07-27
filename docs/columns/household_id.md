{% docs household_id %}
{% raw %}

# Household Identifier

Identifier of a household within the AAALife database. A household is
defined as a last name and address. Household keys will not be unique 
because multiple individuals will be tied to the same household. Very 
similar to connected_recognition_household_key in other tables, except 
that a header of connected_recognition (formerly cr_) means in part that 
this key is not always updated during the merkle rekey process. 

Additionally, all policies should have an household key, however 
this is currently a known bug and is not the case. There are NULL
household keys in the policy tables.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
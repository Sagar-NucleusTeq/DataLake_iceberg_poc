{% docs connected_recognition_household_key %}
{% raw %}

<a name="connected_recognition_household_key"></a>
# (Connected Recognition) Household Key

Identifier of a household within the AAA Life database. A household is
defined as a last name and address. Household keys will not be unique 
because multiple individuals will be tied to the same household. A 
header of connected_recognition (formerly cr_) means in part that this 
key is not always updated during the merkle re-key process. 

Additionally, all policies should have a household key, however 
this is currently a known bug and is not the case. There are NULL
household keys in the policy tables.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
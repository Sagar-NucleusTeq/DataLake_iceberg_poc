{% docs connected_recognition_address_key %}
{% raw %}

# (Connected Recognition) Address Key

Identifier of an address within the AAALife database. Addresses can span multiple households
and they are not unique within the database. Additionally, all policies should have an 
address key, however this is currently a known bug and is not the case. There are NULL
address keys in the policy tables.

A header of connected_recognition (formerly cr_) means, in part, that this key is not always 
updated during the merkle re-key process. All known (on 10/21/21) instances of address_key are 
currently connected_recognition_address_keys, as we simply don't re-key address_keys, 
it is where you were at that time.

### Additional Information for Promotion History/Messages table
The promotion_history STT states that this field is made up of address_key from ADOBE and 
connected_recognition_address_keys from ADDR - the major implication of this being that it 
is not re-keyed in promotion_history either. Additionally, this field within promotion_history 
requires no dbt tests as:
- it can be NULL
- it can be non-unique 
- it has no relationship to another table (address keys do not need
  to exist in individual_summary because they are not re-keyed)
- the available values are innumerable for all intents and purposes

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
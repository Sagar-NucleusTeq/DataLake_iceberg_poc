{% docs staging_dsse_claims_cause_codes %}
{% raw %}

# Claims Cause Codes

![last updated](assets/update_badges/staging_dsse_claims_cause_codes.svg)

This table is a type I dimension table containing the mapping of all active claims cause code to 
descriptions and cause types. It provides the description of the cause code, the corresponding cause 
code in the alternate PAS system, the description of the cause code in its source system, and the 
corresponding cause type. This table provides a consistent description for cause codes in LifePlus 
and FAST. 

Note: Columns alternate_pas_code and source_cause_description are not used in downstream tables. 
They serve as an internal reference.



### Security and Usage Information
|     |                                      |
| --- |--------------------------------------|
| Grain:                   | 1 row per source_system + cause_code |
| Security Classification: | Internal                             |
| Usage Requirement:       | Deidentified                         |

### Grain Description
**Cause Code**: The code that identifies the cause of a claim on one's policy. This cause can
be the cause of an accident or death. 

**Source System**: This column will show the source of the data, or more specifically, the PAS
that the data came from -- LifePlus (AS400) or FAST.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
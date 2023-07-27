{% docs staging_dsse_contract_status_map %}
{% raw %}

# Staging DSSE Contract Status Map

![last updated](assets/update_badges/staging_dsse_contract_status_map.svg)

This table serves to map the contract statuses between LifePlus and FAST into one table. 
It is used by policy entity mid tables.

**Example Table**:

| Source   | Entity       | ID Code                              | Description | Stage       | Status    |
| -------- | ------------ | ------------------------------------ | ----------- | ----------- | --------- |
| fast     | Application  | 00000000-0000-0000-0000-000000000002 | Submitted   | application | completed |
| fast     | Case         | 00000000-0000-0000-0000-000000000001 | Active      | case        | pending   |
| fast     | Policy       | 00000000-0000-0000-0000-000000000007 | Paid Up     | policy      | inforce   |
| lifeplus | inforce      | D                                    | Death       | policy      | death     |
| lifeplus | new_business | D                                    | Denied      | case        | declined  |
| lifeplus | new_business | P                                    | Pending     | case        | pending   |


### Security and Usage Information

|     |     |
| --- | --- |
| Grain:                   | 1 row per source + entity + id_code |
| Security Classification: | Internal|
| Usage Requirement:       | Anonymized |

### Grain Description
**Entity**: Indicator of which entity a contract status comes from. LifePlus entities are Inforce and New
Business. FAST entities are Application, Case and Policy.

**ID Code**: 1-character code of a policy's contract status in LifePlus -- corresponds with Description.
Either 1-character code of a policy's contract status in LifePlus that maps to a status description or a 
GUID (Globally Unique ID) from FAST, a text-number that corresponds to the status description.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
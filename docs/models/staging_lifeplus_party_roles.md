{% docs staging_lifeplus_party_roles %}
{% raw %}

# LifePlus Party Roles

![last updated](assets/update_badges/staging_lifeplus_party_roles.svg)

This is the LifePlus party role master. It is the key piece of the whole policy-party 
structure. It tells us which party has a role with which policy, as well as what type of 
role it is. This specific table only spells out the connections between policy and party, 
it doesn't contain any other info about the parties. 

A LifePlus party is a person or business that has a name and other 
attributes that uniquely define it, a mailing address, and a specific interest or connection 
to the policy it’s attached to. These are the people or businesses with whom we might need 
to interact with as the policy goes through its life cycle from new business to claim payout.
This table only includes the role_types insured (INS, JNT), owners (OW1, OW2), 
payers (PAY, PY2), and beneficiaries (BEN, BNC).

NOTES: 
1. The membership_number (CRUSR1) and smoker_code/risk_class (CRUSR2) fields were strategically 
left out of this staging table due to the lack of viable data in them. More reliable 
membership_number and smoker_code/risk_class fields will be pulled from other tables if needed.
2. The company_code (CRCO) field was also strategically left out of this table due to it not being
necessary at this level, as this field can also likely come from a more reliable source. In 
addition, it would have needed to be included in the grain of the table in order
to avoid duplicates, but this was not wanted due to the way the table will be used.
3. The role_status (CRRSTS) field was left out of this table due to odd values found (this 
field should only include 'A' or 'N', but it also includes 'Y') and the fact that we do not use 
it, and it will not be needed in the future.
4. The role_sequence_number (CRCLTP) field was left out of this table purposefully due to
the lack of necessity of this table and the fact that it changes the grain of the table if included.
5. Please note that this table contains records considered invalid due to entry errors. They can
be identified by determining if they are associated with a client name (CMNAME) that contains 
"error" in the LifePlus CMSCLNTM table.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per control_number_1 + control_number_2 + role_type + party_number + address_sequence_number |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
Role type identifies the type of role to which this record corresponds. 
Role sequence number this is the sequence number of user defined roles and is 
indicative of the order the roles were entered.
Control number 1 and 2 work together to give us the policy number and its base rider code when 
the role type is insured, owner, payer, or beneficiary, which are the only possible 
role types in this table.

### Contact
Please contact the subject-matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
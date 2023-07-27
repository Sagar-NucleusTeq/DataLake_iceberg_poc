{% docs policy_role_type_code %}
{% raw %}

<a name="policy_role_type_code"></a>
# Policy Role Type Code
The code that identifies the type of policy role in which this record corresponds. This is a 
user defined field, so it represents the role that the user defined. For example, INS, OW1,
PAY, or BEN. 
See P:\Life Support Plus (LSP)\LSP V4R2 File Descriptions\FILEDESC\CMSUSREL.doc
for the diagram

|   Codes      |        Description         |
| ------------ |  ------------------------  |
|    AGT       | Agent                      |
|    AH1       | Account holder one         |
|    AH2       | Account holder two         |
|    ALT       | Alternate payee agent      |
|    ASN       | Assignee                   |
|    BEN       | Beneficiary                |
|    BNC       | Beneficiary - Contingent   |
|    BNK       | Bank                       |
|    CLB       | Club relationship          |
|    CLM       | Claim                      |
|    CUS       | Custodial/Courtesy         |
|    DP1       | Dependent #1               |
|    DP2       | Dependent #2               |AGT
|    DP3       | Dependent #3               |
|    DP4       | Dependent #4               |
|    DP5       | Dependent #5               |
|    DP6       | Dependent #6               |
|    DP7       | Dependent #7               |
|    DP8       | Dependent #8               |
|    GRP       | Group                      |
|    INF       | Claim Informant            |
|    INS       | Insured                    |
|    JNT       | Joint Insured              |
|    MAL       | Mail Claim form to         |
|    O0W       | BAD DATA                   |
|    OW        | BAD DATA                   |
|    OW1       | Owner one                  |
|    OW2       | Owner two                  |
|    OWQ       | BAD DATA                   |
|    PAE       | Payee                      |
|    PAR       | BAD DATA                   |
|    PAY       | Payor                      |
|    PY2       | Secondary Payee            |
|    SPS       | Spouse                     |
|    VND       | Vendor (For Claims)        |

See full definitions of these fields
[here](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_role_type_master)

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_role_type_description %}
{% raw %}

<a name="policy_role_type_description"></a>
# Description of the Role Type of the policy
Identifies the type of role of the policy in which this record corresponds. This is a user 
defined field, so it represents the role that the user defined. For example, this field can
tell us if the client is the Insured, Owner, Payor or Beneficiary.

|   Codes      |        Description         |
| ------------ |  ------------------------  |
|    AGT       | Agent                      |
|    AH1       | Account holder one         |
|    AH2       | Account holder two         |
|    ALT       | Alternate payee agent      |
|    ASN       | Assignee                   |
|    BEN       | Beneficiary                |
|    BNC       | Beneficiary - Contingent   |
|    BNK       | Bank                       |
|    CLB       | Club relationship          |
|    CLM       | Claim                      |
|    CUS       | Custodial/Courtesy         |
|    DP1       | Dependent #1               |
|    DP2       | Dependent #2               |
|    DP3       | Dependent #3               |
|    DP4       | Dependent #4               |
|    DP5       | Dependent #5               |
|    DP6       | Dependent #6               |
|    DP7       | Dependent #7               |
|    DP8       | Dependent #8               |
|    GRP       | Group                      |
|    INF       | Claim Informant            |
|    INS       | Insured                    |
|    JNT       | Joint Insured              |
|    MAL       | Mail Claim form to         |
|    O0W       | BAD DATA                   |
|    OW        | BAD DATA                   |
|    OW1       | Owner one                  |
|    OW2       | Owner two                  |
|    OWQ       | BAD DATA                   |
|    PAE       | Payee                      |
|    PAR       | BAD DATA                   |
|    PAY       | Payor                      |
|    PY2       | Secondary Payee            |
|    SPS       | Spouse                     |
|    VND       | Vendor (For Claims)        |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_role_fast %}
{% raw %}

<a name="policy_role_fast"></a>
# FAST Role
The field that identifies the type of role_fast to which this record corresponds. 

|     Valid Policy Role Values in FAST   | Values Available in the System on the Actual Policy |
|     --------------------------------   | --------------------------------------------------- |
| OLI_Attorney                           | Attorney |
| OLI_REL_ASSIGNEE                       | Assignee |
| OLI_REL_AUTHORIZEDPERSON               | Authorized Person |
| OLI_REL_BENEFICIARY                    | Beneficiary |
| OLI_REL_CHILD                          | Child |
| OLI_REL_COLLASSIGNEE                   | Collateral Assignee |
| OLI_REL_CONSERVATOR                    | Conservator |
| OLI_REL_CONSOLPAYOR                    | Consolidated Payor |
| OLI_REL_CONTGNTBENE                    | Contingent Beneficiary |
| OLI_Contingent Beneficiary_Per_Stirpes | Contingent Beneficiary Per Stirpes |
| OLI_REL_CONTGTOWNER                    | Contingent Owner |
| OLI_Final_Beneficiary                  | Final Beneficiary |
| ?                                      | Final Beneficiary Per Stirpes |
| ?                                      | First Contingent Beneficiary |
| ?                                      | First Contingent Per Stirpes |
| OLI_FuneralHome                        | Funeral Home |
| OLI_REL_INSURED                        | |
| OLI_REL_JOINTOWNER                     | Joint Owner |
| OLI_REL_OWNER                          | Owner |
| OLI_REL_PAYOR                          | Payor |
| OLI_REL_POWEROFATTRNY                  | Power of Attorney |
| ?                                      | Principal Beneficiary |
| OLI_Principal_Beneficiary_Per_Stirpes  | Principal Beneficiary Per Stirpes |
| OLI_REL_TERTBENE                       | Value not available in the system - this value in FAST is a lingering error |
| OLI_REL_3RDPARTYDESIGNEE               | Third Party Designee |
| OLI_REL_TRUSTEE                        | Trustee |
| OLI_Second_Addressee                   | Secondary Addressee |
 | OLI_REL_ANNUITANT | Insured |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs role_sequence_number %}
{% raw %}

<a name="role_sequence_number"></a>
# Role Sequence Number
This is the sequence number of user defined policy role and is indicative of the order the 
role were entered. For example, the sequence number will be 1 for each role_type 
unless there is a newer or updated value for said role_type.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_role_type %}
{% raw %}

<a name="policy_role_type"></a>
# Policy Role Type
This indicates if this policy role record uses text only (T), policy name and 
address information (C), or a combination of both (B). This is a user defined field,
so it represents the role that the user defined. 

|  Value  |  Meaning  |
|  -----  |  -------  |
|    T    |  Text Only  |
|    C    |  policy Name and Address Information  |
|    B    |  Both Text and Client Name and Address Information  |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_role_code %}
{% raw %}

<a name="policy_role_code"></a>
# Policy Role Code

Indicator of an individual's role in the policy. Options include
the following:

|   Codes      |        Description         |
| ------------ |  ------------------------  |
|    CLM       | Claim                      |
|    INS       | Insured                    |
|    JNT       | Joint Insured              |
|    OW1       | Owner One                  |
|    OW2       | Owner Two                  |
|    PAY       | Payor                      |

If the these roles are not held by the same individual, as is 
common, then each will be assigned a unique individual key.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs role_start_date %}
{% raw %}

<a name="role_start_date"></a>
# Role Start Date
The date on which the [role](#!/exposure/docs.business_glossary.glossary#role) 
becomes effective.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs role_end_date %}
{% raw %}

<a name="role_end_date"></a>
# Role End Date
The date on which the [role](#!/exposure/docs.business_glossary.glossary#role)
becomes ineffective. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

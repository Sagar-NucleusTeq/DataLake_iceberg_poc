{% docs contract_status %}
{% raw %}

<a name="contract_status"></a>
# Contract Status

| Valid Values |
| ------------ |
|  cancel      |
|  completed   |
|  conversion  |
|  death       |
|  declined    |
|  err         |
|  errored     |
|  expiry      |
|  found       |
|  inforce     |
|  lapse       |
|  offered     |
|  pending     |
|  refunded    |
|  withdrawn   |

**AS400/lifeplus/LSP staging tables**:

This determines the status of the contract in the new business or issued AS400 tables. 

In the **new business** tables you can have a status of:  

|  Status Code  |   Status  | Description | Notes |
|  -----------  |   ------  | ----------- | ----- |
|       D       | declined  | Denied      | indicates underwriting did not allow for the policy to be written |
|       I       | offered   | Issued      |  |
|       O       | declined  | Postponed   |  |
|       P       | pending   | Pending     |  |
|       S       | offered   | Settled     | these policies should also show up in the issued contracts table |
|       W       | withdrawn | Withdrawn   |  |

In the **issued** table you can have a status of:  

|  Status Code  |   Status   | Description | Notes |
|  -----------  |   ------   | ----------- | ----- |
|       C       | cancel     | Cancelled |  |
|       D       | death      | Death Claim |  |
|       E       | inforce    | Extended Term  |  |
|       I       | inforce    | Active |  |
|       L       | lapse      | Lapsed |  |
|       M       | expiry     | Matured |  |
|       N       | refunded   | NotTaken |  |
|       P       | inforce    | Paid Up |  |
|       R       | inforce    | Reduced Paid Up |  |
|       S       | cancel     | Surrendered |  |
|       T       | conversion | Converted |  |
|       V       | inforce    | Inforce-VanishedPrems |  |
|       X       | expiry     | Expired |  |

You will notice that some of the status indicators are duplicated across issued and new
business with different meanings, it is important to consider the table you are pulling status
from to be sure you don't mistake a D-death claim as a D-decline.

**FAST staging tables**:  

FAST policies have a different flow than LSP policies, they move from application to case to policy.
They also have very different statuses.

Status Mapping:  
As we move toward the consumption layer from staging and implement a single source of status
the below better describes the meaning of each status in the policy entity and how they relate
to the originating status in their originating systems.

Policy numbers in the application and case stage are not yet inforce, the policy statuses are ones that
are issued and settled. Life Plus (aka Life +, or L+) doesn't have application stages, we don't have that level of tracking, so policies
existing on that platform will start with Case statuses.

| Stage  |   Status   | Notes |
| -----  |   ------   | ------- |
|  Case  | Pending    | this is mapped to the pending status in L+, there are many FAST statuses that map to this, for a full list of the mappings view the contract_status_map |
|  Case  | Active     |  |
|  Case  | Completed  |  |
|  Case  | Waived     |  |
|  Case  | Pending Internal Review |  |
|  Case  | Pending Assignment     |  |
|  Case  | Pending Filing Decision |  |
|  Case  | Issued     |  |
|  Case  | In Review  |  |
|  Case  | Closed     |  |
|  Case  | Declined   | these are underwriting declined applications, applicable for underwritten products only |
|  Case  | Pending Re-Issue |  |
|  Case  | Not Taken  |  |
|  Case  | Withdrawn  | this is withdrawn either by the applicant or the company |
|  Case  | Issued     |  |
|  Case  | Issued     |  |
|  Case  | Offered    | this indicates the policy was offered, in L+ it is commonly called issued not paid or INP |
| Policy | APL        |  |
| Policy | Active     |  |
| Policy | Annuitized |  |
| Policy | Approved   |  |
| Policy | Cancel Not Taken   | these are cancelled; not the same as lapses, which are failures to pay; a cancel is an action taken by the policyholder |
| Policy | Claim Paid   |  |
| Policy | Claim Payout   |  |
| Policy | Converted | indicates that a policy has converted, most products have a conversion privilege that allows them to move from Term to Perm <br> <br> There are two kinds of conversion 1. The conversion of a policy from Life+ to FAST 2. The conversion of a policy from Term to Perm, like what is being mentioned here. "Term" is Life insurance for a specific amount of time (aka a 'Term'), "Perm" is permanent life insurance, or life insurance that will last the rest of the insured's life as long as the policy premiums are met. Most Term policies have a conversion privilege that may be in effect for a certain number of years or until a certain age.  If your policy is eligible for conversion you can switch it to a permanent product with limited underwriting. This is a perk for people who get Term and then get older and realize they want longer term coverage.  The big benefit is (depending on the rules of the conversion) they are often priced more favorably.  A conversion is technically a termination of the original policy and the creation of a new policy. |
| Policy | Daily Cost   |  |
| Policy | Death Claim Approved   | policy terminated due to death, claim may or may not be paid |
| Policy | Death Claim Paid   | policy terminated due to death, claim paid |
| Policy | Death Waiver | policy terminated due to death, claim may or may not be paid |
| Policy | Declined   |  |
| Policy | Disability   |  |
| Policy | Do not Reinstate   |  |
| Policy | Expired   | indicates a term-type policy's coverage period has expired; only applicable for term policies |
| Policy | Extended Term   |  |
| Policy | Incomplete   |  |
| Policy | Inforce    | a policy that actively provides coverage by AAA Life, it is settled and is not terminated, may or may not be in good standing of payment or at risk of lapse |
| Policy | Issued   |  |
| Policy | Lapsed   | Policy is terminated due to lapse, a failure to pay premiums. The policy is back-dated to be terminated with a date of the last due payment once the grace period is over, even though it commonly remains inforce through it's grace period, which is usually 60 days |
| Policy | Matured   |  |
| Policy | Max Loan Surrender   |  |
| Policy | Over Loaned   |  |
| Policy | Paid Up   |  |
| Policy | Pending   |  |
| Policy | Pending Claim   |  |
| Policy | Pending Death Claim   |  |
| Policy | Pending Lapse   |  |
| Policy | Pending Re-Issue   |  |
| Policy | Postponed   |  |
| Policy | Pre Term   |  |
| Policy | Reduced Paid Up   |  |
| Policy | Refunded   | During the policy's "free look period", the customer decided against continuing with the policy and was able to get the premium returned, this is called a cancel not taken sometimes |
| Policy | Reissued   |  |
| Policy | Rescission   |  |
| Policy | Rider Claimed or Exercised   |  |
| Policy | Surrendered   |  |
| Policy | Suspend - Not Active   |  |
| Policy | Suspended - Active   |  |
| Policy | Terminated   |  |
| Policy | Terminated ? Conv Pd   |  |
| Policy | Withdrawn - Did Not Apply   |  |
| Policy | Withdrawn - Error   |  |
| Policy | Withdrawn - Expired App   |  |
| Policy | Withdrawn - Expired Rates   |  |
| Policy | Withdrawn - Requested   |  |
| Application | Additional Signature Pending | 00000000-0000-0000-0000-000000000012 |
| Application | Deleted   | 00000000-0000-0000-0000-000000000009 |
| Application | Duplicate   | 00000000-0000-0000-0000-000000000004 |
| Application | Duplicate App ID | 00000000-0000-0000-0000-000000000005 |
| Application | Expired   | 00000000-0000-0000-0000-000000000010 |
| Application | Invalid App For State | 00000000-0000-0000-0000-000000000007 |
| Application | New   | 00000000-0000-0000-0000-000000000001 |
| Application | Partial Signature Complete | 00000000-0000-0000-0000-000000000011 |
| Application | Processed   | 00000000-0000-0000-0000-000000000003 |
| Application | Signature Pending | 00000000-0000-0000-0000-000000000008 |
| Application | Submitted   | 00000000-0000-0000-0000-000000000002 |
| Application | Withdrawn   | 00000000-0000-0000-0000-000000000006 |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs contract_status_description %}
{% raw %}

<a name="contract_status_description"></a>
# Contract Status Description
Full description of a contract status indicated by 
[id_code](#!/model/model.aaa_life_data_platform.staging_dsse_contract_status_map#id_code).


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs contract_status_stage %}
{% raw %}

<a name="contract_status_stage"></a>
# Contract Status Stage
The stage of a contract tells us if the FAST policy is still a 'case', or if it has been settled
at some point to become a 'policy'.

| Stage  |   Status   | Meaning |
| -----  |   ------   | ------- |
|  Case  | Declined   | these are underwriting declined applications, applicable for underwritten products only |
|  Case  | Offered    | this indicates the policy was offered, in L+ it is commonly called issued not paid or INP |
|  Case  | Pending    | this is mapped to the pending status in L+, it is much larger for FAST, for a full list of the mappings view the contract_status_map |
|  Case  | Withdrawn  | this is withdrawn either by the applicant or the company |
| Policy | Cancel     | these are cancelled; not the same as lapses, which are failures to pay; a cancel is an action taken by the policyholder |
| Policy | Conversion | indicates that a policy has converted, most products have a conversion privilege that allows them to move from Term to Perm |
| Policy | Death      | policy terminated due to death, claim may or may not be paid |
| Policy | Expiry     | indicates a term expiration |
| Policy | Inforce    | an inforce policy, settled, and not terminated, may or may not be in good standing of payment or at risk of lapse |
| Policy | Lapse      | policy terminated due to lapse, lapsing is a failure to pay premiums, policy is terminated with a date of the last due payment even though it commonly remains inforce through it's grace period, usually 60 days |
| Policy | Refunded   | policies have a free look period where they can get the premium returned, this is called a cancel not taken sometimes |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

{% docs contract_application_status %}
{% raw %}

<a name="contract_application_status"></a>
# Contract Status - Application
AS400/lifeplus/LSP staging tables:  
This determines the status of the application in the new business AS400 tables.

In the **new business** tables you can have a status of:

| Status Code | Status | Notes |
| ------ | ------ | -----|
| D | Declined | indicates underwriting did not allow for the policy to be written |
| I | Issued Not Paid |  |
| P | Pending |  |
| S | Settled | these policies should also show up in the issued contracts table |
| W | Withdrawn |  |

FAST staging tables: 
FAST policies have a different flow than LSP policies, they move from application to case to policy.
They also have very different statuses.

Status Mapping: 
As we move toward the consumption layer from staging and implement a single source of status
the below better describes the meaning of each status in the policy entity and how they relate
to the originating status in their originating systems.

Policy numbers in the application and case stage are not yet inforce, the policy statuses are ones that
are issued and settled. Life Plus (aka Life +, or L+) doesn't have application stages, we don't have that level of tracking, so policies
existing on that platform will start with Case statuses.

| Stage       |   Status   | application_status |
| ----------  |   ------   | ------------------ |
| Application | New        | 00000000-0000-0000-0000-000000000001 |
| Application | Submitted  | 00000000-0000-0000-0000-000000000002 |
| Application | Processed  | 00000000-0000-0000-0000-000000000003 |
| Application | Withdrawn  | 00000000-0000-0000-0000-000000000006 |
| Application | Deleted    | 00000000-0000-0000-0000-000000000009 |
| Application | Expired    | 00000000-0000-0000-0000-000000000010 |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

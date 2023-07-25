{% docs settled_date %}
{% raw %}

<a name="settled_date"></a>
# Settled Date
Settled date is commonly used in underwriting measures to understand how long a policy took
to settle. It represents the date a policy went inforce because payment was exchanged after
the policy was issued and the policy went into effect.

**AS400/LifePlus/LSP:**

- This is the date the policy was placed inforce as defined by the AS400 documents.
  AS400 splits their dates into year, month, day.
  
- In LifePlus, this date is stored in an underwriting table. We currently have not pulled that
  table in to the creation of the policies entity.
 
**FAST:**

- Since FAST policies have a different flow than LSP policies, namely, moving from _Application_ to 
  _Case_ to _Policy_ instead of _New Business_ to _Issued_, the settled date is the date the 
  policy moves to "active" because payment has been made on an issued policy. It is NOT the 
  date the policy moves to Policy from Case, (that date is the policy issued date, from there 
  the payment must be made still for it to be active and settle).

- Although FAST settled date is populated, the settled date for converted policies was not brought
  over from the old system (Life+)
  
- In FAST, this date is stored in the "audit tables" meaning that they are searched for when the 
  first payment was received. There is a backlogged request to change this in FAST. It will be 
  a stored value instead. The "audit table" is not a reliable method for them to store settled
  date, as we saw a mass reversal in march of 2021 and then reissue which makes it look like we 
  settled a huge chunk of policies that date. We will be adding settled date as a stored object 
  before moving DMT over, but for now, it just has some discrepancies.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
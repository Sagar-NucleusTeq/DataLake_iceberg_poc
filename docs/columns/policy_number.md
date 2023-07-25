{% docs policy_number %}
{% raw %}

<a name="policy_number"></a>
# Policy Number
A unique 10-digit (string) identifier of a AAA Life policy. Policy numbers exist for every policy 
application whether or not the policy was issued. Policies originating on FAST start with a 3, 
AS400/LifePlus policies cannot start with a 3. 

The only case where one may find duplicated policy numbers is when considering riders. Riders to
a base (the main policy is called the base) will have the same policy number but a base rider
code (sometimes called brcd) <> 0. 0 BRCD is reserved for base policies.

Great American Policies start with a G, Securian policies start with an S.
These policies are not sold on our books but we intend to track them as if 
they were out own policies.  

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:| Confidential |
|Usage Requirement:      | Deidentified |

{% endraw %}
{% enddocs %}

{% docs policy_number_converted_from %}
{% raw %}

<a name="policy_number_converted_from"></a>

# Policy Number that the Policy was Converted from

The [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
of the original contract the current contract replaces. Also known as Old Policy Number in 
New Business Contracts (Life+).

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:| Confidential |
|Usage Requirement:      | Deidentified |

{% endraw %}
{% enddocs %}

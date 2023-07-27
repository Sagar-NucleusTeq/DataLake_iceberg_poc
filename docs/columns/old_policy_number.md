{% docs old_policy_number %}
{% raw %}

<a name="old_policy_number"></a>
# Old Policy Number
If a policy is converted or replaced NB has the option to enter in an old policy number if they have 
it available. They should almost always have it for conversions and it may be offered at the time of 
replacement by the policy holder. They populate this field for FULL conversions as well as PARTIAL 
conversions (so tying to the old policy number in policies may result in truly terminated policies 
and may result in still inforce policies which have had a reduction in original coverage). 

For LSP the prompt for policy number assumes a 1-1 relationship between replacement policy and 
originating policy. When we ingest fast data that will not be true, FAST can have one policy that 
replaces several policies.  For today's data we have replacement and conversion indicators from FAST 
and LSP both but only old policy numbers for LSP.Replacements happen in both systems but conversions 
happen only in LSP manually because a conversion is to a perm product and all our perm products are 
in LSP today. 

If a conversion spans from FAST to LSP the policy is terminated in FAST and the converted policy is 
manually built in LSP. Thus LSP accounts for 100% of conversions so we are able to capture all old 
policy numbers associated with conversions this way.  It is also worth noting that NB enters in the 
old policy number into LSP today even if it was converted from FAST, allowing for that tie back to 
happen in policies.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:| Confidential |
|Usage Requirement:      | Deidentified |

{% endraw %}
{% enddocs %}
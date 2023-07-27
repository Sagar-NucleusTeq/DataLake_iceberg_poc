{% docs contestable %}
{% raw %}

<a name="contestable"></a>
# Contestable
Indicator ('Y', 'N') of whether the claim is in the contestable period. Contestable period is a 
period of time after a death claim is received for AAA Life to investigate claims for intentional 
errors. It is generally 2 years from issue date if a product is underwritten. 

Contestability varies by product. GIWL and RIWL are non-contestable from issue because they're 
guaranteed without underwriting. Reissue will restart the contestability period because we have the 
opportunity to re-evaluate underwriting. 

Note: 

- We might get nulls from FAST. It indicates that the contestable field did not exist the last time
a policy was updated. 
- Plans that start with 'G20' will show as contestable on the extract when they are not. They 
should be carved out of the contestable set. 

### Security and Usage Information
|                          |            |
|--------------------------|------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %} 
{% enddocs %}

{% docs is_contestable %}
{% raw %}

<a name="is_contestable"></a>
# Is Contestable
This boolean field identifies whether a claim is in the constestable period (TRUE) or not (FALSE),
and comes from the "contestable" field from extract_lifeplus table. If contestable has a value of 
'Y', is contestable will be set to True. If contestable has a value other than 'Y', is contestable 
will be set as False. 

Note: FAST didn’t have contestability logic before 2023 so when they implemented it any claims that 
predate the field implementation on the FAST side are null. They had no contestable claims until the
logic was put in so all nulls are made FALSE in `mid_claims_fast`.

### Security and Usage Information
|                          |            |
|--------------------------|------------|
| Security Classification: | Internal   |
| Usage Requirement:       | Anonymized |

{% endraw %}
{% enddocs %}

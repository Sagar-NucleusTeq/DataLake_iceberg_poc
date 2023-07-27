{% docs glossary_claim_number %}
{% raw %}

<a name="glossary_claim_number"></a>
# Claim Number

### Area(s) of the Business
All

### Definition
An automatically assigned number for a claim. Claim numbers are unique to the event.  

In LifePlus, any life policy rider, waiver premium or accelerated death benefit (XDB) claim will
come without a claim number. A claim number for these cases cannot be assigned in Lifeplus as
this will suspend the policy. They are assigned a claim number manually when the claim is ready
to be paid. These claims will never appear in pending status.

There are also miscellaneous entry issues and other situations in LifePlus that lead to missing 
claim ids:

- Policy number alpha is not capitalized

- The associate is on the policy screen in LifePlus

- The policy status is not currently in force 

- The date of death is prior to the policy effective date

In FAST, any additional insured rider, waiver premium will be assigned a claim id without suspending
the policy. 


{% endraw %}
{% enddocs %}
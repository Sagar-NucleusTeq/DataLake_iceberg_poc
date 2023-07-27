{% docs claim_liability %}
{% raw %}

<a name="claim_liability"></a>
# Claim Liability
Claim liability is a system calculation surrounding how much AAA Life expects to pay out. The amount
can change over time as more information is received and updated. The PAS system looks at the cause 
code and other factors to determine the right amount we expected to pay. It is a face amount, and 
sometimes we don't pay exactly the amount shown as claim liability.
The amount we actually paid is called `paid_amount`.

Note: This liability amount does not include interest and ROP (return of premium). ROP is when AAA
Life pays back a premium because it auto-drafted after someone died. 

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |


{% endraw %}
{% enddocs %}

{% docs glossary_settled_count %}
{% raw %}

<a name="settled_count"></a>
# Settled Policy Count

### Definition
The number of policies this transaction contributes to aggregate settled policy counts.
Can be fractional or negative in the case of corrections or cancels.

A life insurance policy, in AAA Life's case, is a contract between a customer and AAA Life 
Insurance Company. For life insurance policies, in exchange for premium payments, AAA Life will 
pay a lump sum known as a death benefit to the insured's beneficiaries after their death. In the
case of annuities, the customer pays a lump sum at the time of settlement and then they will 
receive regular payments from AAA Life immediately or at a pre-specified time.

### Calculation
SUM(`settled`)

### Rules
N/A

### Useful Takeaways
N/A

{% endraw %}
{% enddocs %}
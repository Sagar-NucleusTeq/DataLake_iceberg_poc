{% docs billing_mode %}
{% raw %}

<a name="billing_mode"></a>
# Billing Mode
How often the policy is billed. This is generally a policyholder choice; they can often choose at
the time of issue (but not always, GIWL Online is defaulted to monthly credit card payments only)
and can edit the choice over time if the policyholder chooses.

The modal premium will correspond to this field, it is the "mode" in modal premium. So when a
premium is payed in installments over a year it is the modal premium over this billing mode. A
policy which pays more often will have a lower modal premium so that over the course of a year
it adds up to an annualized number.

|  Valid Values  |
|  -----------   |
|  Annually      |
|  Monthly       |
|  Quarterly     |
|  Semi-Annual   |
 |  Do Not Bill  |

### Lifeplus

|  Code  |    Description   |
|  ----  |    -----------   |
|   A    |    Annually      |
|   M    |    Monthly       |
|   Q    |    Quarterly     |
|   S    |    Semi-annual   |
|   B**  |    Bi-weekly     |
|   T**  |    Thirteenthly  |

** Annually, Monthly, Quarterly, and Semi-annual are currently (1/7/22) the only codes that exist
in this field in LifePlus. We expect these are the only billing modes we have available at 
AAA Life even if LifePlus offers the option for Bi-weekly and Thirteenthly billing.  

### FAST

|  Valid Values  |
|  -----------   |
|  Annually      |
|  Monthly       |
|  Quarterly     |
|  Semi-Annual   |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |


{% endraw %}
{% enddocs %}
{% docs payment_type %}
{% raw %}

<a name="payment_type"></a>
# Payment Type
This is how the payment is made for a policy. The most common types of payment are
 electronic funds transfer, credit card, and direct bill.
 
A policy can change this at any time so today's payment type may not be reflective of how they come in in the future. 
There are concerns regarding direct bill policies and their propensity to lapse. Depending on how you come in to the system 
you may not have the option for both CC and Direct Bill, online policies, for example, are only sold via CC. 

#### Lifeplus
###### called `payment_code` in lifeplus

|  Code  |  Description                 |
|  ----  |  -----------                 |
|   BG   |  Billing group               |
|   CC   |  Credit card deduction       |
|   DB   |  Debit-route sheet           |
|   DD   |  Payor death                 |
|   DP   |  Payor disability            |
|   ET   |  Electronic funds transfer   |
|   FB   |  Family bill                 |
|   GA   |  Government allotments       |
|   GR   |  Group list bill             |
|   IN   |  Direct premium notice       |
|   NN   |  No notice                   |
|   PD   |  Pre-dated check             |
|   PF   |  Premium deposit fund        |
|   PY   |  Payroll deduction           |
|   SD   |  Sight draft                 |
|   SS   |  Salary savings              |
|   WP   |  Waiver of premium           |


#### FAST
###### called `billing_method` in FAST system

|  Code   |  Description            |
|  ----   |  -----------            |
|  Direct |  Paper-Direct Bill      |
|  CC     |  Credit Card            |
|  PAC    |  Pre-authorized Check   |
|  GA     |  Government Allotment   |
|  SD     |  Salary Deduction       |
|  PDF    |  Premium Deposit Fund   |
|  PC     |  Postdated Check        |
|  HO     |  Home Office            |
|  PNFO   |  Predetermined NFO      |
|  WG     |  Wholesale Group        |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
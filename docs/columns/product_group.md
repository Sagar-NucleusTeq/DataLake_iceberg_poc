{% docs product_group %}
{% raw %}

<a name="product_group"></a>
# Product Group

The name of the broad category of product being marketed in a direct mail message.
This field is populated from
[tactic_name](#!/model/model.aaa_life_data_platform.staging_metadata_metadata#tactic_name) 
using the
[product mapping table](#!/model/model.aaa_life_data_platform.staging_dsse_product_mapping).


| Valid values |
|--------------|
|   TERM       |
|   GIWL       |
|  ACCIDENT    |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs product_name %}
{% raw %}

<a name="product_name"></a>
# Product Name

The name of the broad category of product that is used in estimations for sales plan.

|Valid values|
|------------|
|   TERM     |
|   GIWL     |
|   MLTA     |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs sales_production_product_group %}
{% raw %}

<a name="docs sales_production_product_group"></a>
# Daily Sales Production Product Grouping

Sales Production Product Group is the grouping based on ProdLine and SubProdLine for the interim purposes of Daily Sales Production report only.


| Product Line                  | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|-------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Accident                      | Accident products provide payments to the policyholder in the event of a covered accident. AAAL accident products generally indemnify against accidents that occur while travelling.                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Ordinary and Juvenile         | Ordinary and Juvenile products are typically riders (attachments to base policies) that provide protection against the death of a child. Most of the products in this category are "Child Term Riders"                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Term                          | Term products protect against the financial impact of death for a pre specified term. Premiums during the term of the contract can be level or increasing.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Universal Life                | Universal Life products are a combination between a Life product and a Investment (Annuity) product. The policy holder pays regular premiums to indemnify against death. Premiums in excess of the amount  required to cover for mortality are invested at a floating rate depending on the prevailing interest rate  or other market conditions (subject to minimum). The excess premiums grow in value over time and build "cash value". Cash value can be used to pay future premiums, can be withdrawn, or a loan can be taken against it. As of 2020, all new Universal Life products are sold through a third party agreement with Securian. |
| Deferred Annuity              | SPDA+IDA+FPDA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |                                            
| Immediate Annuity             | Single Premium Immediate Annuity (SPIA)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Direct Mail Term              | Annual Renewable product sold through the mail. One of our two most common products.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Simplified Issue Whole Life   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Hospital Income Protection    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Guaranteed Issue Whole Life   | Guaranteed Issue Whole Life products protect against the financial impact of death for the entire life of a policy holder.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Express Term                  | Level Term product sold online                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |



### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

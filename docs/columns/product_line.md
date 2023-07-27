{% docs product_line %}
{% raw %}

<a name="product_line"></a>
# Product Line

Product line is a high level description of a plan code. Product lines describe the type of
product being sold. There are current 8 product lines at AAAL:

| Product Line              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|---------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Accident and Health       | Accident products provide payments to the policyholder in the event of a covered accident. AAAL accident products generally indemnify against accidents that occur while travelling.                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Annuity                   | Policy holder gives AAAL money (principal) which in turn is invested on behalf of the policy holder.  Interest accrued (less a administration fee) is paid back to the policy holder over time or at the end of the term. The full amount of the principal may or may not be returned at the end of the term of the contract. Annuities are designed for individuals seeking stability of  investment and predictability of cash flows.                                                                                                                                                                                                            |
| Ordinary and Juvenile     | Ordinary and Juvenile products are typically riders (attachments to base policies) that provide protection against the death of a child. Most of the products in this category are "Child Term Riders"                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Other Riders              | These are attachments or amendments to base policies other than Ordinary and Juvenile specified above.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Term                      | Term products protect against the financial impact of death for a pre specified term. Premiums during the term of the contract can be level or increasing.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Universal Life            | Universal Life products are a combination between a Life product and a Investment (Annuity) product. The policy holder pays regular premiums to indemnify against death. Premiums in excess of the amount  required to cover for mortality are invested at a floating rate depending on the prevailing interest rate  or other market conditions (subject to minimum). The excess premiums grow in value over time and build "cash value". Cash value can be used to pay future premiums, can be withdrawn, or a loan can be taken against it. As of 2020, all new Universal Life products are sold through a third party agreement with Securian. |
| Whole Life                | Whole Life products protect against the financial impact of death for the entire life of a policy holder.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Whole Life and Juvenile   | Includes whole life products as defined above, as well as juvenile-specific products.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |

Note: The two sources for `product_line` are BI (`PRDSQL1.BI_Reporting_RO`) and Merkle/MDE.
Currently, "Other Riders" and "Whole Life and Juvenile" values are only stored in BI, not in
Merkle.

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs product_line_short %}
{% raw %}

<a name="product_line_short"></a>
# Product Line Short Version

Short version of product line (based on BI product line)

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs product_short_description %}
{% raw %}

<a name="product_short_description"></a>
# Product Short Description

General description of the product line (based on BI product line)

### Security and Usage Information
|     |     |  
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
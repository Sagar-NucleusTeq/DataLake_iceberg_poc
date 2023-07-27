{% docs conversion_type %}
{% raw %}

<a name="conversion_type"></a>
# Conversion Type
 This field indicates what type of conversion was used if this policy was issued as a
 replacement of another policy within AAA Life or from another company. If the policy was
 not issued as a replacement this field will be null.


|  Code  |  Description   |  Notes  |
|  ----  |  -----------   | ------- |
|   C    | Conversion     | We do not use this code for annuities currently – this is typically a Term policy being Converted to a permanent insurance product. |
|   E    | 1035 Exchange  | This would be funds from another Insurance company, not like Fidelity or a Bank (non-qualified, typically using a cash value for existing insurance or Annuity) |
|   X    | Exchange       | Indicates an External Rollover/Transfer (Usually for Qualified funds or 401(k) transfers) |
|   R    | Replacement    | Indicates Internal Rollover/Transfer (money in house) |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}



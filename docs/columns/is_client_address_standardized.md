{% docs is_client_address_standardized %}
{% raw %}

<a name="is_client_address_standardized"></a>
# Is Client Address Standardized
Boolean indicator (TRUE,FALSE) for whether the client address is allowed to be validated by USPS to 
be changed to a standardized address format. Derived from the client_address_standardized_code 
column.

Note: Any NULL values in the client_address_standardized_code will be set to FALSE.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
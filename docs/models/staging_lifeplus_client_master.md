{% docs staging_lifeplus_client_master %}
{% raw %}

# Client Master

![last updated](assets/update_badges/client_master.svg)

Lifeplus policy client identification and personal details such as birth date, sex, and death date.

Data Notes
Date of birth contains invalid data that has been transformed. Any birth dates that are 0-0-0000 or
include negative numbers for the day, month, or year have been transformed into NULL values.

Additionally, marital status has many undefined codes outside of the documented 4 codes (D, M, S,
W) that are expected per Lifeplus documentation. These codes are not fully understood and care
should be used when this field is used.

There are 5 clients with invalid non-null values for sex code.
In the transformation to sex, these values are changed to NULL.
Those 5 clients are connected to policies that do not exist in
the other lifeplus contract staging tables.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per client number |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
One record per unique policy client. A specific individual or corporation may exist as multiple
client numbers.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %} 

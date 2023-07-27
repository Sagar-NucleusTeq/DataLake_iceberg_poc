{% docs staging_integrated_offer_finder_numbers %}
{% raw %}

# Integrated Offer Finder Numbers

![last updated](assets/update_badges/staging_integrated_offer_finder_numbers.svg)

This table contains the Integrated Offer information from the Aurora Database. Each time AAA Life makes an offer to a
potential customer, the information is stored here.

There are multiple records with agent number '1110000'. These are fake records and 1110000 is
a test agent number only. It is used by IT for end to end testing and these records must be in 
production because of this. These records will be removed in any mid or gold tables, but in 
staging we try to keep tables as true to the source system as possible.
This process was created per Yash Prasad's instructions (the SME of this table) on 4/11/2022.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | One record per finder number |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
Finder number is a unique identifier used to tie an application to a promotion.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs staging_dsse_direct_mail_completion_factors %}
{% raw %}

# Staging DSSE Direct Mail Completion Factors

![last updated](assets/update_badges/staging_dsse_direct_mail_completion_factors.svg)

A table containing completion factors for direct mail campaigns. These completion factors provide an estimate for the 
percentage of application submissions, settled policies, and production dollars that we expect to receive on each day--
as well as cumulatively--for up to 1 calendar year (adjusted for leap years) following the mail drop date of the 
campaign. Completion factors vary by product.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per days_since_drop + product_group |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
There are two fields that are needed in this table to get a unique row.
1. **Days Since Drop**: The number of days since a campaign dropped. This field is used in
 estimating sales plan and forecast numbers and can be found associated with completion factors.
2. **Product Group**: The name of the broad category of product being marketed in a direct mail
 message.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
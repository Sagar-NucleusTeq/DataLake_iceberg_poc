{% docs service_automation_type %}
{% raw %}

<a name="service_automation_type"></a>
# Service Automation Type

Ingested from United States Postal Service (USPS) Service Type Identifiers (STID) reference tables,
which are a component of the Intelligent Mail Barcodes (IMb).[1] This field identifies whether a 
mail piece is tracked using full service or basic/no automation, as well as whether the item uses
IV-MTR.

**Basic vs. Full Service Automation**
Mail can have no automation, basic automation, or full service automation.[2]
* No automation: mail does not have IMb
* Basic automation: mail has IMb and tracking is available. For an additional cost, the sender can 
also choose to receive Address Change Service (ACS) notifications. This means that senders will be
notified if mail was unable to be delivered due to address changes.[3]
* Full service automation: mail has IMb and additional tracking is available compared to the basic
automation service. Also, senders will automatically receive ACS notifications at no additional
charge.[3],[4]


| Value Options | Description |
|:--------------:|:--------------:|
| basic_or_non_automation_without_iv_mtr | Mail piece uses basic or no automation and DOES NOT use IV-MTR |
| basic_or_non_automation_with_iv_mtr  | Mail piece uses basic or no automation and DOES use IV-MTR |
| full_service_without_iv_mtr | Mail piece uses full-service automation and DOES NOT use IV-MTR |
| full_service_without_iv_mtr | Mail piece uses full-service automation and DOES use IV-MTR |


For further information please see the latest USPS reference tables: 
[Informed Visibility Service Type Identifier (STID) Table](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/160727058/Requirements+Definition+Informed+Visibility+Feed)
See STIDTableEffectiveJuly272020.pdf or most attachment whose name starts: "STIDTable".

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Public |
|Usage Requirement:| Anonymized |

### References
[1] United States Postal Service. (n.d.). Service type identifiers (stids).
USPS PostalPro. Retrieved October 19, 2021, from
<https://postalpro.usps.com/mailing/service-type-identifiers>. 


[2] United States Postal Service. (n.d.). Intelligent Mail® Barcode. USPS PostalPro. 
Retrieved October 18, 2021, from
<https://postalpro.usps.com/mailing/intelligent-mail-barcode>.


[3] BCC Software. (2018, January 3). Full Service Compliance or Basic? Basic vs. Full
Service at a Glance. BCC Software. Retrieved October 19, 2021, from 
<https://bccsoftware.com/imb-full-service-basic>.


[4] United States Postal Service. (n.d.). ACS Product Information Guide: Full Service
ACS. About USPS. Retrieved October 19, 2021, from
<https://about.usps.com/publications/pub685/pub685ch2_001.htm>.

{% endraw %}
{% enddocs %}
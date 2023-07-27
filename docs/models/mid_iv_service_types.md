{% docs mid_iv_service_types %}
{% raw %}

# Informed Visibility Service Types

![last updated](assets/update_badges/mid_iv_service_types.svg)

A lookup table with the informed visibility service type identifiers (STID) and their descriptions.
The STID is a three-digit numeric code used within the Intelligent Mail® barcode (IMb™) on a mailpiece
that identifies the address correction or other electronic services desired. The STID encodes the mail 
class of mail (e.g., Ballot Returns, Bound Printed Matter, First-Class Mail, Periodicals, Priority Mail, etc.),
specific address correction ancillary service option, whether the mailing uses Basic or
Full-Service automation, and whether the mailpiece uses IV-MTR. 

Note 1: Comment indicators present in staging_iv.service_types were stripped out. Comment indicators
are represented by the string '***'. These indicators were sometimes concatenated to real STID values
and sometimes appeared in their own cells.

Note 2: If a STID did not exist for a specific combination the combination was omitted from the table.
For example, there is no first-class STID where the address correction/ ancillary service option is
Full Service ACS - ASR 1 Address Service Request Opt 1 and the service automation type is basic or
non-automation without IV-MTR. There is therefore no record corresponding to that combination of values.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per service_type_id_code|
| Security Classification: | Public |
| Usage Requirement:       | Anonymized |

### Grain Description
**service_type_id**: Each record contains one and only one service type identifier value,
along with its class of mail, address correction ancillary service option, automation type, and
use of IV-MTR.


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
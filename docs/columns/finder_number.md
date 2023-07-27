{% docs finder_number %}
{% raw %}

<a name="finder_number"></a>
# Finder Number for Direct Mail Records
Finder number is a "unique" identifier printed on an application form
within the package someone receives during a given campaign. (The uniqueness
is to be used with caution. In the beginning of the launching campaigns
from the MDE, some finder numbers were duplicated. Issues that could be
resolved were, but some duplicates remain. If duplicates are found in
the future, they should be corrected. If a unique entity is needed,
broadlog id is the safest bet.) When an application is mailed in and
scanned using Excela, finder numbers are automatically uploaded to the
policy administration system. It should be noted that if a spouse applies
instead of the addressee, the second character of the finder number will
be changed from a "0" to a "1".

### Additional Information for [promotion history](#!/model/model.aaa_life_data_platform.staging_mde_promotion_history) / [messages](#!/model/model.aaa_life_data_platform.gold_messages) table
Finder numbers should be unique except for the cases below. If any
issues are found in the future, please address them with Lisa Sultana-Bogacki
or Brittany Spencer.

1. C7 2019 had duplicate finder numbers within the campaign, but across
   products. As packages were mailed before the issue was discovered,
   no solution exists. When checking for duplicates, exclude 2019 C7
   records, mailed 6/14/2019.

2. Records with campaign labels Tej Test and Tej Export TB5 Delivery Package
   are mostly comprised of test records. Due to an issue within Merkle's
   set up, the finder numbers from these records were not added to the
   lookup table that is referenced to ensure finder numbers are not
   duplicated. Thus, when checking for duplicates, exclude Tej records.
   For more information, see campaign_label definition. As of 3/11/2021
   Tej records are suppressed from this table on JIM, but still exist in
   the promotion_history on MDE.

3. Kit requests occasionally duplicate finder numbers. This should not be
   the case, and any issues should be reported to Lisa Sultana-Bogacki so they
   can be fixed.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs attributed_finder_number %}
{% raw %}

<a name="attributed_finder_number"></a>
# Attributed Finder Number
Finder number is a "unique" identifier printed on an application form
within the package someone receives during a given campaign. (The uniqueness
is to be used with caution. In the beginning of the launching campaigns
from the MDE, some finder numbers were duplicated. Issues that could be
resolved were, but some duplicates remain. If duplicates are found in
the future, they should be corrected. If a unique entity is needed,
broadlog id is the safest bet.) When an application is mailed in and
scanned using Excela, finder numbers are automatically uploaded to the
policy administration system. It should be noted that if a spouse applies
instead of the addressee, the second character of the finder number will
be changed from a "0" to a "1".

Attributed finder number is the finder number on the record in
the consumption layer messages table/promotion_history that the
policy application was attributed to. This
entity is assigned during the attribution process using the
logic found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs integrated_offer_finder_number %}
{% raw %}

<a name="integrated_offer_finder_number"></a>
# Integrated Offer Finder Number
Finder number is the unique identifier of an integrated offer. It is closely 
related to the finder number field for promotion_history records. These
finder numbers were purchased from Merkle, thus preserving the form and structure
and to ensure no overlap exists between the finder numbers corresponding to
direct mail promotion records and integrated offer records. These finder numbers
will be used to tie Integrated Offer policies to the offer records in this table
through attribution.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs fast_domain_type %}
{% raw %}

<a name="fast_domain_type"></a>
# FAST Domain Type
The type of value that the lookup table is mapping. 
The [`fast_id`](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_id)
or [`fast_domain_code`](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_domain_code)
gets mapped to [`fast_domain_description`](#!/model/model.aaa_life_data_platform.staging_dsse_fast_global_lookup#fast_domain_description)
in this table and the FAST domain type tells us what the row is mapping. 
For example, to get a lookup table just for clubs, one would filter this table on
fast_domain_type = 'Club'. Similarly, to get a lookup table just for lead source codes, 
one would filter this table on fast_domain_type = 'LeadSource'.

| Valid Values |
| ------------ |
|  CaseType    |
|  Club        |
|  Company     |
|  EntrySource |
|  Gender      |
|  LeadSource  |
|  States      |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
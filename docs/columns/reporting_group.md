{% docs reporting_group_company_level %}
{% raw %}

<a name="reporting_group_company_level"></a>
# Reporting Group Company Level

These are the company code breakdowns used for the customer facing production reports. Reporting group listing is similar 
to Companies but it is more aligned with the group that owns the membership base and is less tied to the life insurance 
reporting of results and revenue.

| Valid Values          |
|-----------------------|
|   AAA NE              |
|   ACA                 |
|   ACE                 |
|   ACG                 |
|   Independent         |
|   MWG                 |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs reporting_group_insurance_company_level %}
{% raw %}

<a name="reporting_group_insurance_company_level"></a>
# Reporting Group Insurance Company Level

These are the company code breakdowns which further includes the Independent split between NY and non-NY in addition to
reporting_group_company_level break downs used for the customer facing production reports. 
Reporting group listing is similar to Companies but it is more aligned with the group that owns the membership base and 
is less tied to the life insurance reporting of results and revenue.

| Valid Values          |
|-----------------------|
|   AAA New York        |
|   ACA                 |
|   ACE                 |
|   ACG                 |
|   MWG                 |
|   Independent-ALAN    |
|   Independent-AANY    |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs reporting_group_club_level %}
{% raw %}

<a name="reporting_group_club_level"></a>
# Reporting Group Club Level

Reporting group listing is similar to Companies but it is more aligned with the group that owns the
membership base and is less tied to the life insurance reporting of results and revenue.

These are the club code level breakdowns used for the AAA Life customer facing production reports. 

| Valid Values          |
|-----------------------|
|   AAA NE              |
|   ACA                 |
|   ACE                 |
|   ACG                 |
|   IND                 |
|   MWG                 |


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs dsse_reporting_group %}
{% raw %}

<a name="dsse_reporting_group"></a>
# Reporting Group for DSSE Reporting

Reporting group listing is similar to companies but it is more aligned with the group that owns
the membership base and is less tied to the life insurance reporting of results and revenue.

Reporting groups in this field are:

| Example values    |
|-------------------|
| ACA  |
| ACE  |
| ACG  |
| MWG  |
| Indep NY  |
| Indep Non NY  |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs reporting_group_sales_plan %}
{% raw %}

<a name="reporting_group_sales_plan"></a>
# Reporting Group for DSSE Reporting in Sales Plan Comparisons

Reporting group listing is similar to companies but it is more aligned with the group that owns
the membership base and is less tied to the life insurance reporting of results and revenue. 

In 2022's Sales Plan, different reporting groups wanted to see 097 as part of their numbers,
but we couldn't double count them, so it went in with reporting group "NENY." In 2021, it
would seem that the AANE clubs were still part of IND. MATL is referred to using its
more common "ACA" in 2022.

Reporting groups in this field are:

| Valid values |
| ------------ |
| AANE |
| AANY |
| ACA  |
| ACE  |
| ACG  |
| IND  |
| MATL |
| MWG  |
| NENY |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
{% docs lead_source %}
{% raw %}

<a name="lead_source"></a>
# Lead Source
Lead sources are assigned automatically at time of application by business rules contained in
the policy administration system. Lead Source definitions change over time and some used in the
past have been retired. The most up to date definitions can be found within PRDDM1 by 
querying dbo.leadsourcecodes. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs lead_source_code %}
{% raw %}

<a name="lead_source_code"></a>
# Lead Source Code
Three character code to help note colloquially a "source", "channel", or "referrer" of an
application.

Lead source codes were originally developed to track commission payments. Club partners receive a
higher commission on policies that originate from their marketing efforts (e.g. club emails,
warm transfer programs, links on their web page) than they do for policies that are originated
through AAA Life Insurance's marketing activities or organic (customer-initiated activities such
as non-paid search or directly navigating to aaalife.com).

From a technical standpoint, some Lead Source Codes are mapped to SIT Codes in Life Plus in a 
one-to-many relationship. More than one Lead Source Code can be mapped to a single SIT Code, but
a Lead Source code can only be mapped to a single SIT Code. All AAA Life business processed in
Life+ is associated with a Lead Source Code to help identify where the business generated from, 
such as Life Desk for field agent business, Direct Mail – Excela, or the DSU to name a few
examples. Currently, Lead Source Codes that are associated with a SIT Code only represent DSU
business. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs lead_source_description %}
{% raw %}

<a name="lead_source_description"></a>
# Lead Source Description
A spelled-out version of lead source code. 

| Example Lead Source Codes |  Lead Source Description |
| ------------------------- |  ----------------------- |
| 31 |   Exela       |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs lead_source_code_description %}
{% raw %}

<a name="lead_source_code_description"></a>
# Lead Source Code Description
A brief description of a lead source code.  Each Lead Source Code has a single description.

| Sample Data         |
|---------------------|
| Email               |
| Paid Social         |
| Paid Search         |
| Internet Display Ad |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs lead_source_category %}
{% raw %}

<a name="lead_source_category"></a>
# Lead Source Category
A broader category that combines multiple lead sources together for reporting purposes.  For example, *Social Media*, 
*Internet Display Ad*, *Video Ad*, and *Email* are all grouped together as *e-Commerce*.  

Used in legacy reporting.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs lead_source_group %}
{% raw %}

<a name="lead_source_group"></a>
# Lead Source Group
A broader category that combines multiple lead sources together for reporting purposes.  For example, *Member Services 
Transfers*, *DSU Toll Free*, and *Referral* are all grouped together as *Inbound*.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

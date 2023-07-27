{% docs zip_code %}
{% raw %}

# ZIP Code

A ZIP Code is a postal code used by the United States Postal Service to assist the sorting of mail.
The basic format consisted of five digit, but then an extended ZIP+4 code was introduced; 
it included the five digits of the ZIP Code, followed by a hyphen and four digits that
designated a more specific location.
 
ZIP is an acronym for Zone Improvement Plan. However, the USPS intentionally chose the acronym
to indicate that mail travels more quickly when senders mark the postal code on their packages
and envelopes.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs promotion_zip %}
{% raw %}

# Promotion Zip Code

Promotion recipient's receiving U.S. postal code during promotion.  
Note: add a relation test for zip code to link to the staging version
of landing_global_lookups.stage_province once it is available.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs promotion_zip_plus_4 %}
{% raw %}

<a name="promotion_zip_plus_4"></a>
# Zip Code Plus 4
Final 4 digits of a full nine-digit ZIP Code of the promotion recipient's address during 
the actual promotion.

The 9-digit ZIP Code consists of two sections. The first five digits indicate the 
destination post office or delivery area. The last 4 digits
represent specific delivery routes within delivery areas.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs recipient_zip_code %}
{% raw %}

# Recipient Zip Code

The zip code in which the target recipient of the message resides.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs current_zip %}
{% raw %}

# Current Zip Code

The zip code in which the individual currently resides. This is Merkle's best estimate of an
individual's actual current residence using club and Wunderman data. 

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs client_zip_code %}
{% raw %}

<a name="client_zip_code"></a>
# Client Zip Code
The zip code of the client's mailing address.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs zip_plus_4 %}
{% raw %}

<a name="zip_plus_4"></a>
# Zip Code Plus 4 
Final 4 digits of a full nine-digit ZIP Code. The 9-digit ZIP Code consists of two sections.
The first five digits indicate the destination post office or delivery area. The last 4 digits
represent specific delivery routes within delivery areas.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
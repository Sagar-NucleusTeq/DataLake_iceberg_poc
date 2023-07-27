{% docs client_name %}
{% raw %}

<a name="client_name"></a>
# Client Name
The name of a party related to a policy. This may be an individual or a corporation.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | PII |

{% endraw %}
{% enddocs %}

{% docs organization_name %}
{% raw %}

<a name="organization_name"></a>
# Organization Name
Name of the company or organization that owns the policy. This is only applicable 
when party_type is 'Corporation'.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs name_prefix %}
{% raw %}

<a name="name_prefix"></a>
# Prefix
The prefix of the party's name, such as a title before a person's name. For example, she uses the 
prefix "Ms." rather than "Mrs."

This is only applicable when party_type is 'Person'.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs name_first %}
{% raw %}

<a name="name_first"></a>
# First Name
The first, or given name of a party.

This is only applicable when party_type is 'Person'.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs name_middle %}
{% raw %}

<a name="name_middle"></a>
# Middle Name
A party's name placed after the first name and before the surname.

This is only applicable when party_type is 'Person'.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs name_last %}
{% raw %}

<a name="name_last"></a>
# Last Name
The last, or family name of a party.

This is only applicable when party_type is 'Person'.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs name_suffix %}
{% raw %}

<a name="name_suffix"></a>
# Suffix
A name suffix, in the Western English-language naming tradition, follows a person's full name 
and provides additional information about the person. Post-nominal letters indicate that the 
individual holds a position, educational degree, accreditation, office, or honor 
(e.g. "PhD", "CCNA", "OBE"). Other examples include generational
designations like "Sr." and "Jr." and "I", "II", "III", etc.

This is only applicable when party_type is 'Person'.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs name_full %}
{% raw %}

<a name="name_full"></a>
# Full Name
The full name of a party. The party's first, middle and last name.

### Security and Usage Information
|                          |              |
|--------------------------|--------------|
| Security Classification: | Internal     |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
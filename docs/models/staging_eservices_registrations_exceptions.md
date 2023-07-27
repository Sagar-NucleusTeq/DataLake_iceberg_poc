{% docs staging_eservices_registrations_exceptions %}
{% raw %}

# eServices Registrations Exceptions

![last updated](assets/update_badges/staging_eservices_registrations_exceptions.svg)


Records from [eServices Registrations](#!/model/model.aaa_life_data_platform.staging_eservices_registrations)
that violate established business rules, but do not rise to the level of a test 
warning or error.

This model includes all records that violate one or more of the rules below.  If 
a record violates more than one rule, it will appear in this table more than once.

As these records are by definition exceptions to business rules, limited data testing
is applied to this model.

### Business Rules Checked
|                                                                |
|----------------------------------------------------------------|
| Missing Client Id                                              |
| Duplicate Records (two or more records with the same client_id |

### Security and Usage Information
|                          |                     |
|--------------------------|---------------------|
| Grain:                   |  |
| Security Classification: | Internal            |
| Usage Requirement:       | Deidentified        |

### Grain Description
This exception table can't have a clearly defined grain since it contains bad data from the source 
that are either duplicate records or records with null client id. 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
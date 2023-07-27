{% docs party_type_code %}
{% raw %}

<a name="party_type_code"></a>
# Party Type Code
A 1-character code indicating whether the party is an organization or a person.

| Life+ Code | Description | PAS Aligned Description |
|------------|-------------|-------------------------|
|     C      | Corporation | Organization            |
|     N      | Individual  | Person                  |

| FAST  Code | FAST Description | PAS Aligned Description |
|------------|------------------| ------------------------|
|     O      | Organization     | Organization            |
|     P      | Person           | Person                  |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs party_type_description %}
{% raw %}

<a name="party_type_description"></a>
# Party Type Description
Non-coded single-word indicator for whether a party is an organization or a person.

| Valid Values |
|--------------|
| Organization |
| Person       |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs client_is_individual %}
{% raw %}

<a name="client_is_individual"></a>
# Client Is Individual
True/False indicator of whether the client (party) is an individual.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs client_is_corporation %}
{% raw %}

<a name="client_is_corporation"></a>
# Client Is Corporation
True/False indicator of whether the client (party) is a corporation.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
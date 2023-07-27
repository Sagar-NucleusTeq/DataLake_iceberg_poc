{% docs license_type %}
{% raw %}

# Agent License Type
The type of license an agent holds. 
There are currently two types of licenses, Health (H) and Life (L).

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs license_number %}
{% raw %}

# Agent License Number
The license number associated with a particular agent.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs license_effective_date %}
{% raw %}

# Agent License Effective Start Date
The beginning effective date for an agents license.

This field is concatenated from the LIFEPLUS fields mleffm, mleffd, mleffy which are date parts designating the 
effective data month, day and year.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs license_expiration_date %}
{% raw %}

# Agent License Effective End Date
The ending effective date for an agents license.

This field is concatenated from the LIFEPLUS fields mlrenm, mlrend, mlreny which are date parts designating the 
effective data month, day and year.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs has_health_license_active %}
{% raw %}

# Has Health License Active
True/False field that denotes whether or not an agent's health license is currently active.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs has_life_license_active %}
{% raw %}

# Has Life License Active
True/False field that denotes whether or not an agent's Life license is currently active.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}

{% docs is_active_license %}
{% raw %}

# Is Agent License Active
True/False field that denotes whether or not an agents license is currently active.

### Security and Usage Information
|     |     |
| --- | --- |
|Security Classification:  |Internal|
|Usage Requirement:        |Deidentified|

{% endraw %}
{% enddocs %}
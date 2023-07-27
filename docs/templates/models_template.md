{% docs use_this_template_for_model_markdown_files %}
{% raw %}

# Model Name/Alias

<!--the filename below should match the name of the model's .sql file-->
<!--e.g. the badge for staging_mde_policy_clients.sql is staging_mde_policy_clients.svg -->
![last updated](assets/update_badges/filename_of_model.svg)

model description

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | enter the grain of the table in plain English here, i.e. 1 row per ... |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
description of the grain of the model (if needed)  
e.g. what does a 'promotion' actually mean?

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
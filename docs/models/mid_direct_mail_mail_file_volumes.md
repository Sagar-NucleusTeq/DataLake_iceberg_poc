{% docs mid_direct_mail_mail_file_volumes %}
{% raw %}

# Mail File Volume

![last updated](assets/update_badges/mid_direct_mail_mail_file_volumes.svg)

File from mail vendors containing expected and projected counts of printed mail,
at the grain of campaign name, campaign number, campaign finance year, resident club code, 
state, tactic name, and tactic type.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per campaign name, campaign number, campaign finance year, resident club code, state, and tactic |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
This table rolls up the data to the level which we budget at to be able to report campaign 
performance in a downstream model. So it is at a level of club, state, and tactic for every direct 
mail campaign of the year.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
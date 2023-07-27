{% docs campaign_label %}
{% raw %}

# Campaign Label

Output from Adobe for promotion history table. Requires user input 
(in Adobe Campaign Tool) which provides information noting which 
campaign records correspond to. If user input is not entered, 
Adobe defaults the label to 'New Campaign' which would make this field 
inaccurate for any reporting purposes.  Campaign label field should be 
interpreted with caution.

Note: Two campaign labels are of special interest: Tej Test, 
Tej Export TB5 Delivery Package. These records are mostly test records
within promotion history. Details surrounding the situation are
unfortunately somewhat hazy. There is some evidence that some of these
records were actually live and these individuals mailed, or the true
record was over written by these tests. There are 144
cases where finder numbers on the application correspond only to 
finder numbers on these "Tej" records. However, it is impossible to 
tell the true scope of the problem. As most of these records are in
fact test records, they must be excluded in entirety for dbt tests to 
pass. As of 3/9/2021, these records have been suppressed from JIM, but
still exist in promotion_history on the MDE.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
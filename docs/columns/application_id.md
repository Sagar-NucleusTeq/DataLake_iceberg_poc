{% docs application_id %}
{% raw %}

<a name="application_id"></a>
# Application Identifier

Unique identifier of an application. This is the AS400 version of the
FAST column "application_number".

Policies corresponding to Direct Mail Marketing: presumably if a paper 
application is scanned by Exela, the leading character will be an "M". 
The second character will be a "0" if the individual mailed applies and
a "1" if the spouse applies. All characters except the second will match
the analogous characters of the finder number on the promotion history
record of the mailing received. Application id's for policies applied 
for through SISU can be automatically generated (many will start 
with a leading "K" character), or can be entered by the agent.

<!--- NOTE: If information is added to this definition, please update the 
markdown file for application_number as well. Both naming conventions 
are preserved to ensure visibility into both administrative systems, though 
once a policy is included in the gold.policies table, policy identifiers from
both systems are joined in a single column: application_id. -->

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
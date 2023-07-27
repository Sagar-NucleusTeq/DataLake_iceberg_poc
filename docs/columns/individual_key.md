{% docs individual_key %}
{% raw %}

<a name="individual_key"></a>
# Individual Key
Identifier of an individual and all their known information in the AAA Life database. In theory,
individual keys should correspond to one and only one individual. An individual does not need
to be a AAA member to be assigned a key.

Individual keys are not static and change over time due to Merkle's re-keying process. Individual
keys are updated in most but not all tables during the re-key process. (There is some evidence that
individual keys are reused in the re-key process as well.) 

Additionally, all policies should have an individual key, however this is currently a known bug
and is not the case. There are NULL individual keys in the policy tables.

Finally, while it might be tempting to assume any individual key in any table will be found
within the individual_summary table, this is not the case. Individual keys on a promotion or
policy record may not always exist in individual summary due to suppressions of individuals who 
can no longer be marketed to by any means (DNS). Individuals who can still receive some type of
marketing (e.g. mail but not email) will still be found in this table.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
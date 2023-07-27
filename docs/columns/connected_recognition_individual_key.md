{% docs connected_recognition_individual_key %}
{% raw %}

<a name="connected_recognition_individual_key"></a>
# (Connected Recognition) Individual Key

Identifier of an individual within the AAA Life database. In theory,
individual keys should correspond to one and only one individual. An individual does not need
to be a AAA member to be assigned a key. A header of connected_recognition (formerly cr_) 
means in part that this key is not always updated during the merkle re-key process. 

Connected recognition tables are the old originating key associated with who this person is. 
They are not updated with re-keying, therefore, this is the 'old' individual_key.

Find more on regular individual_keys [here](#!/exposure/docs.business_glossary.glossary#individual_key).

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
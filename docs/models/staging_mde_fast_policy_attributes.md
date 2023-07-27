{% docs staging_mde_fast_policy_attributes %}
{% raw %}

# FAST Policy Attributes
![last updated](assets/update_badges/staging_mde_fast_policy_attributes.svg)

Attributes of applications/cases/policies that are worked in the FAST policy administration system.

NOTE 1: There are 6 policies whose insured had problems during identity resolution, causing multiple
individuals to be linked as the insured, which is not possible in the current
business logic. Until those issues are resolved, the records associated with those policies
have been purged from this staging table.

NOTE 2: Policies that need to be temporarily filtered from the data platform via the [Temporary Global Policy Exclusion 
process](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/11498160129/Temporary+Global+Policy+Exclusion) are filtered here.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per policy_number + finder_number |
| Security Classification: | SRD |
| Usage Requirement:       | Gold |

### Grain Description
See [policy number](#!/exposure/docs.business_glossary.glossary#policy_number)
for definition.

See [finder number](#!/exposure/docs.business_glossary.glossary#finder_number)
for definition

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs mid_compliance_policy_clients %}
{% raw %}

# Merkle's Policy Client Aggregated by Policy Number, Client Number, Individual Key

![last updated](assets/update_badges/mid_compliance_policy_clients.svg)

This table supports Compliance efforts to ensure that life insurance policies are labeled as replacements if they were 
purchased to replace existing life insurance policies. Specifically, the purpose of this table is to yield one record 
per insured, per policy--meaning only records where the policy role is insured or "INS" are included. Aggregation was 
required because `staging_mde.policy_client` frequently associates the same policy number and policy role to multiple 
clubs and/or companies.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per policy number + client number + individual key|
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
* See [Policy Number](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#policy_number) for definition.
* Client number is analogous to [Party Number](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#party_number) but is specifically sourced from LifeSource. Merkle does not currently
provide a mapping of individual keys to FAST party numbers. Therefore, client numbers are only populated for LifeSource
policies.
* See [Individual Key](https://dataplatformdocs.aaalife-data.com/#!/exposure/docs.business_glossary.glossary#individual_key) for definition.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
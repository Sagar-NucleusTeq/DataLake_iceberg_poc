{% docs business_rule_violation_monitoring_premium_production_errors %}
{% raw %}

# Premium Production Transactions with Errors

![last updated](assets/update_badges/business_rule_violation_monitoring_premium_production_errors.svg)

This table includes records of transactions (listed below) with errors. These are transactions 
of submits/settled premium and counts applied to a AAAL policy by transaction date, 
distchannel, subdistchannel, plancode, company, clubcode and agents. The errors descriptions are
also listed below with more specific logic used to identify them.

| Transaction Type  | Description                                      |
|-------------------|--------------------------------------------------|
| AMR               | Agent Management Report                          |
| AMRx              |                                                  |
| Annuity Premiums  | Annuity Premiums                                 |
| Annuity Reversals | Annuity Reversals                                |
| APR Excess        | Excess Agent Production Report                   |
| APR Misc Chg      | Miscellaneous Agent Production Report            |
| APR Settled       | Settled Transactions                             |
| APR Submitted     | Submitted Agent Production Report                |
| APR Termination   | Terminated Agent Production Report               |
| APR Unknown       | Unknown Agent Production Report                  |
| Budget            | Budgeted Production Entries                      |
| DSU Termination   | DSU Reversal Transactions                        |
| FAST GIWL         | FAST GIWL Transactions                           |
| GAACG             | Great American Annuity Transactions              |
| Health Riders     | 365 and Member Preferred Rider Production        |
| Life Riders       | Direct Mail Term Rider Production                |
| ManualAdj         | Manual Adjustment Transactions                   |
| MLTA Upsell       | Member Loyalty Upsell Production entered in bulk |
| PMIC              | Physicians Mutual (3rd Party) Products           |
| Securian IUL      | Securian (3rd Party) Indexed Universal Life      |

| Error Description                             | Logic and Meaning                               |
|-----------------------------------------------|-------------------------------------------------|
| Incorrect Lead Source Code                    | Where lead_source is not '00' and transaction_date has been since '2021-01-01' and plan_code is 'G20R') |
| Null Transaction Date                         | Where transaction_date is null                  |
| Null Transaction Source                       | Where transaction_source is null                |
| Null Policy Number                            | Where policy_number is null                     |
| Null Club Code                                | Where club_code is null                         |
| Null Company                                  | Where company is null                           |
| Null Agent ID                                 | Where agent_id is null                          |
| Null Primary Agent ID                         | Where primary_agent_id is null                  |
| Null Plan Code                                | Where plan_code is null                         |
| Null Issue State                              | Where issue_state is null                       |
| Plan Code Does Not Exist in System of Record  | Where plan_code does not exist in staging_mde.product_hierarchy |


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per transaction + error_description |            
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain
A production **transaction** is semi-unique per 
[policy number](#!/exposure/docs.business_glossary.glossary#policy_number), 
[transaction date](#!/model/model.aaa_life_data_platform.staging_bi_premium_production#transaction_date), 
[transaction source](#!/model/model.aaa_life_data_platform.staging_bi_premium_production#transaction_source), 
[plan code](#!/model/model.aaa_life_data_platform.staging_bi_premium_production#plan_code), 
[company](#!/exposure/docs.business_glossary.glossary#company), 
[club code](#!/exposure/docs.business_glossary.glossary#club_code), 
[distribution channel](#!/exposure/docs.business_glossary.glossary#distribution_channel_description),
[sub distribution channel](#!/exposure/docs.business_glossary.glossary#sub_distribution_channel), 
and [agent number](#!/model/model.aaa_life_data_platform.mid_bi_production_transactions#agent_id), 
but similar or identical transactions can and do exist.

[**Error Description**](#!/model/model.aaa_life_data_platform.mid_bi_premium_production#error_description):
A short phrase created in the code for this table that states which field the error is in 
for the transaction. 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
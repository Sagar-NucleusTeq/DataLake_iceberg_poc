{% docs staging_bi_premium_production %}
{% raw %}

# Production Premium Transactions

![last updated](assets/update_badges/staging_bi_premium_production.svg)

This table includes transactions (listed below) of submits/settled premium and counts
applied to a AAAL policy by transaction date, distchannel, subdistchannel, plancode,
company, clubcode and agents.

NOTE: Settled dates that come in as '1900-01-01' are manually changed to NULLs in this table.

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


### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | One record per production transaction.  A production transaction is semi-unique per policy number, transaction date, transaction source, plan code, company, club code, distribution channel, sub distribution channel, and agent number, but similar or identical transactions can and do exist. |            
| Security Classification: | Confidential |
| Usage Requirement:       | PII |



### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
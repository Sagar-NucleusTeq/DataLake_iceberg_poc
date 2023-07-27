{% docs direct_mail_campaign_performance %}
{% raw %}


# Direct Mail Performance Dashboard
This dashboard shows the performance of the Direct Mail channel from campaigns run by AAA Life
in 2021 and later. The documentation for the underlying table that creates this dashboard can be 
found in the [Direct Mail Campaign Performance Snapshot](#!/snapshot/snapshot.aaa_life_data_platform.direct_mail_campaign_performance_history)
and in the [Direct Mail Performance Sales Plan Table](#!/model/model.aaa_life_data_platform.gold_sales_plan_direct_mail_performance).

The Direct Mail Campaign Performance Snapshot is a table showing all of the existing and 
historical records from the 
[Direct Mail Campaign Performance Table](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance).
This allows us to filter on an 'as of' date, for example, we are able to answer the question, 
"What did this report look like as of June 25th, 2022?"

## Section 1: Production
| **Metric** | **Definition** |
| ---------- | -------------- |
| **Actual Selected** | Total messages selected for mailing through the campaign selection process, less any depromoted messages. |
| **Forecasted Production** | The forecasted amount of [production](#!/model/model.aaa_life_data_platform.gold_production_by_policy#settled_production) from settled policies expected to be received by AAA Life by 365 days after the campaign begins, based on settled production received so far and historical campaign result trends. |
| **Forecasted Production Per Piece** | The amount of *Forecasted Settled Production* per number of *Actual Selected* messages | 
| **Net Volume** | Expected mail volume sent as per the annual sales plan. Provides a basis of comparison for actual_sent volumes. |
| **Production** | The amount of actual [production](#!/model/model.aaa_life_data_platform.gold_production_by_policy#settled_production) received for each campaign at the time of the report run. |
| **Sales Plan Production Per Piece** | The amount of actual *Production* per *Net Volume* of messages sent. |

## Section 2: Net Response Rate (NRR) and Average Production
| **Metric** | **Definition** |
| ---------- | -------------- |
| **Net Response Rate** |  |
| **Sales Plan Net Response Rate** |  |
| **Net Response Rate % Difference** |  |
| **Average Production** |  |
| **Sales Plan Average Production** |  |
| **Average Production % Difference** |  |

### Definitions
| **Dimension** | **Default** | **Definition** |
|:-------------:|:-----------:| -------------- |
| **Campaign Number** | All | A number that represents the ordinal position of the campaign in a given campaign _finance_ year. Resets annually. For example, the sixth campaign launched in a given campaign _finance_ year has a campaign number of 6. |
| **Campaign Year**   | All | The year in which a campaign is launched. Generally aligns with the calendar year of a campaign's drop date. A notable exception is the first direct mail campaign of a given year, which usually launches in late December of the prior year. |
| **Tactic**          | All | The audience for a specific campaign, i.e., Acquisition, Broadmarket, Cross-Sell |
| **Reporting Group** | All | Reporting group listing is similar to companies but it is more aligned with the group that owns the membership base and is less tied to the life insurance reporting of results and revenue. Reporting Groups in this report are: ACA, ACE, ACG, MWG, Indep NY, Indep Non NY |

### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/dashboards/e6a01120-edbb-4915-836e-9f9040841cfa) or [here](https://us-east-1.quicksight.aws.amazon.com/sn/start/dashboards).
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.
##### The `View this exposure` button at the top right of this page takes you to the dashboard page.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |
| Filters:                 | Campaign Year, Campaign Number, Tactic, and Reporting Group |
| Refresh Cadence:         | Report shows live table data, underlying table refreshes approximately every hour |
| Defaults:                | None |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
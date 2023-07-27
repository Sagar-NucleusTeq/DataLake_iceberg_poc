{% docs io_production_transactions_by_day %}
{% raw %}

# IO (Integrated Offer) Production Transactions by Day
This dashboard shows the policy activity for any Integrated Offer products by day for a given date range.  Metrics 
presented include submitted and settled policy counts and production amounts.

**Production** - [production](#!/exposure/docs.business_glossary.glossary#production)


### Definitions

| **Dimension** | **Definition** |
| ------ | ---------- |
| **Product** | The type of Integrated Offer product.  The [Plan Codes](#!/exposure/docs.business_glossary.glossary#plan_code) for each Integrated Offer product are used to segment performance by product.|
|**Transaction Date**| The date on which a [production](#!/exposure/docs.business_glossary.glossary#production) transaction was recorded into the policy administration system.| 



| **Metric** | **Definition** |
| ------ | ---------- |
| **Submit Count** | The number of applications this transaction contributes to submitted application counts on the selected Transaction Date|
| **Submit $** | The amount of production a transaction contributes to submitted policies on the selected Transaction Date|
| **Settle Count** | The number of policies a transaction contributes to settled policy counts on the selected Transaction Date|
| **Settle $** | The amount of production a transaction contributes to settled policies on the selected Transaction Date|

### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/dashboards/f76922bd-214f-4830-9b8a-8b50b59dc694) or [here](https://us-east-1.quicksight.aws.amazon.com/sn/start/dashboards).
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.
##### The `View this exposure` button at the top right of this page takes you to the dashboard page.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |
| Grain:                   | 1 row per day |
| Filters:                 | Start and End dates |
| Defaults:                | Date range defaults to the first day of the current month through the last day of the current month |
| Refresh Cadence:         | Report shows live table data, underlying table refreshes every hour |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs daily_sales_production %}
{% raw %}

# Daily Sales Production
This dashboard report is pulled for on a selected Report Date which displays overall submitted counts, submitted production, settled counts, settled production 
and estimated budget splits by response_channel, company, club_code and plan_code. Data for this report is sourced from Life Plus and FAST. 

Report expands to show company level splits when clicked on the channel. 

**Production** - [production](#!/exposure/docs.business_glossary.glossary#production) 

### Parameter 
**Report Date** |Report Date is based on Date of the transaction. This is the transaction posted date on a policy submits, settled counts/production/premium/reversals by response channel, plancode, company, clubcode and by agents.|


There are three main sections in the Daily Sales Production. They are
all spelled out below in bold with descriptions of each.

1. **Section 1** - This dashboard reports on the overall KPIs and graphs representing the comparisons on the Submitted,
Settled production numbers with Budget comparisons posting for the current date (selected Report Date), month to date, 
year to date and prior year to date.

2. **Section 2** - All metadata is presented as it exists in the source systems with no modifications, with the exceptions of 
(1) Club-to-Company aggregations, (2) PlanCode-to-Product aggregations, and (3) LeadSourceCode-to-Channel aggregations. 
"UNDEFINED" or "null" company groups in reporting indicate that either (A) data is missing or incorrect in a source system 
(this includes incorrect club codes), and should be corrected there, or (B) a club code no longer exists as of 6/1/2021 and 
its previous company ownership is unknown (e.g. clubs 012, 044, 078, 112, 120, 157, 242, 269, 602, 999, AA5, AAD, AAU), or (C) 
the transaction is attributed to one of the club codes {178, 201, or 261}, whose ownership is unknown.

3. **Section 3** - All metadata is presented as it exists in the source systems with no modifications, 
with the exceptions of (1) Club-to-Company aggregations, (2) PlanCode-to-Product aggregations, and 
(3) LeadSourceCode-to-Channel aggregations. "UNDEFINED" or "null" product groups in reporting indicate that data 
is missing or incorrect in a source system (this includes incorrect plan codes), and should be corrected there.

### Definitions

| **Dimension** | **Definition** |
| ------ | ---------- |
| **Channel/Response Channel** | Data for this report is sourced from Life Plus and FAST. All metadata is presented as it exists in the source systems with no modifications, with the exceptions of (1) Club-to-Company aggregations, (2) PlanCode-to-Product aggregations, and (3) LeadSourceCode-to-Channel aggregations.|
| **Product** | Data for this report is sourced from Life Plus and FAST. All metadata is presented as it exists in the source systems with no modifications, with the exceptions of (1) Club-to-Company aggregations, (2) PlanCode-to-Product aggregations, and (3) LeadSourceCode-to-Channel aggregations.  "UNDEFINED" or "null" product groups in reporting indicate that data is missing or incorrect in a source system (this includes incorrect plan codes), and should be corrected there.|
| **Company** | Data for this report is sourced from Life Plus and FAST.  All metadata is presented as it exists in the source systems with no modifications, with the exceptions of (1) Club-to-Company aggregations, (2) PlanCode-to-Product aggregations, and (3) LeadSourceCode-to-Channel aggregations.  "UNDEFINED" or "null" company groups in reporting indicate that either (A) data is missing or incorrect in a source system (this includes incorrect club codes), and should be corrected there, or (B) a club code no longer exists as of 6/1/2021 and its previous company ownership is unknown (e.g. clubs 012, 044, 078, 112, 120, 157, 242, 269, 602, 999, AA5, AAD, AAU), or (C) the transaction is attributed to one of the club codes {178, 201, or 261}, whose ownership is unknown.|


| **Metric** | **Definition** |
| ------ | ---------- |
| **Today Settled Count** | The number of policies a transaction contributes to settled policy counts on the selected Report Date|
| **Today Settled Production** | The amount of production a transaction contributes to settled policies on the selected Report Date|
| **Today Submitted Count** | The number of applications this transaction contributes to submitted application counts on the selected Report Date|
| **Today Submitted Production** | The amount of production a transaction contributes to submitted policies on the selected Report Date|
| **MTD Settled Count** | This is month to date count of policies a transaction contributes to settled policy counts based on the selected Report Date|
| **MTD Settled Production** | This is month to date production a transaction contributes to settled policies based on the selected Report Date |
| **MTD Budget Settled Production** | This is month to date estimated Budget on total number of settled policies by plan code, club_code and response_channel based on the selected Report Date |
| **MTD Submitted Production Goal** | This is month to date percentage of budget on the actuals to estimated submitted budget based on the selected Report Date |
| **MTD Submitted Count** | This is month to date count of policies a transaction contributes to submitted policy counts based on the selected Report Date |
| **MTD Submitted Production** | This is month to date production a transaction contributes to submitted policies based on the selected Report Date |
| **YTD Settled Count** | This is year to date count of policies a transaction contributes to settled policy counts based on the selected Report Date |
| **YTD Settled Production** | This is year to date production a transaction contributes to settled policies based on the selected Report Date |
| **YTD Budget Settled Production** | This is year to date estimated Budget on total number of settled policies by plan code, club_code and response_channel based on the selected Report Date|
| **YTD Submitted Production Goal** | This is year to date percentage of budget on the actuals to estimated settled budget based on the selected Report Date |
| **YTD Submitted Count** | This is year to date count of policies a transaction contributes to submitted policy counts based on the selected Report Date |
| **YTD Submitted Production** | This is year to date production a transaction contributes to submitted policies based on the selected Report Date |
| **YTD Submits Minus Settles COUNT** | This is year to date difference in count of policies a transaction contributes to submitted policy counts to settled policy counts based on the selected Report Date |
| **YTD Submits Minus Settles PRODUCTION** | This is year to date difference in production a transaction contributes to submitted policies to settled policy counts based on the selected Report Date |
| **PriorYTD Settled COUNT** | This is prior year to date count of policies a transaction contributes to settled policy counts based on the selected Report Date |
| **PriorYTD Settled PRODUCTION** | This is prior year to date production a transaction contributes to settled policies based on the selected Report Date |


### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/dashboards/f76922bd-214f-4830-9b8a-8b50b59dc694) or [here](https://us-east-1.quicksight.aws.amazon.com/sn/start/dashboards).
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.
##### The `View this exposure` button at the top right of this page takes you to the dashboard page.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |
| Filters                  | Report Date |
| Refresh Cadence          | Report shows data till selected report date, underlying table refreshes daily once. |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs premium_production_errors %}
{% raw %}

# Premium Production Errors Dashboard
This dashboard contains information on a number of errors found in the
[premium production BI staging table](#!/model/model.aaa_life_data_platform.staging_bi_premium_production).
Namely, there are summary sections that give information about the number of errors by error
description. Then there is a 'detail' section that shows each row in full with the error 
description in order to identify why that row is included in the
[errors model](#!/model/model.aaa_life_data_platform.business_rule_violation_monitoring_premium_production_errors). 

### Section 1: Premium Production Error Count by Error Description (Top)
This section shows the count of errors in the premium production table in both graph form and 
table form. The graph side shows the count of errors in each category as a bar while the count 
side shows the count as a number.

### Section 2: Premium Production Error Detail (Bottom)
This section shows the full rows of the [premium production BI staging table](#!/model/model.aaa_life_data_platform.staging_bi_premium_production)
with data errors, along with the type of error (in the 'Error Description' column at the far
right side).

### Definitions
| **Error Description**                             | **Definition** |
| ---------------------                             | -------------- |
| **Null Primary Agent ID**                         | A row with no Primary Agent ID |
| **Incorrect Lead Source Code**                    | (lead_source != '00' AND transaction_date >= '2021-01-01' AND plan_code = 'G20R') |
| **Null Agent ID**                                 | A row with no Agent ID |
| **Null Plan Code**                                | A row with no Plan Code |
| **Plan Code Does Not Exist in System of Record**  | A row where the plan code does not exist in [staging_mde_product_hierarchy](#!/model/model.aaa_life_data_platform.staging_mde_product_hierarchy) |
| **Null Transaction Date**                         | A row with no Transaction Date |
| **Null Transaction Source**                       | A row with no Transaction Source |
| **Null Policy Number**                            | A row with no Policy Number |
| **Null Club Code**                                | A row with no Club Code |
| **Null Company**                                  | A row with no Company |
| **Null Issue State**                              | A row with no State of Issue |

### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/dashboards/359fb408-b64c-4536-b8ae-5a379a44f0b0).
##### OR The `View this exposure` button at the top right of this page takes you to the dashboard page
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |
| Filters:                 | None |
| Refresh Cadence:         | Report shows live table data, underlying table refreshes approximately every hour |
| Defaults:                | None |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
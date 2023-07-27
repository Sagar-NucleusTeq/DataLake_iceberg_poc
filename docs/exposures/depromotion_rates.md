{% docs depromotion_rates %}
{% raw %}

# Depromotion Rates Dashboard
This dashboard shows the depromotion rates for each direct mail campaign in a bar graph since
C1-2021. **Depromotion rate** refers to the difference between the direct mail
[Actual Selected](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#actual_selected)
count of mail pieces and the 
[Actual Printed](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#actual_printed)
count of mail pieces and is represented a percent by taking this difference and dividing it by the total 
[Actual Selected](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#actual_selected).

More information can be found on depromotion rate in confluence
[here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11012341761/On+Depromotion+Rate),
[here](https://aaalife-data.atlassian.net/wiki/spaces/DMCP/pages/11011981389/Depromotion+Rate),
[here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/10926129218/About+Depromotion+Rate),
and [here](https://aaalife-data.atlassian.net/wiki/spaces/TM/pages/7927431321/Depromotion+Rate).
The documentation for the underlying table that creates this dashboard can be found 
[here](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance).

## Tab 1: Results
| **Metric** | **Calculation** |
| ---------- | -------------- |
| **Depromotion Rate** | <img src="https://latex.codecogs.com/svg.image?\bg_white&space;\frac{Actual&space;Selected&space;-&space;Actual&space;Printed}{Actual&space;Selected}&space;" title="\bg_white \frac{Actual Selected - Actual Printed}{Actual Selected} " /> |

### Definitions
| **Dimension** | **Defaults** | **Definition** |
| ------------- | ------------ | -------------- |
| **Campaign Number** | N/A  | A number that represents the ordinal position of the campaign in a given campaign _finance_ year. Resets annually. For example, the sixth campaign launched in a given campaign _finance_ year has a campaign number of 6. |
| **Campaign Year**   | N/A  | The year in which a campaign is launched. Generally aligns with the calendar year of a campaign's drop date. A notable exception is the first direct mail campaign of a given year, which usually launches in late December of the prior year. |
| **Tactic**          | All  | The audience for a specific campaign, i.e., Acquisition, Broadmarket, Cross-Sell |
| **Product**         | All  | The name of the broad category of product being marketed in a direct mail message, i.e. Term, GIWL, Accident |
| **Reporting Group** | All  | Reporting group listing is similar to companies but it is more aligned with the group that owns the membership base and is less tied to the life insurance reporting of results and revenue. Reporting Groups in this report are: ACA, ACE, ACG, MWG, Indep NY, Indep Non NY |

### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/dashboards/6936947e-f5f7-4ee0-80ee-8308b0f29433) or [here](https://us-east-1.quicksight.aws.amazon.com/sn/start/dashboards).
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.
##### The `View this exposure` button at the top right of this page takes you to the dashboard page.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |
| Filters:                 | Tactic, Product, and DSSE Reporting Group |
| Refresh Cadence:         | Report shows live table data, underlying table refreshes approximately every hour |
| Defaults:                | None |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
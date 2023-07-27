{% docs outbound_mail_dashboard %}
{% raw %}

# Outbound Mail Dashboard
Click between the tabs at the top to view the different metrics to better understand
how the outbound mail is performing, as well as a 'Definitions' tab with information about the
metrics. Click between the 'drill-down' tabs (**Selected: Actual vs Expected**, **Mailed: Actual vs
Expected** and **Diagnostic: Mail Delivery**) to see a breakdown by company.

This dashboard reports on the overall health of the outgoing mail for any given campaign. Select
the desired campaign from the drop down box labeled 'Select a Campaign'. The check mark at the top
indicates if the outgoing mail for the campaign is in good standing, at risk, or falling short of
required volumes or deadlines. See the definitions below to understand more about how this is
determined.

There are four main sections/tabs in the Outbound Mail Dashboard. They are
all spelled out below in bold with descriptions of each.

1. **Overall Mail Health** - This dashboard reports on the overall health
of the outgoing mail for any given direct mail campaign. It shows the
percent of mail that was actually selected vs expected to be selected,
the percent of mail that was actually mailed vs expected to be mailed,
the percent of mail that was delivered on time, and the percent of mail
that was delivered at all.

2. **Selected: Actual vs Expected** and **Mailed: Actual vs Expected** - The Actual
to Expected Diagnostic comparison identifies how our actual volumes
compare to our expectations in the sales plan. There are two metric comparisons,
“selected” which compares our selected volumes which come from the campaign workflows
directly and are sent to the printer; and “mailed” which compares out the door mail
volumes which are measured against the net volumes in the sales plan

3. **Diagnostic: Mail Delivery** - The Mail Delivery Diagnostic tab seeks to
speak to the health of the mail at a more granular level than the Overall
Health tab. This tab compares deliveries and on-time deliveries to promotions
that entered the mail stream.

### Definitions

| **Dimension** | **Definition** |
| ------ | ---------- |
| **Reporting Group** | Reporting group listing is similar to companies but it is more aligned with the group that owns the membership base and is less tied to the life insurance reporting of results and revenue. Reporting Groups in this report are:ACA, ACE, ACG, MWG, Indep NY, Indep Non NY|
| **Tactic** | The product and audience grouping for a specific campaign |


| **Metric** | **Definition** |
| ------ | ---------- |
| **Overall Mail Health** | Check mark indicates ‘healthy mail’. Built off a score that shows 1 for healthy, 0 for unhealthy. |
| **Healthy Mail** | 1. Is sent on time 2. Is delivered on time OR is currently in the process of being delivered and is not yet late |
| **Selected: Actual vs. Expected** | Percentage of items from selected from campaign were selected and sent to the vendor compared to how many were in the budget for that campaign |
| **Mailed: Actual vs. Expected** | Percentage of mail pieces were sent for that campaign compared to how many were in the budget. Sent is defined by mail pieces entering mail stream, not what vendors define as sent. |
| **Mailed On Time** | Percentage of mail pieces were sent on time |
| **Delivered On Time** | Percentage of mail pieces were delivered on time by USPS. Uses USPS definition of "on time" |
| **Delivered Overall** | The share of sent mail pieces that were delivered |

### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/dashboards/892cacde-5375-4da3-be1d-14f55bc83816) or [here](https://us-east-1.quicksight.aws.amazon.com/sn/start/dashboards).
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.
##### The `View this exposure` button at the top right of this page takes you to the dashboard page.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Anonymized |
| Filters                  | Campaign and Year e.g. C1 2021 |
| Refresh Cadence          | Report shows live table data, underlying table refreshes every hour |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
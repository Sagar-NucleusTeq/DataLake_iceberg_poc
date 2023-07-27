{% docs trigger_program_dashboard %}
{% raw %}


# Trigger Program Dashboard
This dashboard shows results from various different trigger programs AAA Life runs. Shows the funnel
metrics along with some demographic response rates.

Filters that can be applied are specific message drop date range, trigger program, marketing channel,
company, and whether the program was in a trial period or not (defaulted to false).

## Section 1: Summary
### KPIs

| **Metric**                       | **Definition**                                                                                                                                  |
|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| **Total Message Volume**        | Total messages sent within the given filters.                                                                                                   |
| **Number of Applications**       | Number of applications submitted from the messages sent.                                                                                        |
| **Number of Settled Policies**   | Number of settled policies from the total messages sent.                                                                                        | 
| **Total Production**             | Total sum of production of the settled policies from the messages sent.                                                                         |
| **Number of Individuals Messaged** | Number of individuals messaged at least once for the given trigger program. Trigger programs can send multiple messages to the same individual. |
| **Gross Response Rate (GRR)**    | Percent of messages that resultes in a submitted application.                                                                                   |
| **Net Response Rate (NRR)**      | Percent of messages that resultes in a settled policy.                                                                                          |   
| **Settled Policies per Application %**| Percent of submitted applications that resulted in a settled policy.                                                                            |
|**Average Production**| Average production amount for the group of settled policies resulting from the trigger program.                                                 |

### Graphs
#### Drop Week Messages and their Production:
Bars represent the total number of messages sent during drop week. Line
represents the total sum of production that resulted from the messages sent drop week.

#### Production by Touch Number:
Total sum of production that resulted from the messages of the specific touch during the trigger program. For example, GIWL Term Decline
has five touches, 2 direct mail pieces and 3 email messages. 

#### Completion Curve:
Distribution of when to expect production to come in after a message as been sent out. 


## Section 2: Demographics
Shows the response rate (% of settled policies) of specific demographics:
Gender, Age, Individual Milliman score, and the household milliman score buckets.

### Section 3: Table View
This is a table view from the "Drop Week Messages and their Production" graph from Section 1: Summary.
Displays the total messages sent, applications submitted, policies settled, and settled policy production amount.

### Dashboard Access
##### If you have already accessed this dashboard today you can likely access the dashboard directly [here](https://us-east-1.quicksight.aws.amazon.com/sn/accounts/450166719139/dashboards/9d7acac5-74ea-41d7-86b2-312df0f31bbb?directory_alias=aaalife-data-prd) 
##### See [Single Sign On (SSO) QuickSight Access for DSSE](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/10652483611/SSO+Quick+Sight+Access+for+DSSE) or [AWS Quick Sight Access](https://aaalife-data.atlassian.net/wiki/spaces/DPF/pages/823885867/AWS+Quick+Sight+Access+for+DSSE) documentation to access this dashboard.


### Security and Usage Information
|     |                                                      |
| --- |------------------------------------------------------|
| Security Classification: | Internal                                             |
| Usage Requirement:       | Anonymized                                           |
| Filters:                 | Tactic, Drop Date, Marketing Channel, Company, Pilot |
| Refresh Cadence:         | Data is refreshed every morning at  7AM est          |
| Defaults:                | Pilot = false                                        |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
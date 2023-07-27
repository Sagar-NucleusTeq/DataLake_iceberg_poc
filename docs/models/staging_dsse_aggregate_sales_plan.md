{% docs staging_dsse_aggregate_sales_plan %}
{% raw %}

# Aggregate Sales Plan

![last updated](assets/update_badges/staging_dsse_aggregate_sales_plan.svg)

This table contains the records that comprise the annual sales plan. The annual sales plan is
developed by the DSSE team in cooperation with with our Marketing channel partners and is used
by AAA Life to develop expectations for the company’s financial performance for the following
year. This forecast is used to develop budgets, drive marketing decisions for new products,
and finalize commitments from clubs regarding our marketing strategy.

Each record can be understood as holding the expected production values, number of 
[submitted applications](#!/exposure/docs.business_glossary.glossary#submitted_count)
, number of [settled policies](#!/exposure/docs.business_glossary.glossary#settled_count)
, and the costs required to achieve these results in a
given month and year by club, lead source, agent type, and campaign (for Direct Mail).

For more information see [Sales Plan](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11012571144/Sales+Plan).

Note: An artifact in the ingestion process resulted in populating `agent_type` with 
"None" - formatted as a string - in several records. This staging table replaces those 
values with `NULL` values.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row for every campaign_year + campaign_number + agent_licensing_type + club_code + lead_source + product_line + response_channel_category + event_year + event_month_number + sales_plan_version_number + sales_plan_year |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
The above 11 columns are needed for uniqueness in this table. 
See column descriptions below for each piece of the grain description.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
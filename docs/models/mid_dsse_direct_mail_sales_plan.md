{% docs mid_dsse_direct_mail_sales_plan %}
{% raw %}

# Sales Plan for Direct Mail

![last updated](assets/update_badges/mid_dsse_direct_mail_sales_plan.svg)

A rollup table for the [sales plan](#!/model/model.aaa_life_data_platform.staging_dsse_sales_plan)
with some re-naming in tactic and product fields for consistency with the
[direct mail campaign performance table](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance).
These tables are meant to be used in the Direct Mail Performance Dashboard, but may be
used for other purposes in the future, as well.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per campaign_year + campaign_number + club_code + tactic_group + product_name |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Grain Description
**Campaign Year**
See [Campaign Year](#!/exposure/docs.business_glossary#campaign) for definition.

**Campaign Number**
See [Campaign Number](#!/exposure/docs.business_glossary#campaign) for definition.

**Club Code**
See [Club Code](#!/exposure/docs.business_glossary.glossary#club_code) for definition.

**State**
The US state to which marketing materials were sent as part of a given campaign.

**Tactic Group**
A broad way to group tactic. This field is related to the way potential purchasers are targeted
and is calculated using `marketing_sub_channel` and `tactic_type_name`.

| Valid Values |
|--------------|
| Acquisition  |
| Cross-Sell   |
| BroadMarket  |

**Product Name**
The name of the broad category of product that is used in estimations for sales plan.

|Valid values|
|------------|
|   TERM     |
|   GIWL     |
|   MLTA     |

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
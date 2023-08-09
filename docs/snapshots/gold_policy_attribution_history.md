{% docs gold_policy_attribution_history %}
{% raw %}

# Policy Attribution History Snapshot

![last updated](assets/update_badges/gold_policy_attribution_history.svg)

Consumption table containing the *history* of all levels of attribution information. 
This is the history of the `gold.policy_attribution` table.

The `gold.policy_attribution` table contains the data for the campaign attribution approach
for direct mail campaign material represents what the business has defined as
last-touch attribution. However, there is a hierarchy to touches. If an
individual/household/address matches on finder number or phone number, this is the
record attributed to, regardless if there was a more recent mail. As such, it is not
technically true last-touch.

Campaign attribution for all marketing channels except direct mail is currently marked
as "TO_BE_DECIDED" until logic is incorporated.

Logic for attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 record per policy |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

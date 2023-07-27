{% docs touch_attribution %}
{% raw %}

# Touch Attribution

Indicator of specific marketing touch the attribution
information applies to. A single policy can have many touches by AAAL. 
The campaign_attribution column in the direct mail last touch framework 
(all models contained in the mid_attribution schema as well as the gold.attribution table)
is roughly analogous to touch_attribution. However, in the last touch framework,
a policy was only attributed to one marketing attempt and thus one campaign.
In a multi-touch framework there will be many. This column is more high level and
touch_id's, campaign_code/keycodes, broadlog_ids etc will be necessary to tease
out specific touch information.

For direct mail campaigns, this value is DM_MATERIAL, for email campaigns the value is
EMAIL_MATERIAL. Future attribution builds will expand available values.

Logic for this level of attribution can be found here:
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Deidentified |

{% endraw %}
{% enddocs %}
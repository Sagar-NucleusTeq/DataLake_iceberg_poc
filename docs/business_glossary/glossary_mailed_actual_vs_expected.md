{% docs glossary_mailed_actual_vs_expected %}
{% raw %}

<a name="mailed_actual_vs_expected"></a>
# Mailed: Actual vs. Expected

### Area of the Business
[Direct Mail](#!/exposure/docs.business_glossary.glossary#direct_mail), 
more specifically,
[Outbound Mail](#!/exposure/docs.business_glossary.glossary#outbound_mail)

### Definition
Percentage of mail pieces were sent for that campaign compared to how many were in the budget.

[Target Sent](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#target_sent).
[Actual Sent](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#actual_send).

### Calculation
`SUM(actual_sent)/SUM(target_sent)`

### Rules


### Useful Takeaways
Identifies how our actual volumes compare to our expectations in the sales plan. There are two 
metric comparisons, “selected” which compares our selected volumes that come from the campaign 
workflows directly and are sent to the printer, and “mailed” which compares out the door mail 
volumes which are measured against the net volumes in the sales plan.

{% endraw %}
{% enddocs %}
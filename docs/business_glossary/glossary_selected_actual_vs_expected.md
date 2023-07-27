{% docs glossary_selected_actual_vs_expected %}
{% raw %}

<a name="selected_actual_vs_expected"></a>
# Selected: Actual vs. Expected

### Area of the Business
[Direct Mail](#!/exposure/docs.business_glossary.glossary#direct_mail), 
more specifically,
[Outbound Mail](#!/exposure/docs.business_glossary.glossary#outbound_mail)

### Definition
Percentage of items from selected from campaign were selected and sent to the vendor compared 
to how many were in the budget for that campaign.

[Target Selected](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#target_selected).
[Actual Selected](#!/model/model.aaa_life_data_platform.gold_direct_mail_campaign_performance#actual_selected).

### Calculation
`SUM(actual_selected)/SUM(target_selected)`

### Rules


### Useful Takeaways
“Selected” number comes from vendor counts.
Identifies how our actual volumes compare to our expectations in the sales plan. There are two 
metric comparisons, “selected” which compares our selected volumes that come from the campaign 
workflows directly and are sent to the printer, and “mailed” which compares out the door mail 
volumes which are measured against the net volumes in the sales plan.


{% endraw %}
{% enddocs %}
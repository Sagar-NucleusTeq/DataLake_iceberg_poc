{% docs tactic_type %}
{% raw %}

<a name="tactic_type"></a>
# Tactic Type

A broad way to group tactic. This field is related to the way potential purchasers are targeted
and is calculated using `marketing_sub_channel` and `tactic_type_name`.

| Valid Values |
|--------------|
| Acquisition  |
| Cross-Sell   |
| BroadMarket  |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

### Calculation Rules
```
CASE  
    WHEN marketing_sub_channel = 'Mail'  
        AND {{ ref('staging_metadata_metadata' ) }}.tactic_type_name LIKE '%CS%'  
        THEN 'Cross-Sell'  
    WHEN marketing_sub_channel = 'Mail'  
        AND {{ ref('staging_metadata_metadata' ) }}.tactic_type_name LIKE '%Non%'  
        THEN 'BroadMarket'  
    WHEN marketing_sub_channel = 'Mail'  
        AND {{ ref('staging_metadata_metadata' ) }}.tactic_type_name LIKE '%Member%'  
        THEN 'Acquisition'  
    ELSE NULL  
    END                                                               AS tactic_type,
```

{% endraw %}
{% enddocs %}
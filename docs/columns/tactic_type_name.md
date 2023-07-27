{% docs tactic_type_name %}
{% raw %}

<a name="tactic_type_name"></a>
# Tactic Type Name
Name of tactic type, the product/audience grouping. Multiple campaigns can have the same
tactic_name, but not tactic_id. 
For Direct Mail, this field is always the same as tactic_name with three exceptions: 
1. Individual Direct Term Non-Member ACE had a one-off Salvage file used for one single campaign
(and this shows up in only one row in the metadata table).
2. GIWL Non-Member' had a one-off ACE Salvage file used for one single campaign
(and this shows up in only one row in the metadata table).
3. tactic_name: Direct Mail Member Term Cross-Sell (D TERMCS): with the dash (-) 
tactic_type_name: Direct Mail Member Term Cross Sell (D TERMCS): without the dash (-)


See [metadata structure and hierarchy](#!/model/model.aaa_life_data_platform.staging_metadata_metadata)
documentation for a better understanding of this field.

| Example values                                            |
|-----------------------------------------------------------|
| GIWL Cross Sell                                           |
| GIWL Cross Sell (GIWLCS)                                  |
| TT Partials                                               |
| Direct Mail Member Term Lapsed Non-Complete (D TERMLCS)   |
| GIWL Lapsed Non-Complete (GIWLLCS)                        |
| 2021 - Kit Request - MLTA                                 |
| MLTA Member                                               |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
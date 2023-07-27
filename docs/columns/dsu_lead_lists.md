{% docs aaa_life_campaign_code %}
{% raw %}

<a name="aaa_life_campaign_code"></a>
# AAA Life Campaign Code
Dynamically generated campaign code used in the DSU Lead List output file.

```
CASE
    WHEN DATEPART(MONTH, GETDATE())+1 = 13
      THEN 'J'												--Month code
    WHEN DATEPART(MONTH, GETDATE())+1 = 2
      THEN 'F'
    WHEN DATEPART(MONTH, GETDATE())+1 = 3
      THEN 'M'
    WHEN DATEPART(MONTH, GETDATE())+1 = 4
      THEN 'A'
    WHEN DATEPART(MONTH, GETDATE())+1 = 5
      THEN 'Y'
    WHEN DATEPART(MONTH, GETDATE())+1 = 6
      THEN 'U'
    WHEN DATEPART(MONTH, GETDATE())+1 = 7
      THEN 'L'
    WHEN DATEPART(MONTH, GETDATE())+1 = 8
      THEN 'G'
    WHEN DATEPART(MONTH, GETDATE())+1 = 9
      THEN 'S'
    WHEN DATEPART(MONTH, GETDATE())+1 = 10
      THEN 'C'
    WHEN DATEPART(MONTH, GETDATE())+1 = 11
      THEN 'N'
    WHEN DATEPART(MONTH, GETDATE())+1 = 12
      THEN 'D'
END
|| 'T'																					--Product code (all are Term)
|| '999'																					--999 club code to signify AAA Life is running the campaign
||CASE
    WHEN contract_status IN (
                      'Lapsed'
                      ,'Max Loan Surrender'
                      ,'Surrendered'
                      ,'Suspend - Not Active'
                      ,'Terminated'
                      ,'Cancelled'
                      )
        THEN '01'
    ELSE '02'
END
|| 'C' 
```
### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}

{% docs lead_owner %}
{% raw %}

<a name="lead_owner"></a>
# Lead Owner
Hard coded field that is included in the DSU Leadlist output

Should be hardcoded to "00GC0000001u7Op"

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}

{% docs segment %}
{% raw %}

<a name="segment"></a>
# Segment
This column is included in the DSU Leadlist output files, but we currently do not have this data
in the Data Platform, so this column is set to NULL

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | Sensitive |

{% endraw %}
{% enddocs %}
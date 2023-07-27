{% docs lead_list_notes %}
{% raw %}

<a name="lead_list_notes"></a>
# Lead List Notes
This column is a large text field with various information about this lead. It was designed to be
ingested into Salesforce by the DSU teams and will appear in the notes section for the contact.

The following fields are contained in these notes:

* Month: Set to next month (current +1)
  * Lead Type: Based on selection criteria, a lead type is assigned
    * Anniversary Leads:
  ```
    CASE
      WHEN product_line NOT IN ('Term', 'Direct Mail Term')
        THEN 'Other Anniversaries'
      WHEN product_line = 'Term'
        AND sub_product_line NOT IN ('Direct Mail Term', 'Individual Direct Term')
        THEN 'Agent-Sold Term Period Ending'
      WHEN age_at_next_renewal_date > 60
        THEN 'DM Term Conversion'
      WHEN RIGHT(age_at_next_renewal_date,1) IN (0,5)
        THEN 'DM Term Rate Increase'
      ELSE 'DM Unknown'
    END
    ```

  * Lapses and Withdrawals:
    ```
      CASE
        WHEN contract_status IN (
                                'Lapsed'
                                ,'Max Loan Surrender'
                                ,'Surrendered'
                                ,'Suspend - Not Active'
                                ,'Terminated'
                                ,'Cancelled'
                                )
          THEN 'DM Term Lapse'
        ELSE 'DM Term Withdrawn'
      END
      ```
* Policy Number
* Face Amount
* Issue Age
* DOB
* Years in Force
* Effective Date
* Policy Status

### Security and Usage Information
|     |              |
| --- |--------------|
| Security Classification: | Confidential |
| Usage Requirement:       | PII          |

{% endraw %}
{% enddocs %}

{{ config(
    alias='policy_search_iceberg_dup_update',
    materialized='incremental',
    incremental_strategy='merge',
    unique_key = ['policy_number'],
    dist='all',
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    partition_by = ['billing_mode','plan_code','gender'],
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}


WITH updated_data AS (
  SELECT
    {{ cleanse_text_field(source('fast', 'policy_search'), 'id') }} AS id,
    CASE
      WHEN {{ cleanse_text_field(source('fast', 'policy_search'), 'policynumber') }} = '123456' THEN '951236'
      ELSE {{ cleanse_text_field(source('fast', 'policy_search'), 'policynumber') }}
    END AS policy_number,
  {{ cleanse_text_field(source('fast','policy_search'),'dtccdisttrxidnum') }} AS dtcc_distribution_transaction_id_number,
  {{ cleanse_text_field(source('fast','policy_search'),'status') }} AS policy_status,
  {{ cleanse_text_field(source('fast','policy_search'),'issuestate') }} AS state_of_issue,
  {{ cleanse_text_field(source('fast','policy_search'),'issuecountry') }} AS issue_country,
  DATE(DATE_FORMAT(appreceiveddate, 'MM/dd/yyyy')) AS application_receive_date,
  DATE(DATE_FORMAT(applicationdate, 'MM/dd/yyyy')) AS application_date,
  {{ cleanse_text_field(source('fast','policy_search'),'qualified') }}
                                                      AS qualified,
  DATE(DATE_FORMAT(rothirainceptiondate, 'MM/dd/yyyy')) AS roth_ira_inception_date,
  {{ cleanse_text_field(source('fast','policy_search'),'prodmodelid') }} AS prod_model_id,
  {{ cleanse_text_field(source('fast','policy_search'),'lob') }} AS line_of_business,
  {{ cleanse_text_field(source('fast','policy_search'),'companyid') }} AS company_id,
  {{ cleanse_text_field(source('fast','policy_search'),'exchangetype') }} AS exchange_type,
  {{ cleanse_text_field(source('fast','policy_search'),'haspendingtrx') }} AS has_pending_transaction,
  DATE(DATE_FORMAT(policyeffdate, 'MM/dd/yyyy')) AS policy_effective_date,
  {{ cleanse_text_field(source('fast','policy_search'),'tamratestind') }} AS tamratestind,
  {{ cleanse_text_field(source('fast','policy_search'),'irc7702test') }} AS irc_7702_test,
  {{ cleanse_text_field(source('fast','policy_search'),'tsa') }} AS tsa,
  {{ cleanse_text_field(source('fast','policy_search'),'commoptiontype') }} AS comm_option_type,
  {{ cleanse_text_field(source('fast','policy_search'),'commintratetype') }} AS comm_int_rate_type,
  {{ cleanse_text_field(source('fast','policy_search'),'fixedindexedmode') }} AS fixed_index_mode,
  moderule AS mode_rule,
  {{ cleanse_text_field(source('fast','policy_search'),'qualifiedcode') }} AS qualified_code,
  {{ cleanse_text_field(source('fast','policy_search'),'originalpolicynumber') }} AS original_policy_number,
  {{ cleanse_text_field(source('fast','policy_search'),'certificatesuffix') }} AS certificate_suffix,
  {{ cleanse_text_field(source('fast','policy_search'),'residentstate') }} AS resident_state,
  {{ cleanse_text_field(source('fast','policy_search'),'exchangeflag') }} AS exchange_flag,
  {{ cleanse_text_field(source('fast','policy_search'),'brokerageaccount') }} AS brokerage_account,
  {{ cleanse_text_field(source('fast','policy_search'),'marketsegment') }} AS market_segment,
  {{ cleanse_text_field(source('fast','policy_search'),'specialmarket') }} AS special_market,
  {{ cleanse_text_field(source('fast','policy_search'),'contributortype') }} AS contributor_type,
  {{ cleanse_text_field(source('fast','policy_search'),'policyswitch') }} AS policy_switch,
  {{ cleanse_text_field(source('fast','policy_search'),'planoption') }} AS plan_option,
  {{ cleanse_text_field(source('fast','policy_search'),'preventmec') }} AS prevent_mec,
  {{ cleanse_text_field(source('fast','policy_search'),'appsigncity') }} AS application_sign_city,
  {{ cleanse_text_field(source('fast','policy_search'),'appsignstate') }} AS application_sign_state,
  {{ cleanse_text_field(source('fast','policy_search'),'membershipnum') }} AS membership_number,
  {{ cleanse_text_field(source('fast','policy_search'),'annuitytype') }} AS annuity_type,
  {{ cleanse_text_field(source('fast','policy_search'),'agentmatching') }} AS agent_matching,
  {{ cleanse_text_field(source('fast','policy_search'),'systematicwithdrawal') }} AS systematic_withdrawal,
  {{ cleanse_text_field(source('fast','policy_search'),'specialrequest') }} AS special_request,
  {{ cleanse_text_field(source('fast','policy_search'),'tia90days') }} AS tia_90_days,
  {{ cleanse_text_field(source('fast','policy_search'),'tia2years') }}
  AS tia_2_years, cashonhand AS cash_on_hand, estimatedtransferamount AS estimated_transfer_amount,
  freelookperiod AS free_look_period,
  {{ cleanse_text_field(source('fast','policy_search'),'apptype') }} AS application_type,
  {{ cleanse_text_field(source('fast','policy_search'),'replacementpercent') }} AS replacement_percent,
  {{ cleanse_text_field(source('fast','policy_search'),'modeofsettlement') }} AS mode_of_settlement,
  exchangebasis1035 AS exchange_basis_1035, exchangeprem1035ext AS exchange_premium_1035_ext,
  exchangeprem1035int AS exchange_premium_1035_int,
  {{ cleanse_text_field(source('fast','policy_search'),'priormecstatus') }} AS prior_mec_status,
  DATE(DATE_FORMAT(ratelockeffectivedate, 'MM/dd/yyyy')) AS rate_lock_effective_date,
  {{ cleanse_text_field(source('fast','policy_search'),'productcusip') }}
                                                      AS product_cusip,
  DATE(DATE_FORMAT(freelookenddate, 'MM/dd/yyyy')) AS free_look_end_date,
  DATE(DATE_FORMAT(freelookstartdate, 'MM/dd/yyyy')) AS free_look_start_date,
  {{ cleanse_text_field(source('fast','policy_search'),'lastprocessedtrxhdrid') }}
                                                      AS last_processed_transaction_header_id,
  {{ cleanse_text_field(source('fast','policy_search'),'replacementtype') }} AS replacement_type,
  {{ cleanse_text_field(source('fast','policy_search'),'keycode') }} AS keycode,
  {{ cleanse_text_field(source('fast','policy_search'),'club') }} AS club_fast_id,
  {{ cleanse_text_field(source('fast','policy_search'),'appcompany') }} AS policy_company,
  {{ cleanse_text_field(source('fast','policy_search'),'applicationnum') }} AS application_number,
  {{ cleanse_text_field(source('fast','policy_search'),'leadsource') }} AS lead_source_fast_id,
  {{ cleanse_text_field(source('fast','policy_search'),'entrysource') }}
  AS entry_source_fast_id,
  CAST(membershipmonth AS INT) AS membership_month,
  CAST(membershipyear AS INT) AS membership_year,
  {{ cleanse_text_field(source('fast','policy_search'),'membershipstatus') }} AS membership_status,
  {{ cleanse_text_field(source('fast','policy_search'),'entitystatus') }} AS entity_status,
  {{ cleanse_text_field(source('fast','policy_search'),'displayfieldname') }} AS display_field_name,
  {{ cleanse_text_field(source('fast','policy_search'),'plancode') }}
  AS plan_code,
  DATE(DATE_FORMAT(settleddate, 'yyyy-MM-dd')) AS settled_date,
  DATE(DATE_FORMAT(issuedate, 'MM/dd/yyyy')) AS issue_date,
  ROUND(CAST(modalpremium AS DECIMAL), 0) AS modal_premium,
  CAST(faceamount AS INTEGER) AS face_amount,
  {{ cleanse_text_field(source('fast','policy_search'),'gender') }}
                                                      AS gender,
  {{ cleanse_text_field(source('fast','policy_search'),'billingmethod') }} AS payment_type,
  {{ cleanse_text_field(source('fast','policy_search'),'billingmode') }}
  AS billing_mode,
  DATE(DATE_FORMAT(terminationdate, 'yyyy-MM-dd')) AS termination_date,
  CAST(issueage AS INTEGER) AS age_at_issue,
  {{ cleanse_text_field(source('fast','policy_search'),'plancodeoriginal') }}
                                                      AS plan_code_original,
  {{ cleanse_text_field(source('fast','policy_search'),'userid') }}
  AS user_id,
  DATE(DATE_FORMAT(paidtodate, 'MM/dd/yyyy HH:mm')) AS paid_to_date,

  CASE
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'NT'
      THEN 'N'
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'PN'
      THEN 'P'
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'SP'
      THEN 'R'
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'TB'
      THEN 'S'
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'PT'
      THEN 'T'
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'RNT'
      THEN 'W' --or X if flat extra only?
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'RTB'
      THEN 'Y' --or Z if flat extra only?
    ELSE NULL
  END                                                 AS riskclass,
  CASE
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'V'
      THEN 0.5
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'E'
      THEN 1.0
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'D'
      THEN 2.0
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'U'
      THEN 3.0
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'S'
      THEN 4.0
    WHEN {{ cleanse_text_field(source('fast','policy_search'),'riskclass') }} = 'P'
      THEN 5.0
  END                                                 AS units_of_insurance,
  timestamp AS time_stamp,
  timestamp AS last_refreshed_at
  FROM {{ source('fast', 'policy_search') }}
)
  
SELECT *
FROM updated_data

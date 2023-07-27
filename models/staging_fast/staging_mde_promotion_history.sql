{{ config(
    alias='promotion_history_iceberg', 
    schema='staging_mde',
    materialized='incremental',
    incremental_strategy='merge',
    unique_key=['broadlog_id'],
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}    

  {% if is_incremental() %}
WITH staging_max_timestamp AS(
    /* What is the latest loaded_at of in the staging table? (to identify if it loaded today) */
  SELECT
    MAX(loaded_at) AS staging_timestamp
  FROM {{this}}

)
  {% endif %}

SELECT
  CAST({{ source('mde', 'promotion_history') }}.indiv_key AS INTEGER)     AS individual_key,
  {{ cleanse_text_field(source('mde','promotion_history'),'address_key') }}
                                                                  AS address_key,
  {{ cleanse_text_field(source('mde','promotion_history'),'email_addr') }}
                                                                  AS email_addr,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'broadlog_id') }} AS BIGINT)
                                                                  AS broadlog_id,
  DATE(DATE_FORMAT({{ source('mde', 'promotion_history') }}.event_date,'yyyy-MM-dd'))       AS event_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'delivery_cd') }}
                                                                  AS delivery_code,
  CAST({{ source('mde', 'promotion_history') }}.depromotion_date AS DATE) AS depromotion_date,
  CAST({{ source('mde', 'promotion_history') }}.delivery_contact_date AS DATE)
                                                                  AS delivery_contact_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'status') }}
                                                                  AS status,
  {{ cleanse_text_field(source('mde','promotion_history'),'status_desc') }}
                                                                  AS status_description,
  {{ cleanse_text_field(source('mde','promotion_history'),'failure_reason_cd') }}
                                                                  AS failure_reason_code,
  {{ cleanse_text_field(source('mde','promotion_history'),'failure_reason_desc') }}
                                                                  AS failure_reason_description,
  {{ cleanse_text_field(source('mde','promotion_history'),'folder') }}
                                                                  AS folder,
  CAST({{ source('mde', 'promotion_history') }}.channel_id AS INT) AS channel_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'failure_text') }}
                                                                  AS failure_text,
  {{ cleanse_text_field(source('mde','promotion_history'),'campaign_label') }}
                                                                  AS campaign_label,
  {{ cleanse_text_field(source('mde','promotion_history'),'campaign_name') }}
                                                                  AS campaign_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'program_name') }}
                                                                  AS program_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'plan_name') }}
                                                                  AS plan_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'delivery_label') }}
                                                                  AS delivery_label,
  {{ cleanse_text_field(source('mde','promotion_history'),'delivery_name') }}
                                                                  AS delivery_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'touchpoint') }}
                                                                  AS touchpoint,
  {{ cleanse_text_field(source('mde','promotion_history'),'campaign_type') }}
                                                                  AS campaign_type,
  {{ cleanse_text_field(source('mde','promotion_history'),'seed') }}
                                                                  AS seed,
  {{ cleanse_text_field(source('mde','promotion_history'),'segment_code') }}
                                                                  AS segment_code,
  {{ cleanse_text_field(source('mde','promotion_history'),'cell_name') }}
                                                                  AS cell_name,
  CAST({{ source('mde', 'promotion_history') }}.program_id AS INT)       AS program_id,
  CAST({{ source('mde', 'promotion_history') }}.initiative_id AS INT)    AS initiative_id,
  CAST({{ source('mde', 'promotion_history') }}.creative_id AS INT)      AS creative_id,
  CAST({{ source('mde', 'promotion_history') }}.tactic_id AS INT)        AS tactic_id,
  CAST({{ source('mde', 'promotion_history') }}.cell_id AS INT)          AS cell_id,
  CAST({{ source('mde', 'promotion_history') }}.variant_id AS INT)       AS variant_id,
  CAST({{ source('mde', 'promotion_history') }}.wave_id AS INT)          AS wave_id,
  CAST({{ source('mde', 'promotion_history') }}.touch_id AS INT)         AS touch_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'lead_src_cd') }}
                                                                  AS lead_source_code,
  CAST({{ source('mde', 'promotion_history') }}.offer_touch_id  AS INT)   AS offer_touch_id,
  CAST({{ source('mde', 'promotion_history') }}.offer_id AS INTEGER)         AS offer_id,
  CASE
  	WHEN {{ cleanse_text_field(source('mde','promotion_history'),'plan_cd') }} IS NULL
  	  AND {{ source('mde', 'promotion_history') }}.tactic_id = 65
  	THEN 'GW17'
  	ELSE {{ cleanse_text_field(source('mde','promotion_history'),'plan_cd') }}
  END	 																	                          AS plan_code,
  CAST({{ source('mde', 'promotion_history') }}.product_id AS INTEGER)       AS product_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'product_name') }}
                                                                  AS product_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'digital_cmp_code') }}
                                                                  AS digital_campaign_code,
  {{ cleanse_text_field(source('mde','promotion_history'),'subject_line') }}
                                                                  AS subject_line,
  {{ cleanse_text_field(source('mde','promotion_history'),'transaction_id') }}
                                                                  AS transaction_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'first_name') }}
                                                                  AS first_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'middle_name') }}
                                                                  AS middle_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'last_name') }}
                                                                  AS last_name,
  {{ cleanse_text_field(source('mde','promotion_history'),'suffix') }}
                                                                  AS suffix,
  {{ cleanse_text_field(source('mde','promotion_history'),'addr_1') }}
                                                                  AS address_line_1,
  {{ cleanse_text_field(source('mde','promotion_history'),'addr_2') }}
                                                                  AS address_line_2,
  {{ cleanse_text_field(source('mde','promotion_history'),'city') }}
                                                                  AS city,
  {{ cleanse_text_field(source('mde','promotion_history'),'state') }}
                                                                  AS state,
  {{ cleanse_text_field(source('mde','promotion_history'),'zip_cd') }}
                                                                  AS zip_code,
  {{ cleanse_text_field(source('mde','promotion_history'),'zip_4') }}
                                                                  AS zip_plus_4,
  CAST({{ source('mde', 'promotion_history') }}.date_of_birth AS DATE)    AS date_of_birth,
  CAST({{ source('mde', 'promotion_history') }}.age AS INTEGER)              AS age,
  {{ cleanse_text_field(source('mde','promotion_history'),'gender') }}
                                                                  AS gender,
  {{ cleanse_text_field(source('mde','promotion_history'),'resident_member_num') }}
                                                                  AS resident_member_number,
  {{ cleanse_text_field(source('mde','promotion_history'),'club_member_customer_id') }}
                                                                  AS club_member_custom_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'resident_club_cd') }}
                                                                  AS resident_club_code,
  CAST({{ source('mde', 'promotion_history') }}.member_join_date AS DATE) AS member_join_date,
  CAST({{ source('mde', 'promotion_history') }}.member_loyalty_years  AS INTEGER)
                                                                  AS member_loyalty_years,
  {{ cleanse_text_field(source('mde','promotion_history'),'modemdeml_member_term_id') }}
                                                                  AS model_member_term_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_mille') }}
                                                                  AS model_member_term_mille,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_version') }} AS INTEGER)
                                                                  AS model_member_term_version,
  CAST(({{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_scoring_date') }}) AS DATE)
                                                                  AS model_member_term_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_member_mlta_id') }}
                                                                  AS model_member_mlta_id,
  CAST(({{ cleanse_text_field(source('mde','promotion_history'),'model_member_mlta_mille') }}) AS DECIMAL(19,9))
                                                                  AS model_member_mlta_mille,
  CAST(({{ cleanse_text_field(source('mde','promotion_history'),'model_member_mlta_version') }}) AS INTEGER)
                                                                  AS model_member_mlta_version,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_member_mlta_scoring_date') }} AS DATE)
                                                                  AS model_member_mlta_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_member_giwl_id') }}
                                                                  AS model_member_giwl_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_member_giwl_mille') }} AS DECIMAL(19,9))
                                                                  AS model_member_giwl_mille,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_member_giwl_version') }} AS INTEGER)
                                                                  AS model_member_giwl_version,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'model_member_giwl_scoring_date') }})
                                                                  AS model_member_giwl_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_term_broadmrkt_id') }}
                                                                  AS model_term_broadmarket_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_term_broadmrkt_mille') }} AS DECIMAL(19,9))
                                                                  AS model_term_broadmarket_mille,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_term_broadmrkt_version') }} AS INTEGER)
                                                                  AS model_term_broadmarket_version,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'model_term_broadmrkt_scoring_date') }})
                                                                  AS model_term_broadmarket_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_giwl_broadmrkt_id') }}
                                                                  AS model_giwl_broadmarket_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_giwl_broadmrkt_mille') }} AS DECIMAL(19,9))
                                                                  AS model_giwl_broadmarket_mille,
  CAST(({{ cleanse_text_field(source('mde','promotion_history'),'model_giwl_broadmrkt_version') }}) AS INTEGER)
                                                                  AS model_giwl_broadmarket_version,
  DATE(({{ cleanse_text_field(source('mde','promotion_history'),'model_giwl_broadmrkt_scoring_date') }}))
                                                                  AS model_giwl_broadmarket_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_ace_id') }}
                                                                  AS model_member_term_ace_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_ace_mille') }} AS DECIMAL(19,9))
                                                                  AS model_member_term_ace_mille,
  CAST(({{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_ace_version') }}) AS INTEGER)
                                                                  AS model_member_term_ace_version,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'model_member_term_ace_scoring_date') }})
                                                                  AS model_member_term_ace_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_offer_seg_id') }}
                                                                  AS model_offer_segment_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_offer_seg_mille') }} AS DECIMAL(19,9))
                                                                  AS model_offer_segment_mille,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_offer_seg_version') }} AS INTEGER)
                                                                  AS model_offer_segment_version,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'model_offer_seg_scoring_date') }})
                                                                  AS model_offer_segment_scoring_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'model_ace_agent_sold_id') }}
                                                                  AS model_ace_agent_sold_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_ace_agent_sold_mille') }} AS DECIMAL(19,9))
                                                                  AS model_ace_agent_sold_mille,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'model_ace_agent_sold_version') }} AS INT)
                                                                  AS model_ace_agent_sold_version,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'model_ace_agent_sold_scoring_date') }})
                                                                  AS model_ace_agent_sold_scoring_date,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'indiv_summary_create_date') }})
                                                                  AS individual_summary_create_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'keycode') }}
                                                                  AS keycode,
  {{ cleanse_text_field(source('mde','promotion_history'),'qcode') }}
                                                                  AS qcode,
  {{ cleanse_text_field(source('mde','promotion_history'),'cell_segment') }}
                                                                  AS cell_segment,
  {{ cleanse_text_field(source('mde','promotion_history'),'finder_num') }}
                                                                  AS finder_number,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'serial_id') }} VARCHAR(100))
                                                                  AS serial_id,
  DATE({{ source('mde', 'promotion_history') }}.offer_end_date)   AS offer_end_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'vendor_cd') }}
                                                                  AS vendor_code,
  {{ cleanse_text_field(source('mde','promotion_history'),'application_form_num') }}
                                                                  AS application_form_number,
  {{ cleanse_text_field(source('mde','promotion_history'),'barcode_version') }}
                                                                  AS barcode_version,
  {{ cleanse_text_field(source('mde','promotion_history'),'form_description') }}
                                                                  AS form_description,
  {{ cleanse_text_field(source('mde','promotion_history'),'creative_notes') }}
                                                                  AS creative_notes,
  {{ cleanse_text_field(source('mde','promotion_history'),'personalization') }}
                                                                  AS personalization,
  {{ cleanse_text_field(source('mde','promotion_history'),'row_check_value') }}
                                                                  AS row_check_value,
  {{ cleanse_text_field(source('mde','promotion_history'),'adobe_addr') }}
                                                                  AS adobe_address,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'delivery_id') }} AS INT)
                                                                  AS delivery_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'recipient_id') }} AS INT)
                                                                  AS recipient_id,
  CAST({{ cleanse_text_field(source('mde','promotion_history'),'failure_type') }} AS INT)
                                                                  AS failure_type,
  CAST({{ source('mde', 'promotion_history') }}.campaign_id AS INT)      AS campaign_id,
  CAST({{ source('mde', 'promotion_history') }}.package_id AS INT)       AS package_id,
  CAST({{ source('mde', 'promotion_history') }}.milliman_bucket_score AS VARCHAR(1))
                                                                  AS milliman_bucket_score,
  CAST({{ source('mde', 'promotion_history') }}.hh_milliman_bucket_score AS VARCHAR(1))
                                                                  AS household_milliman_bucket_score,
  DATE({{ source('mde', 'promotion_history') }}.create_date)      AS create_date,
  CAST({{ source('mde', 'promotion_history') }}.file_id AS INT)          AS file_id,
  CAST({{ source('mde', 'promotion_history') }}.record_id AS INT)        AS record_id,
  DATE({{ cleanse_text_field(source('mde','promotion_history'),'rpt_mail_date') }})
                                                                  AS rpt_mail_date,
  CAST({{ source('mde', 'promotion_history') }}.model_member_term_score AS NUMBER)
                                                                  AS model_member_term_score,
  CAST({{ source('mde', 'promotion_history') }}.model_member_mlta_score AS NUMBER)
                                                                  AS model_member_mlta_score,
  CAST({{ source('mde', 'promotion_history') }}.model_member_giwl_score AS NUMBER) --TODO CHECK COMPATIBILITY OF NUMERIC TO NUMBER
                                                                  AS model_member_giwl_score,
  CAST({{ source('mde', 'promotion_history') }}.model_term_broadmarket_score AS NUMBER)
                                                                  AS model_term_broadmarket_score,
  CAST({{ source('mde', 'promotion_history') }}.model_giwl_broadmarket_score AS NUMBER)
                                                                  AS model_giwl_broadmarket_score,
  CAST({{ source('mde', 'promotion_history') }}.model_member_term_ace_score AS NUMBER)
                                                                  AS model_member_term_ace_score,
  CAST({{ source('mde', 'promotion_history') }}.model_offer_seg_score AS NUMBER)
                                                                  AS model_offer_segment_score,
  CAST({{ source('mde', 'promotion_history') }}.model_ace_agent_sold_score AS NUMBER)
                                                                  AS model_ace_agent_sold_score,
  CAST({{ source('mde', 'promotion_history') }}.lexus_nexus_score AS NUMBER)
                                                                  AS lexus_nexus_score,
  CAST({{ source('mde', 'promotion_history') }}.create_process_log_id  AS INT)
                                                                  AS create_process_log_id,
  CAST({{ source('mde', 'promotion_history') }}.update_process_log_id AS INT)
                                                                  AS update_process_log_id,
  {{ cleanse_text_field(source('mde','promotion_history'),'orgnl_source') }}
                                                                  AS original_source,
  DATE({{ source('mde', 'promotion_history') }}.mail_date)        AS mail_date,
  {{ cleanse_text_field(source('mde','promotion_history'),'us_carrier_route') }}
                                                                  AS us_carrier_route,
  {{ cleanse_text_field(source('mde','promotion_history'),'club_code') }}
                                                                  AS club_code,
  CAST({{ source('mde', 'promotion_history') }}.update_date AS TIMESTAMP) AS updated_at,
  {{ cleanse_text_field(source('mde','promotion_history'),'file_name') }}
                                                                  AS file_name,
  {{ source('mde', 'promotion_history') }}.load_timestamp         AS loaded_at,
  current_date() AS last_refreshed_at
FROM {{source('mde', 'promotion_history') }}
WHERE TRUE
  AND {{source('mde', 'promotion_history') }}.touch_id NOT IN (610, 611, 612, 651, 203, 614, 613, 652, 0, 299, 578, 579)
  AND {{source('mde', 'promotion_history') }}.campaign_label NOT LIKE 'Tej%'
  {% if is_incremental() %}
  AND {{ source('mde', 'promotion_history') }}.load_timestamp > COALESCE((SELECT staging_timestamp FROM staging_max_timestamp), current_date()-1)
  {% endif %}
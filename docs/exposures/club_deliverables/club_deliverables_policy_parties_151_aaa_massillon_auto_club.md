
{% docs club_deliverables_exposure_policy_parties_151_aaa_massillon_auto_club %}
{% raw %}

# Policy Parties for 151 - AAA Massillon Auto Club - Club Deliverable
Clubs receive party information via AGYPOL and AGYBENE feeds that are sourced from the LifePlus
PAS system, as well as app_search, case_search, control_report and policy_search from the FAST
PAS system. AAA Life is actively migrating policies from LifePlus to FAST and implementing new
products in the FAST system. For this reason the data that is available via the AGYPOL and
AGYBENE feeds will progressively become stale.

These files are delivered using the lambda process. It is fundamentally a python function that
says what we ask it to at a certain time or event. In this case, we unload a table to a
file that is supported by redshift. This exposure is provided to 151 - AAA Massillon Auto Club and contains
policy-party information for the following clubs:
['151']"

All files are verified daily by a python script that runs each morning at 11:00 AM ET. It looks
in today's folder and tests the 'LastModified' date against today's date.
S3 bucket: aaalife-data-dse-prd-outbound-reporting-us-east-1
Today's folder location: /151 - AAA Massillon Auto Club/policy_party/V1/YYYY/MM/DD/policy_parties_151 - AAA Massillon Auto Club.parquet

- Files will be in Parquet format. Apache Parquet is designed for efficient as well as performant
  flat columnar storage format of data compared to row based files like CSV or TSV files. Parquet
  can only read the needed columns, therefore greatly minimizing the input/output.
- Clubs will have an option to pick up the party files from AAA Life or they can be dropped
  off to a preferred location. The recommended method is to pick up files from AAA Life.
- The new feeds will only replace AGYPOL and AGYBENE.
- There is no hard date to sunset AGYPOL and AGYBENE. They will continue to be available for a
  period of time post deployment to allow clubs to transition to the new party feeds.
- AAA Life is working towards building a unified data source for clubs and will partner with them
  to understand their data needs and prioritize building other relevant feeds in future iterations.
- The party files will be deployed Q1 2022, and therefore clubs should plan on migrating Q1 2022.
- The party files will contain data from the LifePlus and FAST PAS systems.
- The party files will contain current state data, not historical.
- Securian and Great American policies will not be included in the party extract files.
- The party files will contain all policies and applications regardless of status.
- The party file feeds will not impact the delivery and processing club files to Merkle.

**NOTE on ACE's 'delivery' files**: IT has a process that is triggered by the creation of the
'delivery' folder within their model_suffix folder in the outbound S3 bucket. This process
delivers the files to ACE and then deletes the folder. The folder is deleted at the end of
this process in order to prevent multiple deliveries of the same file. That way, if there
is an outage, the stale file doesn't get resent. ACE is the only club that uses this process.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |
| Grain:                   | 1 row per policy_number + relationship_type + party_number - minus party_numbers: '0003417744','0002918540','0002895102','0002907168' |
| Filters:                 | 151 - AAA Massillon Auto Club only - filtering done before sent to 151 - AAA Massillon Auto Club |
| Refresh Cadence:         | Files will be available daily. The exact time of availability is TBD. e.g. Every 24 hours - can explain if it's the table refresh or the report itself |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
    
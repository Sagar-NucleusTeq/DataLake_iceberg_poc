{% docs merkle_deliverables_exposure_eservices_data %}
{% raw %}

# Merkle Data Feed with eServices & Policy-Party Data
Merkle receives eServices, policy and party information via feeds that are sourced from the
LifePlus and FAST PAS systems, as well as login and registration information for eServices
from Sureify and LifePlus. AAA Life is actively migrating policies from LifePlus to FAST and
implementing new products in the FAST system. For this reason the data that is
available via the feeds will progressively become stale. 

Originally, eServices could only work with LifePlus policies. Members with any FAST
policies are excluded from eServices. In September 2022, LifePlus policies with eServices
migrated to FAST breaking the availability of eServices for those policies.

Merkle receives files from AAA Life via S3 with data utilized for outreach to policyholders.
The goals of the outreach are to get users onto the eServices platform, sign-up for
auto payment and other policy management / marketing.

- Files are delivered in Parquet format. Apache Parquet is designed for efficient as well as
  performant flat columnar storage format of data compared to row based files like CSV or TSV
  files. Parquet can only read the needed columns, therefore greatly minimizing the input/output.
- The policy files contain current state data, not historical.
- Securian and Great American policies will not be included in the files.
- The files contain all policies and applications regardless of status, however the only
  parties provided are the owners ('Owner One' and 'Owner Two').

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |
| Grain:                   | 1 row per policy_number + role_type |
| Filters:                 | A filter is set to only send Merkle yesterday's updates and additions |
| Refresh Cadence:         | Files with updates only will be available daily |

### Contact
Please contact the report expert with any questions or concerns.

{% endraw %}
{% enddocs %}
    
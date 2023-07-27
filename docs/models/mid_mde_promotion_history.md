{% docs mid_mde_promotion_history %}
{% raw %}

# Promotion History

![last updated](assets/update_badges/mid_mde_promotion_history.svg)

This mid table containts the subset of fields from Merkle's AAAL database's Promotion 
History table, joined to metadata touches, that propagate to gold.messages.


This table contains all initiations of direct mail and digital attempts to market to an
individual. The phrasing "initiations" is used because material
intended for an individual can be depromoted in the case that the
individual accepts a policy contract or the address is no longer
mailable (or other reasons). Digital logic for fields is at times
very different from direct mail logic. Examples are keycode structure,
ids such as touch/tactic/creative etc, finder numbers and other fields.


Things of note:

1. During the transformation, the following touches are excluded from 
load due to incomplete metadata available, and there is no plan to 
go back and remake it for these touches - 
(610, 611, 612, 651, 203, 614, 613, 652, 0, 299, 578, 579).
The affected touches are pre-2019 when the Merkle database was set up.

2. Two campaign labels are of special interest: Tej Test, 
Tej Export TB5 Delivery Package. These records are mostly test records
within promotion history. Details surrounding the situation are
unfortunately somewhat hazy. There is some evidence that some of these
records were actually live and these individuals mailed, or the true
record was over written by these tests. There are 144
cases where finder numbers on the application correspond only to 
finder numbers on these "Tej" records. However, it is impossible to 
tell the true scope of the problem. As most of these records are in
fact test records, they must be excluded in entirety for dbt tests to 
pass. As of 3/9/2021, these records have been suppressed from JIM, but
still exist in promotion_history on the MDE.
   
3.  Each direct mail
promotion_history record should have a plan code. Outside of the Tej
test records, every attempt has been made to ensure all records have plan
codes. As of 3/9/2021 there is an outstanding issue with tactic 65 in 
promotion_history. Merkle has been informed to fix it for the MDE, but 
in the meantime, this plan code is hard coded (GW178) into the dbt model.
This work was done by Brittany Spencer and validated by Lisa Sultana-Bogacki.

### Security and Usage Information
|    |    |
|---|---|
|Grain:|1 record per broadlog_id|
|Security Classification:|Confidential|
| Usage Requirement:       | PII |

### Contact
Please contact the subject matter expert with any questions or concerns.

There is no subject matter expert for this table.

{% endraw %}
{% enddocs %}
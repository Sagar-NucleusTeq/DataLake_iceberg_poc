{% docs touch_attribution_method %}
{% raw %}

# Touch Attributed Method

Derived during multi-touch attribution. Details what high level information was
used to attribute the policy to a campaign.

For Direct Mail Marketing: the options are 

| PROCESS STEP | ATTRIBUTION METHOD | DESCRIPTION |
| ------------- | ------------------- | ------------ |
| PRE_MDE_NOT_ATTRIBUTED (equivalent to step 1, but not typically referenced this way for clarity) | K_FINDER_NUMBER_OR_APP_DATE | Pre MDE policies that have policy numbers beginning with a "K" and are not SISU responses|
| DMSTEP_2 | FINDER_NUMBER | All characters except the 2nd match a record in promotion_history|
| DMSTEP_3A | MAIL_INDIV | Applications attributed to a mailing to that individual |
| DMSTEP_3B | MAIL_HH | Applications attributed a mailing to that household |
| DMSTEP_3C | MAIL_ADDR | Applications attributed to a mailing to that address |
| DMSTEP_4A | EMAIL_INDIV | Applications attributed to an email to that individual |
| DMSTEP_4B | EMAIL_HH | Applications attributed an email to that household |
| DMSTEP_4C | EMAIL_ADDR | Applications attributed to an email to that address |
| NOT_ATTRIBUTABLE | NOT_ATTRIBUTABLE | No logic finds attributable record |

For further information please see these requirements: 
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/11282644993/2022+V3+Multi-Touch+Attribution+Requirements)

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Gold |

{% endraw %}
{% enddocs %}
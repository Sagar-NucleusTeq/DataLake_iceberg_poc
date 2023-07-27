{% docs campaign_attribution_method %}
{% raw %}

# Campaign Attributed Method

Derived during attribution. Details what high level information was
used to attribute the policy to a campaign.

For Direct Mail Marketing: the options are 

| PROCESS STEP | ATTRIBUTION METHOD | DESCRIPTION |
| ------------- | ------------------- | ------------ |
| DMSTEP_1 | FINDER_NUMBER | All characters except the 2nd match a record in promotion_history|
| PRE_MDE_NOT_ATTRIBUTED (equivalent to step 1b, but not typically referenced this way for clarity) | K_FINDER_NUMBER | Pre MDE policies that have policy numbers beginning with a "K" and are not SISU responses|
| DMSTEP_2A | PHONE_NUMBER_INDIV | SISU responses attributed on individual key using the phone number called by individual on policy to initiate an application. |
| DMSTEP_2B | PHONE_NUMBER_HH | SISU responses attributed on household key using the phone number called by individual on policy to initiate an application. |
| DMSTEP_2C | PHONE_NUMBER_ADDR | SISU responses attributed on address key using the phone number called by individual on policy to initiate an application. |
| DMSTEP_3A | RECENT_MAIL_INDIV | Applications attributed to the most recent mailing to that individual |
| DMSTEP_3B | RECENT_MAIL_HH | Applications attributed to the most recent mailing to that household |
| DMSTEP_3C | RECENT_MAIL_ADDR | Applications attributed to the most recent mailing to that address |
| NOT_ATTRIBUTABLE | NOT_ATTRIBUTABLE | No logic finds attributable record |

For further information please see these requirements: 
[Attribution Requirements](https://aaalife-data.atlassian.net/wiki/spaces/2PA/pages/5166366374/Attribution+2021+Requirements)

### Security and Usage Information
|    |    |
|---|---|
|Security Classification:| Internal |
|Usage Requirement:| Gold |

{% endraw %}
{% enddocs %}
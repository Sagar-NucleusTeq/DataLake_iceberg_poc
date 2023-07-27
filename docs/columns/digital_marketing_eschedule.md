{% docs eschedule_index %}
{% raw %}

<a name="eschedule_index"></a>
# eSchedule Index
Just a simple counter for the row number (really this represents how many rows have ever been 
entered in the eSchedule, even if they were later deleted.)

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_media_type %}
{% raw %}

<a name="digital_media_type"></a>
# Digital Media Type
The channel by which the campaign is executed (i.e. Email, Paid Search, Club Text Link, etc.)
and recorded in the eSchedule table

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_marketing_cell %}
{% raw %}

<a name="digital_marketing_cell"></a>
# Digital Marketing Cell
A counter for campaign codes within one CampaignID in the eSchedule table

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_marketing_cell_label %}
{% raw %}

<a name="digital_marketing_cell_label"></a>
# Digital Marketing Cell Label
A short, simple description of what the campaign code is being used for in the eSchedule table.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_marketing_campaign_description %}
{% raw %}

<a name="digital_marketing_campaign_description"></a>
# Digital Marketing Campiagin Description
A longer, more thorough description of what the campaign code in eSchedule is being used for with 
extra details on the process and possibly creative.

This name will be given in the request, and will most likely be similar to CellLabel and 
CampaignLabel, only it will include a bit more detail.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs eschedule_front_end_flag %}
{% raw %}

<a name="eschedule_front_end_flag"></a>
# eSchedule Front End Flag
A flag for email campaigns used to count totals with True indicating the front end metrics 
for this campaign code should be counted in the total, and False in order to avoid counting the 
front end metrics for that campaign code. 

*Default for this field is True. False should only be used for unique phone number email campaigns 
only.

This let us break out the back end metrics that came in from the phone number vs. on the internet, 
while still only counting the front end metrics once.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs eschedule_state %}
{% raw %}

<a name="eschedule_state"></a>
# eSchedule State
This field is only really used when a specific state within the range of a club code is being 
targeted, or when the club code only includes one state. Otherwise, enter 'XX' in this field.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_url %}
{% raw %}

<a name="digital_url"></a>
# Digital URL
This field holds the tracking URL that needs to be created for many of our digital campaigns. 
This URL will include the landing page URL, club code, lead source code, campaign code and whether 
the campaign is related to a club or only AAA Life.

This URL will include the landing page URL that is given in the request, and then the creator will 
add a ? to the end of that, and then add the following parameters: "cc=" for club code, "&sc=" for 
lead source code and "&cmp=" for campaign code. Then you may also add "&lead=club" at the end for 
club campaigns (AKA campaigns that have a club code other than 999).

Eg. https://www.aaalife.com/welcome?cc=005&sc=92&cmp=19SX00502L&lead=club

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_landing_page %}
{% raw %}

<a name="digital_landing_page"></a>
# Digital Landing Page
A landing page is defined as the first webpage that a campaign directs the user to, and therefore 
the first page that a user hits.

This field includes a very short description that represents a single landing page which could be 
used for multiple campaigns.

One should look to see if a landing page has already been named first. To do this, search the 
eSchedule for a URL with the same beginning of a URL (i.e. the landing page), and if that is found, 
use that landingPage name. If it is not found then you may create your own (this won't happen very 
often unless a completely new landing page is created, or a blog post is used as a landing page). 

This can be named using the heading of the actual landing page, or by using text from the URL 
string provided.

Eg. "ET3StepsCouple" was used for the following landing page 
"https://www.aaalife.com/campaigns/expressterm/19?cc=999&sc=55&cmp=19CE99902E" in order to 
distinguish it from the original Express Term landing page: 
"https://www.aaalife.com/campaigns/expressterm"

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs dnis %}
{% raw %}

<a name="dnis"></a>
# DNIS
A unique 4-digit code associated with a single phone number.

No longer used - leave null.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs phone_dnis %}
{% raw %}

<a name="phone_dnis"></a>
# Phone DNIS
The phone number that we are assigning the corresponding campaign code to in eSchedule. This will be
a 10-digit number with no parenthesis or dashes.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs dnis_expiration_date %}
{% raw %}

<a name="dnis_expiration_date"></a>
# DNIS Expiration Date
For campaign codes that are attached to a phone number only. This field represents the date that we 
repurpose a phone number and assign a different campaign code to it. It could also represent the 
date that we no longer consider any calls to said phone number as a part of the corresponding 
campaign.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs dnis_start_date %}
{% raw %}

<a name="dnis_start_date"></a>
# DNIS Start Date
For campaign codes that are attached to a phone number only. This is generally the same as the 
start date of the campaign.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs emails_sent %}
{% raw %}

<a name="emails_sent"></a>
# Emails Sent
The total number of emails that were attempted to be sent for a specific digital marketing campaign.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_campaign_created_at %}
{% raw %}

<a name="digital_campaign_created_at"></a>
# Digital Campaign Created At
The date that the employee creates the row/campaign code in the eSchedule table.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs digital_campaign_created_by %}
{% raw %}

<a name="digital_campaign_created_by"></a>
# Digital Campaign Created By
The P-number of the employee that created the row/campaign code in the eSchedule table.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


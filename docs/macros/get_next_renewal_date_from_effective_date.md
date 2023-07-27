{% docs get_next_renewal_date_from_effective_date %}
{% raw %}

# Get Next Renewal Date From Effective Date
A macro that gets the next renewal date based on the effective date of a policy.

The macro takes the month and day of the effective date and combines them with this year's year and 
then compares it with today's date. If the combined date is greater than today's date, i.e. the 
renewal hasn't happened this year, then the combined date becomes the next renewal date. If the 
combined date is less than or equal to today's date, i.e. the renewal already happened this year, 
then the next renewal date will be the month and day of the effective date with next year's year. 

For the effective dates that are on February 29, the macro adjust the date to March 1 because 
February 29 is not a valid date in years other than leap years. 


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
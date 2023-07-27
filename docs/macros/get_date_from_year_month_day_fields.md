{% docs get_date_from_year_month_day_fields %}
{% raw %}

# Get A Date Field From Day, Month and Year Integer Fields
A macro that spits out a valid date field from three given fields, namely, the year, month and 
day fields that make up a date. These fields should be of type 'integer', but this macro
should do pretty much all of the rest of the heavy lifting for accounting for data abnormalities. 
For example, it transforms any negative values to a NULL date, and changes non-existent dates
like the 31st of June to the 1st of the next month (i.e. July 1st). Leap years are taken into 
account, as well with calculations to determine which years are leap years and changing the 
final dates accordingly.

Actual Changes in Order of Priority:
1. The final date is transformed to NULL for the following instances:
    1. When the year is before 1800
    2. When the month is negative
    3. When the day is negative
    4. When the year and the month and the day are zero
2. The final date is transformed to the first of following month
    1. When the date is in April, June, September or November and the day is more than 30
    2. when the date is in February and the day is more than 29
    3. When the year is not a leap year and the date is in February and the day is 29
        - Two cases: 1. When the year is not divisible by 4 and 2. When the year is divisible by 100 but not by 400 
3. The final date is kept the same and simply converted into a date field from the text format 'YYYYMMDD'

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
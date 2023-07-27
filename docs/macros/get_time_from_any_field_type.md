{% docs get_time_from_any_field_type %}
{% raw %}

# Get A Time Field From Hour, Minute and Second Integer Fields
A macro that spits out a valid time field from three given fields, namely, the hour, minute and 
second fields that make up a time. These fields can be of type 'integer' or 'varchar'.
This macro works for military time and am/pm times.

The macro takes the field contents, converts them to varchar, adds five zeros to the front of the
string and then chops off any zeros from the left side that make the length larger than 6. Using that string, it
splits off the first two characters (the hour), adds a ':', then takes the middle two characters
(the minutes), adds a ':', then takes the last two characters (the seconds) and concatenates all
of them.  Finally, it converts the field to field type TIME.

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
{% docs cleanse_phone_number %}
{% raw %}

# Cleanse Phone Number
A macro that NULLs any phone number that is less than 10 characters and also if the phone number matches
one of the commonly used FAKE phone numbers listed below.

* 9999999999
* 0000000000
* (000)000-0000
* 999-999-9999
* 000-000-0000
* 999 999 9999
* 999999999
* 0000000003
* 000.000.0000
* (650)000-0000
* DAYTIME PHONE

**Needed from the user**:
Enter the model name in the first input parameter and the column name in the second 
input parameter. 

The field name will always be wrapped in single quotes. If the model name 
comes from a CTE, this input parameter will also be wrapped in single quotes like 
the field name. However, since this macro will likely primarily be used 
in staging tables, the model input parameter will most commonly include a jinja source 
(i.e. `{{ source('lifeplus','cmsclntm') }}`).
The format to use a jinja source in this macro is as follows: 
`{{ cleanse_phone_number(source('lifeplus','cmsclntm'),'cmsxcd') }}`
then you can cast this field to any character field type (though it is standard to cast 
to some length of `VARCHAR(x)`).


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
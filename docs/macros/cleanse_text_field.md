{% docs cleanse_text_field %}
{% raw %}

# Cleanse Text Field
A macro that NULLs and TRIMs any VARCHAR (character) variable and casts it to VARCHAR.
This macro also takes any case where there is a blank non-null value (''), one double quote ("),
a single period (.), a single semi-colon (;) or a single comma (,) and turns these fields into NULLs.

**Needed from the user**:
Enter the model name in the first input parameter and the column name in the second 
input parameter. 

The field name will always be wrapped in single quotes. If the model name 
comes from a CTE, this input parameter will also be wrapped in single quotes like 
the field name. However, since this macro will likely primarily be used 
in staging tables, the model input parameter will most commonly include a jinja source 
(i.e. `{{ source('lifeplus','cmsclntm') }}`).
The format to use a jinja source in this macro is as follows: 
`{{ cleanse_text_field(source('lifeplus','cmsclntm'),'cmsxcd') }}`
then you can cast this field to any character field type (though it is standard to cast 
to some length of `VARCHAR(x)`).


### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}
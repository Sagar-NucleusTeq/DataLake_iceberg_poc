{% docs test_no_duplicates_in_load %}
{% raw %}

# No Duplicates In Load

Verifies that there are no duplicated values for a given columns in a given 
source file load.

## Usage
```yaml
version: 2

models:
  - name: promotion_history
    tests:
      - test_no_duplicates_in_load:
          column_name: broadlog_id
          loaded_at: load_timestamp 
``` 

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}

{% docs test_no_duplicates_in_load_arg1 %}
{% raw %}
The name of the model on which the test will be executed.  Not required unless 
the test is being run without being assigned to a model.
{% endraw %}
{% enddocs %}

{% docs test_no_duplicates_in_load_arg2 %}
{% raw %}
The column on which the test will be executed.  Not required unless the test is 
defined at the model level instead of at the column level.
{% endraw %}
{% enddocs %}

{% docs test_no_duplicates_in_load_arg3 %}
{% raw %}
The name of the column that identifies distinct data file loads appended to the 
model being tested. Typically this is a date but the test will accept a filename
so long as it is unique to a given file load.  Results may be inconsistent due 
to the use of `MAX()` aggregate functions to find the "latest" loaded records if
 this column is not a date.  
{% endraw %}
{% enddocs %}

{% docs test_no_duplicates_in_load_arg4 %}
{% raw %}
An optional string that defines a `WHERE` clause to be applied to exclude 
records when checking for duplicated records.
{% endraw %}
{% enddocs %}
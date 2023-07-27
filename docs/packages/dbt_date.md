{% docs __dbt_date__ %}
{% raw %}

# DBT_Date
Extension package for **dbt** to handle date logic and calendar functionality.

FYI: this package includes [**dbt-utils**](#!/overview/dbt_utils) so there's no need to also import dbt-utils in your local project. (In fact, you may get an error if you do.)

Include in `packages.yml`

```
packages:
  - package: calogica/dbt_date
    version: [">=0.2.0", "<0.3.0"]
    # <see https://github.com/calogica/dbt-date/releases/latest> for the latest version tag
```

## Variables

The following variables need to be defined in your `dbt_project.yml` file:

```yaml
vars:
  'dbt_date:time_zone': 'America/Los_Angeles'
```

You may specify [any valid timezone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) in place of `America/Los_Angeles`.
For example, use `America/New_York` for East Coast Time.

## Macros

### Date Dimension

<a name="get_date_dimension"></a>
#### get_date_dimension 
Returns query to build date dimension from/to specified dates, including a number of useful columns based on each date.
See the example model for details.

Usage:

```python
{{ dbt_date.get_date_dimension('2015-01-01', '2022-12-31') }}
```

### Fiscal Periods

<a name="get_fiscal_periods"></a>
#### get_fiscal_periods 
Returns query to build a fiscal period calendar based on the 4-5-4 week retail period concept.
See the example model for details and this [blog post](https://calogica.com/sql/dbt/2018/11/15/retail-calendar-in-sql.html) for more context on custom business calendars.

Usage:

```python
{{ dbt_date.get_fiscal_periods(ref('dates'), year_end_month, week_start_day) }}
```
Note: the first parameter expects a dbt `ref` variable, i.e. a reference to a model containing the necessary date dimension attributes, which can be generated via the `get_date_dimension` macro (see above).

### Date

<a name="convert_timezone"></a>
#### convert_timezone 
Cross-database implemention of convert_timezone function.

Usage:

```python
{{ dbt_date.convert_timezone('my_column') }}
```

or, specify a target timezone:

```python
{{ dbt_date.convert_timezone('my_column', 'America/New_York') }}
```

or, also specify a source timezone:

```python
{{ dbt_date.convert_timezone('my_column', 'America/New_York', 'UTC') }}
```

Using named parameters, we can also specify the source only and rely on the configuration parameter for the target:

```python
{{ dbt_date.convert_timezone('my_column', source_tz='UTC') }}
```
<a name="date_part"></a>
#### date_part 
Extracts date parts from date.

Usage:

```python
{{ dbt_date.date_part('dayofweek', 'date_day') }} as day_of_week
```
<a name="day_name"></a>
#### day_name 
Extracts name of weekday from date.

Usage:

```python
{{ dbt_date.day_name('date_day', short=true) }} as day_of_week_short_name,
{{ dbt_date.day_name('date_day', short=false) }} as day_of_week_long_name
```
<a name="last_week"></a>
#### last_week 
Convenience function to get the start date of last week

Wraps:
```python
{{ dbt_date.n_weeks_ago(1, tz) }}
```

Usage:
```python
{{ dbt_date.last_week()) }}
```
```python
{{ dbt_date.last_week(tz='America/New_York)) }}
```
<a name="month_name"></a>
#### month_name 
Extracts name of month from date.

```python
{{ dbt_date.month_name('date_day', short=true) }} as month_short_name,
{{ dbt_date.month_name('date_day', short=false) }} as month_long_name
```
<a name="n_days_ago"></a>
#### n_days_ago 
Gets date _n_ days ago, based on local date.

Usage:

```python
{{ dbt_date.n_days_ago(7) }}
```
<a name="n_days_away"></a>
#### n_days_away 
Gets date _n_ days from now, based on local date.

Usage:

```python
{{ dbt_date.n_days_away(7) }}
```
<a name="n_months_ago"></a>
#### n_months_ago 
Gets date _n_ months ago, based on local date.

Usage:

```python
{{ dbt_date.n_months_ago(12) }}
```
<a name="n_months_away"></a>
#### n_months_away 
Gets date _n_ months from now, based on local date.

Usage:

```python
{{ dbt_date.n_months_away(12) }}
```
<a name="n_weeks_ago"></a>
#### n_weeks_ago 
Gets date _n_ weeks ago, based on local date.

Usage:

```python
{{ dbt_date.n_weeks_ago(4) }}
```
<a name="n_weeks_away"></a>
#### n_weeks_away 
Gets date _n_ weeks from now, based on local date.

Usage:

```python
{{ dbt_date.n_weeks_away(4) }}
```
<a name="now"></a>
#### now 
Gets current date and time based on local timezone (specified). Default is "America/Los_Angeles".

Usage:

```python
{{ dbt_date.now() }}
```

or, specify a timezone:

```python
{{ dbt_date.now('America/New_York') }}
```
<a name="periods_since"></a>
#### periods_since 
Returns the number of periods since a specified date.

Usage:

```python
{{ dbt_date.periods_since('my_date_column', period_name='day' }}
```

The macro used the `dbt_date:time_zone` variable from `dbt_project.yml` to calculate today's date.
Alternatively, a timezone can be specified via the `tz` parameter:

```python
{{ dbt_date.periods_since('my_timestamp_column', period_name='minute', tz='UTC' }}
```
<a name="this_week"></a>
#### this_week 
Gets current week start date, based on local date.

Usage:

```python
{{ dbt_date.this_week() }}
```
<a name="to_unixtimestamp"></a>
#### to_unixtimestamp 
Gets Unix timestamp (epochs) based on provided timestamp.

Usage:

```python
{{ dbt_date.to_unixtimestamp('my_timestamp_column') }}
```

```python
{{ dbt_date.to_unixtimestamp(dbt_date.now()) }}
```
<a name="today"></a>
#### today 
Gets date based on local timezone (specified). Package default is "America/Los_Angeles". The default must be specified in `dbt_project.yml`, in the `'dbt_date:time_zone'` variable. e.g `'dbt_date:time_zone': 'America/New_York'`.

Usage:

```python
{{ dbt_date.today() }}
```

or, specify a timezone:
```python
{{ dbt_date.today('America/New_York') }}
```
<a name="tomorrow"></a>
#### tomorrow 
Gets tomorrow's date, based on local date.

Usage:

```python
{{ dbt_date.tomorrow() }}
```

or, specify a timezone:
```python
{{ dbt_date.tomorrow('America/New_York') }}
```
<a name="yesterday"></a>
#### yesterday 
Gets yesterday's date, based on local date.

Usage:

```python
{{ dbt_date.yesterday() }}
```


{% endraw %}
{% enddocs %}
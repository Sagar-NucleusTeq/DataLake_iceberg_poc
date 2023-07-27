{% docs glossary_plan_code %}
{% raw %}

<a name="plan_code"></a>
# Plan Code

### Area of the Business
All

### Definition
The unique code for each product configuration. Details in plan code communicate product type, 
the length of term, file year etc. These plan codes roll up to sub_product_lines. More
information can be found within the product hierarchy table.

NOTE: When `plan_code` is attached to an application that has not yet been settled, the `plan_code`
represents the product configuration from the new business entity. When `plan_code` is
associated with a settled policy, then that `plan_code` represents the product configuration that
the applicant (now policyholder) was approved for.

### Calculation
N/A

### Rules
N/A

### Useful Takeaways
N/A

{% endraw %}
{% enddocs %}
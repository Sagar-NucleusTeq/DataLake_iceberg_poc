{% docs generate_model_yaml_skeleton %}
{% raw %}
# Generate_Model_YAML_Skeleton
A macro to generate a "skeleton" yaml file for model documentation.
## Usage
Given a dbt model `foo` with structure:

|id  |run_date  | grams_of_plutonium|
|----|----------|-------------------|
|1   |1955-11-12|3|

After generating the model Running the command
```commandline
$ generate_yaml
```
from the terminal, and providing the model name ('foo') when prompted,
 will output the below YAML, which can be copied to a file for further editing:
```yaml
version: 2

models:
  - name: foo
    description:
    meta:
        Owner:
        Security:
        Usage:
    tests:

    columns:
      - name: id
        description:
        meta:
            Security:
            Usage:
        tests:
      - name: run_date
        description:
        meta:
            Security:
            Usage:
        tests:
      - name: grams_of_plutonium
        description:
        meta:
            Security:
            Usage:
        tests:
```

{% endraw %}
{% enddocs %}

{% docs generate_model_yaml_skeleton_arg1 %}
{% raw %}
The name of the model for which a YAML skeleton should be generated.  Uses the 
same naming schema as the `{{ ref('model_name') }}` Jinja function.
{% endraw %}
{% enddocs %}
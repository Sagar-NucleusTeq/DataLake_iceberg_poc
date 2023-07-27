{% docs agent_type %}
{% raw %}

<a name="agent_type"></a>
# Agent Type
A code that defines the type of agent as servicing or writing.
 
**Servicing Agent**: An agent who continues to work with the customer on an ongoing basis. This
agent would make any updates to the existing policy as needed.

**Writing Agent**: The original agent who sold the coverage to the customer. This agent would 
have performed tasks such as explaining policy benefits, determine suitability, collect premium, 
and signed the application for example.                                   

| Code |  Description    |
| ---- |  -------------- |
|  S   | Servicing agent |
|  W   | Writing agent   |  

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs agent_type_description %}
{% raw %}

<a name="agent_type_description"></a>
# Agent Type Description
A field that defines the type of agent as servicing or writing.
 
**Servicing Agent**: An agent who continues to work with the customer on an ongoing basis. This
agent would make any updates to the existing policy as needed.

**Writing Agent**: The original agent who sold the coverage to the customer. This agent would 
have performed tasks such as explaining policy benefits, determine suitability, collect premium, 
and signed the application for example.                                   

|  Valid Values   |
|  -------------- |
|   Servicing     |
|   Writing       |  

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs agent_licensing_type %}
{% raw %}

<a name="agent_licensing_type"></a>
# Agent Licensing Type
This field contains codes that specify the types of AAA and AAA Life products that an agent 
sells on behalf of AAA Life and the AAA clubs. At present these codes also align with agent
affiliation type as described below.

**Ind:** Stands for "Independent". These are agents who are licensed to sell life insurance
products. They are not associated with either the clubs nor DSU. They typically only sell a
select subset of AAA Life products.

**MLA:** Stands for "Multi-Line Agent". MLA agents are employed by the clubs and licensed
to sell life insurance as well as property and casualty. Like Ind agents, they typically 
sell a subset of AAA Life products.

**LS:** Stands for "Life Specialist". LS agents are employed by the clubs and licensed to
sell life insurance. They sell the broadest range of AAA Life products compared to Ind and
MLA agents.

|  Valid Values   |
|  -------------- |
|   Ind    |
|   MLA    |
|   LS     |  

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

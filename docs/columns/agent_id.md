{% docs agent_id %}
{% raw %}

<a name="agent_id"></a>
# Agent Identification Number 
The identification number used by an agent.

An agent involved in submitting the new business application.  
Different from the Primary Agent in cases that are split between agents. 
DSU, SISU, Field Agents, and agents employed by third-party platforms (e.g., Rapport) all have agent numbers 
represented.

Agent Identification Number is unique to an individual agent. It is not, however, a unique key in the 
agent_licensure_master table in staging. This is because a single agent could be licensed for a single product in multiple 
states, so there may be multiple records per agent.

Note: A minority of LifePlus records may contain club codes in this field instead of valid agent numbers. This is most
likely to occur for agent-sold policies sold by internal agents (ie, DSU, OSR, or SISU). For more information see
(`staging_lifeplus_new_business_agents`)[#!/model/model.aaa_life_data_platform.staging_lifeplus_new_business_agents] or (`staging_lifeplus_inforce_contract_agents`)[#!/model/model.aaa_life_data_platform.staging_lifeplus_inforce_contract_agents] documentation.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs internal_agent_id %}
{% raw %}

<a name="internal_agent_id"></a>
# Internal Agent Identification Number 
The AAA Life employee number associated with an internal agent (DSU, SISU).
Employee numbers are 6 characters and begin with the letter "p". 
In the raw lifeplus data the P is capital, in FAST it's lowercase, when moving to gold we align by lowercasing 
the Lifeplus field. An additional alignment that must happen is the removal of "@aaalife.com" at the end of 
the FAST input.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs call_center_agent_number %}
{% raw %}

<a name="call_center_agent_number"></a>
# Call Center Agent Number 
The identification used by agents employed by AAA Life (ie, DSU, SISU), as well as agents associated with certain third-
party platforms such as Rapport and IPTIQ. This is NOT the employee number that begins with "p". 

Agent Identification Number is unique to an individual agent. It is not, however, a unique key in the 
agent_licensure_master table in staging. This is because a single agent could be licensed for a single product in
multiple states, so there may be multiple records per agent.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}


{% docs internal_agent_name %}
{% raw %}

<a name="internal_agent_name"></a>
# Internal Agent Name
The name associated with an internal agent (DSU, SISU) who submitted the policy to the new business queue. 
FAST has this value in their system alongside the p-id. Format for the field is <Fname Lname>.
For Lifeplus the name of the agent is not available today, it likely requires a join to the clients table but the
logic to do this has not yet been discovered.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}

{% docs primary_agent_id %}
{% raw %}

<a name="primary_agent_id"></a>
# Primary Agent ID
The writing agent who signed and submitted a new business application.


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification:  | Internal |
| Usage Requirement:        | Deidentified |

{% endraw %}
{% enddocs %}

{% docs is_primary_agent %}
{% raw %}

<a name="is_primary_agent"></a>
# Is Primary Agent
This boolean field identifies whether an agent is the 
[primary writing agent](#!/exposure/docs.business_glossary.glossary#primary_writing_agent)
(TRUE) or not (FALSE), and comes from the "User Defined Field 1" from the source system.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}
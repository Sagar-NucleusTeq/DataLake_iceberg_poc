{% docs fast %}
{% raw %}

# FAST
Data coming from the FAST policy admin system (PAS), a life insurance policy administration 
system (PAS) as a system that provides full end-to-end life cycle management of group and 
individual life and pension products. AAAL currently has two PAS systems, AS400, the original 
PAS and FAST an updated system AAA Life intends to convert to. 

These sources come directly from FAST through [this](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11001856049/FAST+SCD+Pipeline)
process, as opposed to the several FAST tables that exist in the MDE. One of these MDE
tables, 'fast attribs', is pulled into the Data Platform under the MDE source location
for attribution. This table is built primarily upon the source files ingested from the FAST
source.

Many of the FAST source tables' automation information is documented
[here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11184799777/Data+Engineering+Automated+Tables+2021).
Others are documented [here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11188568068/Fast+Data+Pipeline+-+Managed+Airflow+MWAA)
and [here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11001856049/FAST+SCD+Pipeline).
and [here](https://aaalife-data.atlassian.net/wiki/spaces/HAN/pages/11181424654/2022+Pipeline+Automation+Priority+List).

{% endraw %}
{% enddocs %}

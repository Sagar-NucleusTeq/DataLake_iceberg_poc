{% docs __overview__ %}
# Welcome!
Welcome to the documentation site for the data platform!

## Navigation
You can use the `Project` and `Database` navigation tabs on the left side of the window to
explore the models in your project.

### Project Tab
The `Project` tab mirrors the directory structure of your dbt project. In this tab, you can see
all of the models defined in your dbt project, as well as models imported from dbt packages.

##### Sources
The *Sources* section contains the documentation for our source tables used to create everything
you find in the data platform. This data comes from a number of places all the way from our
Policy Administration Systems (FAST and Life Plus) to Merkle's marketing data environment (MDE). 

##### Exposures
The *Exposures* section provides documentation for dashboards and other reports. Here, you will find
links to the reports, descriptions of the different tabs, definitions of some of the metrics you
will see on the reports, and other useful information.

##### Projects
The *Projects* section holds the meat of the table and column definitions. Navigate to the `models`
folder under `aaa_life_data_platform` to view this documentation.

### Database Tab
The `Database` tab also exposes your models, but in a format that looks more like a database
explorer. This view shows relations (tables and views) grouped into database schemas. Using this
tab, you can see what the end database actually looks like. Note that ephemeral models are not
shown in this interface, as they do not exist in the database.

## Graph Exploration

### Data Lineage
You can click the blue icon on the bottom-right corner of this page to view the lineage graph of
all models in the dat platform.

If this icon is clicked while you are on model pages, you'll see the immediate parents and
children of the model you're exploring. By clicking the Expand button at the top-right of this
lineage pane, you'll be able to see all of the models that are used to build, or are built from, 
the model you're exploring.

### Other filtering options
Once expanded, you can use the --models and --exclude model selection syntax to filter the
models in the graph. For more information on model selection, check out the [dbt docs](https://docs.getdbt.com/reference/node-selection/graph-operators).

NOTE: you can also right-click on models to interactively filter and explore the graph.

### Contact
Please contact the subject matter experts with any questions or concerns.

|Name|    |Contact Info|
|----|----|------------|
|Keely Ledbetter|<img src="https://ca.slack-edge.com/TDCJ5T84R-UTT1L30R2-b5fb7eb197ac-512" width="100" />   |Email: [kledbetter@aaalife.com](mailto:kledbetter@aaalife.com)<br> Slack: [@Keely Ledbetter](https://aaainsights.slack.com/team/UTT1L30R2) <br>Extension: 2094 |
|Eric Robinson  |<img src="https://ca.slack-edge.com/TDCJ5T84R-UDD1TF8FN-526698e14cc1-512" width="100" />   |Email: [erobinson@aaalife.com](mailto:erobinson@aaalife.com)<br> Slack: [@Eric Robinson](https://aaainsights.slack.com/team/UDD1TF8FN) <br>Extension: 6347     |
|Kyle Binder    |<img src="https://ca.slack-edge.com/TDCJ5T84R-U01499QU57C-62ff1fc0b321-512" width="100" /> |Email: [kbinder@aaalife.com](mailto:kbinder@aaalife.com)<br>Slack: [@Kyle](https://aaainsights.slack.com/team/U01499QU57C) <br>Extension: 2707                 |


{% enddocs %}
# Project 2: Initial exploration and data visualization

Databox company provided an anonymized and sampled dataset on their platform usage data.

The two datasets are contained in the file [*Databox-data.zip*](https://drive.google.com/file/d/1xlBq18Ljh9fZ_o_KXaFuMe4fId9waS3G/view?usp=sharing). Below we overview the attributes provided in the datasets.


## Databox SignupsAttributes.csv

Data set includes data about a subset of customers:

| Attribute | Description |
| --------- | ----------- |
| $distinct_id | Customer id (identical to space_id) |
| $properties.space_id | Unique customer id |
| $properties.country | Country of the company in the system |
| $properties.is_agency | Company is an agency - true/false |
| $properties.company_created | Timestamp when company was created in the system or undefined |
| $properties.became_paying | Timestamp when company became paying or undefined |
| $properties.became_pql | Timestamp when company was categorized as PQL or undefined |
| $properties.cancelled | Timestamp when company cancelled the account or undefined |
| $properties.had_trial | Company used the trial option - true/false |
| $properties.trial_features | List of trial features used - values separated with ; |
| $properties.is_activated | Company is activated - true/false |
| $properties.level_achieved | Onboarding level achieved - number |
| $properties.has_mobile_company | Uses mobile option - true/false |
| $properties.sessions_company | Sessions count - number |
| $properties.databoards_company | Databoards count - number |
| $properties.cloud_sources_company | Cloud sources count - number |
| $properties.metrics_company | Number of Metrics added - number |
| $properties.users_in_space | Number of users added to space - number |
| $properties.scheduled_snapshots_company | Number of scheduled snapshots - number |
| $properties.custom_queries_company | Number of custom queries created - number |
| $properties.scripts_company | Number of scripts used - number  |




## Databox AllEvents.csv

Dataset `AllEvents.csv` combines event data for 6 different events for 2 years. Since the file is large, we provided separate dataset per event type for your convenience. All datasets have the same structure, but not all datasets have a header.

List of files:
* AllEvents.csv (includes data from all files below)
* CalculationCreated.csv
* MetricAdded.csv
* NewDatasourcesAdded.csv
* QueryCreated.csv
* Sessions.csv
* ShareUrl.csv
* SnapshotShared.csv
* UsersAdded.csv


| Attribute | Description |
| --------- | ----------- |
| Date | Date of event in format yyy-mm-dd |
| Event | Type of the event - string, may include some special characters |
| Space | Customer id | Id of the customer triggering event |
| Event_count | Number of events on the specific date |



## Instructions

Your main task is to provide insights into the data to the reader through text, tables, and visualisations. Aim for a concise, efficient, and effective solution.

You, as a data scientist, need first to fully grasp the dataset's domain and clearly understand all the data. Your goal is to analyse the dataset (describe it) and to propose further analyses/research based on your intuition. Also, comment on the shortcomings of the dataset, so the company could improve by gathering more or different types of data. During the analysis you should also:

* Implement dynamic reports and provide all the code with instructions for your code to be reproducible.
* Produce visualisations that are aesthetic, make sense and are without major technical flaws. Take into account univariate and multivariate distributions along with appropriate techniques. Comment and discuss your work.
* Apply data summarisation techniques to obtain insights from data. In case of unexpected results, comment on your *logical* hypothesis and try to find out why it is not true.

**Focus on quality, not quantity!** If you believe you cannot find appropriate attributes for a specific visualisation type, justify and discuss that in the report.

Submit your work within the assignment repository and organise it sensibly (code, visualisations, reports in separate folders). Along with the dynamic reports and source code you should also submit a short PDF 3 pages analysis report. In the README.md of your repository explain the structure of your files within the repository and also provide all the instructions to reproduce your work.


## Expected results

- Fully implemented and reproducible Jupyter notebook (data_exploration.ipynb)
- Short report, 3 pages PDF, use template.

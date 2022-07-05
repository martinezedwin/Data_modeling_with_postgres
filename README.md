# Data Modeling with Postgres
In this project I modeled user activity data for a music streaming app called Sparkify to understand what songs the users are listening to. I used Postgres relational database and ETL pipeline to build a star model containing a Fact table and 4 dimensional tables.


## Files/Folders
* /data: Contains the files with thedata that are needed to fill in the tables.
* start_db.sh: Used to start postgres using docker.
* requirements.txt: Contains the python packages to be installed using pip to create virtual environemnt.
* sql_queries.py: Contains the queries used to DROP/CREATE/INSERT the tables as well as a search query used to in a function.
* create_tables.py: Usest the queries in sql_queries.py to create the tables.
* etl.ipynb: Is a jupyter notebook that can be used to explore the data and how to build the etl pipeline step by step.
* etl.py: Contains the etl pipeline build by what was learn from etl.ipynb notebook.
* test.ipynb: Contains useful tests to catch easy mistakes and make sure the pipeline is workign properly.

## How to run
This was developed and ran on Ubuntu 22.04 LTS and python 3.10.4
### Requirements
1. Python3.10
2. Docker

###  Run
1. Clone this repository
```
$ git clone https://github.com/martinezedwin/Data_modeling_with_postgres.git
```
2. Create virtual environment
```
$ cd Data_modeling_with_postgres
$ python3.10.4 -m venv .venv
$ source .venv/bin/activate
$ pip install -r requirements.txt
```
3. Start Postgres database
```
$ chmod +x start_db.sh
$ ./start_db.sh
```
4. Create tables
```
$ python create_tables.py
```
5. Run etl
```
$ python etl.py
```
6. Start jupyter notebook and test
```
$ jupyter notebook
Follow the link on terminal to the test.ipynb to run the test or to etl.ipynb to explore data
```

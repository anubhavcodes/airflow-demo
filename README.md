### An overview and demonstration of Airflow

The `Dockerfile` is based on the awesome `docker/airflow` repo by [puckel](https://github.com/puckel/docker-airflow)

Some bits from the `custom operators` section are taken from [Michal Karzynski's Blog](http://michal.karzynski.pl/blog/2017/03/19/developing-workflows-with-apache-airflow/)


### Usage

You can checkout tags to see different ways you can setup Airflow. 

* 1.1 - A working `Dockerfile` to get a basic installation of airflow webserver running on `localhost:8080/admin`
* 2.0 - `Dockerfile` with a custom dag 
* 3.0 - `Dockerfile` with a custom operator

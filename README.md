# crud-flask-webapp

## Summary

This is a CRUD Flask webapp with PostgreSQL as database.

## Test webapp locally with docker-compose

### Prerequisites
1. [Docker](https://docs.docker.com/get-docker/)
2. [docker-compose](https://docs.docker.com/compose/install/)

If you want to test webapp locally, launch the following command:

```
docker-compose up -d --build
```

The command above will run Flask webapp and PostgreSQL database as Docker containers.

## APIs index

This is the index of available APIs, you can test them both locally and inside `crud_flask` container:

* [GET - Get a specific row](#1-get---get-a-specific-row-by-id)
* [GET - Get all rows](#2-get---get-all-rows)
* [POST - Add a row](#3-post---add-a-row)
* [PUT - Update a specific row](#4-put---update-a-specific-row-by-id)
* [PUT - Update a specific row Copy](#5-put---delete-a-specific-row-by-id)

--------

### 1. GET - Get a specific row by ID



***Example:***

```bash
$ curl --location --request GET 'http://localhost:5001/data/1'
[(1, 'Apple', '1')]
```



### 2. GET - Get all rows



***Example:***

```bash
$ curl --location --request GET 'http://localhost:5001/data'
[(1, 'Apple', '1')]
```



### 3. POST - Add a row



***Example:***

```bash
$ curl --location --request POST 'http://localhost:5001/data'
Inserted 1 row
```



### 4. PUT - Update a specific row by ID



***Example:***

```bash
$ curl --location --request PUT 'http://localhost:5001/data/1'
updated
```



### 5. DELETE - Delete a specific row by ID



***Example:***

```bash
$ curl --location --request DELETE 'http://localhost:5001/data/1'
deleted
```


## Check data on PostgreSQL database

If you want to check that data have been inserted or removed correctly, launch following commands:

```bash
$ docker exec -it postgres /bin/bash

$ psql -h localhost -u root

> \c flask_project

> SELECT * FROM fruits;
 id | fruit | quantity
----+-------+----------
  1 | Apple | 1
(1 row)
```



---
[Back to top](#crud-flask-webapp)
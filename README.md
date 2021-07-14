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

* [GET - Get a specific row](#1-get---get-a-specific-row)
* [GET - Get all rows](#2-get---get-all-rows)
* [POST - Add a row](#3-post---add-a-row)
* [PUT - Update a specific row](#4-put---update-a-specific-row)
* [PUT - Update a specific row Copy](#5-put---update-a-specific-row-copy)

--------

### 1. GET - Get a specific row



***Endpoint:***

```bash
Method: GET
URL: http://localhost:5001/data/<id>
```



### 2. GET - Get all rows



***Endpoint:***

```bash
Method: GET
URL: http://localhost:5001/data
```



### 3. POST - Add a row



***Endpoint:***

```bash
Method: POST
URL: http://localhost:5001/data
```



### 4. PUT - Update a specific row



***Endpoint:***

```bash
Method: PUT
URL: http://localhost:5001/data/<id>
```



### 5. PUT - Update a specific row Copy



***Endpoint:***

```bash
Method: DELETE
URL: http://localhost:5001/data/<id>
```



---
[Back to top](#crud-flask-webapp)
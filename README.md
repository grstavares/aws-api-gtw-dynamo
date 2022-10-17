# Functionless CRUD Application

A simple API that provides CRUD (Create, Read, Update, Delete) operations for a simple TODO object.  
For the POC, there is no need for user authorization, but the interface should be as scalable as possible.

For a detailed API description, open the [openapi.yaml](./openapi.yaml) file on [https://editor.swagger.io/](https://editor.swagger.io/).

## API Specification

### Object specification

```json
{
  "id": "bb73670b-d5e6-42af-9e5a-ce4797841d3d",
  "title": "API",
  "description": "Create an API that meets the requirements"
}
```

### Endpoint specification

- Get all To-Do objects

  - GET: /v1/todo
  - Response: A list of To-Do objects or an empty list if no objects are stored

- Get To-Do object by id

  - GET: /v1/todo/{id}
  - Response: The requested To-Do object or status 404 if the object with provided id not found

- Create new To-Do object

  - PUT: /v1/todo

- Update existing To-Do object

  - PUT: /v1/todo/{id}

- Delete existing To-Do object
  - DELETE: /v1/todo/{id}

## Deployment Instructions

### Deployment Requirements

- AWS AWS Account.
- An AWS user/role with permissions listed in the file [permissions.json](./permissions.json).
- An AWS Bucket (preferable in the region that the deployment will be performed).
- AWS cli installed and configured in a local machine.

### Deployment Steps

- clone this repository in your local machine.
- configure the aws cli to use the user/role with the permissions informed above
- in your local machine, export the variable `bucket` with the bucket that will be used during the deployment
- in your local machine, export the variable `stackname` with the name to be used during the stack creation.
- run the script `./deploy.sh`
- the script will print the `url` to be used to test the challenge.

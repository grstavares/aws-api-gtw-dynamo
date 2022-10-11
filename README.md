# Programming task for Cloud Developers

Create a simple API that provides CRUD (Create, Read, Update, Delete) operations for a simple TODO object. The API should be implemented
using AWS Services and accessible via a public URL. For testing purposes, an AWS account can be created for free to implement the task.

There is no need for user authorization, but the interface should be as scalable as possible.

For a detailed API description, please copy the content of the attached [openapi.yml](./openapi.yml) file and paste it on [https://editor.swagger.io/](https://editor.swagger.io/).

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

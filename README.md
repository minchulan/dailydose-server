# Daily Dose - Backend
Welcome to Daily Dose, a patient and medication management system for cannabis practitioners. Daily Dose is a fullstack web app built with ReactJS frontend and Sinatra-Ruby backend. The focus of this project is building a Sinatra API backend that uses Active Record to access and persist data in a database, which will be used by a separate React frontend that interacts with the database via the API. The frontend was bootstrapped with [Create React App](https://github.com/facebook/create-react-app). Check out my backend: [Link to Frontend Repo](https://github.com/minchulan/dailydose-client)

[MIT](https://choosealicense.com/licenses/mit/)

## 🔗 Links

[![my_portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://github.com/minchulan)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/minchulan/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/itsminchul)


## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

Project requirements include:

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models: 
  The update action should be implemented using a form that is 
  pre-filled with existing values for the object. On submission of 
  the form, the object should update. Note: Using a like button or 
  similar will not meet the update requirement.
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. You should be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. You should NOT be relying on a GET request to update state. 
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary. 
- Routes in your application (both client side and back end) should follow RESTful
  conventions.

## Getting Started

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

The `app/controllers/application_controller.rb` file has an example GET route
handler.

The `app/controllers/patients_controller.rb` file has GET index, GET show, POST, PATCH, and DELETE route handlers. 

The `app/controllers/medications_controller.rb`file has GET index, GET show, POST, PATCH, and DELETE route handlers. 

You can start the server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/

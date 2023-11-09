# Coffee Review Backend
Welcome to the Coffee Review Backend! This Ruby on Rails application serves as the backend for the Coffee Review App, allowing users to create, retrieve, and manage coffee reviews. Below, you'll find information on how to set up and use the backend.

## Getting Started
### Installation:

# Clone the repository: git clone [repository-url]
Navigate to the project directory: `cd coffee-review-backend`
Install dependencies: `bundle install`

# Database Setup:
Configure the database in `config/database.yml.`
Create the database: `rails db:create`
Run the migrations: `rails db:migrate`

#Run the Server:
Start the Rails server: `rails server`
The server will be available at `http://localhost:3001`

## API Endpoints
### User Authentication:
`POST /api/v1/authenticate` : Authenticate a user and receive a token.
`POST /api/v1/register` : Register a new user.
### Coffee Reviews:
`GET /api/v1/reviews` : Get all coffee reviews.
`GET /api/v1/reviews/:id` : Get a specific coffee review.
`POST /api/v1/reviews` : Create a new coffee review.
`PUT /api/v1/reviews/:id` : Update a coffee review.
`DELETE /api/v1/reviews/:id` : Delete a coffee review.

## Authentication
Authentication is required for creating and managing coffee reviews. Include the authentication token in the request headers:


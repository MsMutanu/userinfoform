# User Info Form Project

This Laravel project combines both a Front-End and Back-End task as part of an assessment. The Front-End task involves creating a simple web page with a user information form, while the Back-End task involves building a basic RESTful API for a to-do list application.

## Getting Started

Follow these instructions to get the project up and running on your local machine for development and testing purposes.

### Prerequisites

- [PHP](https://www.php.net/) (>=8.1)
- [Composer](https://getcomposer.org/)
- [Node.js](https://nodejs.org/)
- [Laravel](https://laravel.com/docs/8.x/installation)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/MsMutanu/userinfoform.git

2. Navigate to the project directory:

   ```bash
   cd userinfoform

3. Install PHP dependencies:

   ```bash
   composer install

4. Install JavaScript dependencies:

   ```bash
   npm install

5. Create a copy of the .env file:

   ```bash
   cp .env.example .env

6. Generate an application key:

   ```bash
   php artisan key:generate

7. Configure your database settings in the .env file.

8. Run database migrations to create the required tables:

   ```bash
   php artisan migrate


### Usage

##### The project integrates both the Front-End and Back-End tasks within a single Laravel application.

#### Front-End Task
1. To access the Front-End task, open your web browser and go to:

   ```bash
   http://localhost:8000/frontend

2. You will see a user information form. Fill in your name and email address, and submit the form.

3. You will receive a thank you message with your name displayed on the page.

#### Back-End Task (To-Do List API)
1. The Back-End task exposes a RESTful API for a to-do list application.

#### Database
My database is in public/db directory

2. API endpoints:

- Create a new to-do item: POST http://localhost:8000/api/todos
- Retrieve a list of all to-do items: GET http://localhost:8000/api/todos
- Retrieve a single to-do item by its unique identifier: GET http://localhost:8000/api/todos/{id}
- Update a to-do item's title and/or description: PUT http://localhost:8000/api/todos/{id}
- Delete a to-do item: DELETE http://localhost:8000/api/todos/{id}

3. You can use tools like [Postman](https://www.postman.com/) to interact with the API.

### Running Tests

- To run tests, execute the following command:

  ```bash
  php artisan test

### Built With

[Laravel](https://laravel.com/) - The PHP framework used for both Front-End and Back-End development.


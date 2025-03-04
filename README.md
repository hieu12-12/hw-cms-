# Employee Manager CLI

## Description

Employee Manager is a command-line interface (CLI) application that allows business owners to view and manage their company's employee database. Users can view departments, roles, and employees, as well as add new entries and update employee roles

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Database Schema](#database-schema)
  - [Department](#department)
  - [Role](#role)
  - [Employee](#employee)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Installation

1. Clone the repository:

    ```bash
    git clone git@github.com:hieu12-12/hw-cms-.git

2. Navigate into the project directory:

    ```bash
    cd sqlemployeetracker
    ```

3. Install dependencies:

    ```bash
    npm install
    ```

4. Create a `.env` file in the root directory and add your PostgreSQL credentials:

    ```env
    DB_USER=your_username
    DB_PASSWORD=your_password
    DB_HOST=localhost
    DB_NAME=your_database_name
    DB_PORT=5432
    ```

5. Set up the database:

    ```bash
    psql -U postgres -f db/schema.sql
    psql -U postgres -f db/seed.sql
    ```

## Usage

To start the application, run:

```bash
npm start
```

## Features

- View all departments
- View all roles
- View all employees
- Add a department
- Add a role
- Add an employee
- Update an employee's role

## Database Schema

### Department

- `id`: INT PRIMARY KEY
- `name`: VARCHAR(30) NOT NULL

### Role

- `id`: INT PRIMARY KEY
- `title`: VARCHAR(30) NOT NULL
- `salary`: DECIMAL NOT NULL
- `department_id`: INT REFERENCES department(id)

### Employee

- `id`: INT PRIMARY KEY
- `first_name`: VARCHAR(30) NOT NULL
- `last_name`: VARCHAR(30) NOT NULL
- `role_id`: INT REFERENCES role(id)
- `manager_id`: INT REFERENCES employee(id) (nullable)

## Technologies Used

- Node.js
- TypeScript
- PostgreSQL
- Inquirer
- Figlet (for CLI styling)
- `pg` (PostgreSQL client)
- dotenv

## Contributing
# Employee Manager CLI

## Description

Employee Manager is a command-line interface (CLI) application that allows business owners to view and manage their company's employee database. Users can view departments, roles, and employees, as well as add new entries and update employee roles.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Database Schema](#database-schema)
  - [Department](#department)
  - [Role](#role)
  - [Employee](#employee)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Installation

1. Clone the repository:

    ```bash
    git clone 
    ```

2. Navigate into the project directory:

    ```bash
    cd sqlemployeetracker
    ```

3. Install dependencies:

    ```bash
    npm install
    ```

4. Create a `.env` file in the root directory and add your PostgreSQL credentials:

    ```env
    DB_USER=your_username
    DB_PASSWORD=your_password
    DB_HOST=localhost
    DB_NAME=your_database_name
    DB_PORT=5432
    ```

5. Set up the database:

    ```bash
    psql -U postgres -f db/schema.sql
    psql -U postgres -f db/seed.sql
    ```

## Usage

### Demo Video

Watch the demo video here: [Employee Manager CLI Demo](https://www.youtube.com/watch?v=S0t8_bCLXoI)


To start the application, run:

```bash
npm start
```

## Features

- View all departments
- View all roles
- View all employees
- Add a department
- Add a role
- Add an employee
- Update an employee's role

## Database Schema

### Department

- `id`: INT PRIMARY KEY
- `name`: VARCHAR(30) NOT NULL

### Role

- `id`: INT PRIMARY KEY
- `title`: VARCHAR(30) NOT NULL
- `salary`: DECIMAL NOT NULL
- `department_id`: INT REFERENCES department(id)

### Employee

- `id`: INT PRIMARY KEY
- `first_name`: VARCHAR(30) NOT NULL
- `last_name`: VARCHAR(30) NOT NULL
- `role_id`: INT REFERENCES role(id)
- `manager_id`: INT REFERENCES employee(id) (nullable)

## Technologies Used

- Node.js
- TypeScript
- PostgreSQL
- Inquirer
- Figlet (for CLI styling)
- `pg` (PostgreSQL client)
- dotenv

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).

## Contact

- GitHub: [hieu12-12](https://github.com/hieu12-12/hw-cms-)


Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).

## Contact

- GitHub: [hieu12-12](https://github.com/hieu12-12/hw-cms-)


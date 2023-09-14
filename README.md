# User Dashboard 

The User Dashboard is a web application based on servlet technology that allows for the management of users within the system. It facilitates basic CRUD (Create, Read, Update, Delete) operations for users.

## Dashboard Features:

### 1. Add User (`AddUser`):
   - **Path**: `/user/add`
   - **GET Method**: Redirects to the user addition form.
   - **POST Method**: Creates a new user in the database and redirects to the user list.

### 2. Delete User (`DeleteUser`):
   - **Path**: `/user/delete`
   - **GET Method**: Redirects to the user deletion confirmation form.
   - **POST Method**: Deletes the user if deletion consent is confirmed.

### 3. Display User Details (`ShowUser`):
   - **Path**: `/user/show`
   - **GET Method**: Displays detailed information about the selected user.

### 4. Edit User (`UserEdit`):
   - **Path**: `/user/edit`
   - **GET Method**: Redirects to the user edit form.
   - **POST Method**: Updates the user's information in the database.

### 5. List Users (`UserList`):
   - **Path**: `/user/list`
   - **GET Method**: Displays a list of all users in the database.

## Requirements:

- An application server that supports servlets (e.g., Apache Tomcat).
- A configured database.

## Author:
Michał Bartczak

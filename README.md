

```markdown
# ContactManager

## Overview

ContactManager is a Java Web application for managing contacts. The application allows users to add, delete, modify, and browse contacts. The front-end is built using Bootstrap, and the back-end uses Servlet, JSP, and MySQL.

## Requirements

- JDK 8 or higher
- Apache Maven
- MySQL Server
- Apache Tomcat or any other servlet container

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/ContactManager.git
cd ContactManager
```

### 2. Create the Database

Log into your MySQL server and create the database and table:

```sql
CREATE DATABASE contact_db;

USE contact_db;

CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(100),
    work VARCHAR(50)
);
```

### 3. Populate the Database

Insert at least 50 records into the `contacts` table for testing purposes. Here is a sample SQL script to insert records:

```sql
INSERT INTO contacts (name, phone, address, work) VALUES 
('John Doe', '1234567890', '123 Main St', 'Company A'),
('Jane Smith', '0987654321', '456 Elm St', 'Company B'),
-- Add more records as needed
;
```

### 4. Configure the Project

Update the database connection details in the `DBUtil.java` file:

```java
// DBUtil.java
package com.example.contactmanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/contact_db";
    private static final String USER = "root";
    private static final String PASSWORD = "password"; // Update with your MySQL password

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
```

### 5. Build the Project

Build the project using Maven:

```bash
mvn clean install
```

### 6. Deploy to Tomcat

Deploy the generated WAR file (`target/ContactManager.war`) to your Apache Tomcat server. You can do this by copying the WAR file to the `webapps` directory of your Tomcat installation.

### 7. Start Tomcat

Start your Tomcat server. Once Tomcat is running, you can access the application at:

```
http://localhost:8080/ContactManager/
```

## Usage

- **View Contacts**: Navigate to `http://localhost:8080/ContactManager/contacts?action=list` to view the list of contacts.
- **Add Contact**: Click the "Add New Contact" button on the contact list page to add a new contact.
- **Edit Contact**: Click the "Edit" button next to a contact to edit its details.
- **Delete Contact**: Click the "Delete" button next to a contact to delete it.

## Project Structure

```
ContactManager
│   pom.xml
├───src
│   └───main
│       ├───java
│       │   └───com
│       │       └───example
│       │           └───contactmanager
│       │               │   ContactServlet.java
│       │               │   DBUtil.java
│       └───webapp
│           ├───META-INF
│           ├───WEB-INF
│           │   │   web.xml
│           └───pages
│               │   index.jsp
│               │   listContacts.jsp
│               │   addContact.jsp
│               │   editContact.jsp
```

## Troubleshooting

- Ensure that MySQL server is running and the connection details in `DBUtil.java` are correct.
- Check the Tomcat server logs for any errors if the application fails to deploy or run.

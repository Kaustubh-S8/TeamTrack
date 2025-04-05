# 💼 TeamTrack - Spring MVC Application

Welcome to the **Employee Management System** – a robust web application built using the **Spring MVC Framework**, designed to streamline employee registration, authentication, and management for administrative and HR needs.

---

## 🚀 Features

### 👤 User Management
- **Register & Login** – Employees can securely register and log in.
- **Session Handling** – Maintains session with `HttpServletRequest`.

### 🛠️ Admin & Employee Dashboard
- **View All Employees** – Admins can see the complete employee list.
- **Add / Edit / Delete Employees** – Full CRUD functionality.
- **Status Updates** *(optional)* – Toggle employee active status with extended logic.

---

## 📊 Workflow Overview

```
Registration → Login → Dashboard  
Add/Edit Employees → Save Changes → View Updates
```

---

## 🖥️ Tech Stack

| Frontend | Backend     | Database | API Type          |
|----------|-------------|----------|-------------------|
| JSP      | Spring MVC  | MySQL    | RESTful Endpoints |

---

## 🔗 Key Endpoints

| Method | Endpoint   | Description                     | View       |
|--------|------------|---------------------------------|------------|
| GET    | `/`        | Registration page               | `index.jsp` |
| POST   | `/save`    | Save new employee               | `login.jsp` |
| POST   | `/login`   | Authenticate user               | `home.jsp` or `login.jsp` |
| GET    | `/home`    | Show employee dashboard         | `home.jsp` |
| GET    | `/edit`    | Edit employee by ID             | `add.jsp` |
| GET    | `/delete`  | Delete employee by ID           | `home.jsp` |

---

## 📁 Project Structure

```
emp-mvc-app/
├── src/main/java
│   └── com/ty/empapp
│       ├── EmpController.java       # Controller logic
│       ├── entity/                  # Employee POJO
│       └── service/                 # Business logic
├── src/main/webapp
│   ├── index.jsp                    # Registration
│   ├── login.jsp                    # Login
│   ├── home.jsp                     # Dashboard
│   └── add.jsp                      # Add/Edit form
└── pom.xml                          # Maven dependencies
```

---

## ⚙️ Setup Instructions

### ✅ Prerequisites

- Java 17+
- Apache Tomcat 9+
- Maven
- MySQL (or another RDBMS)

### 🛠️ Configuration

Edit `application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/emp_db
spring.datasource.username=root
spring.datasource.password=yourpassword
```

### 🌐 Access the App

Open in browser:

```
http://localhost:8080/
```

---

## 💡 How It Works

- **Registration** – Fill out `index.jsp`, data goes to `/save`.
- **Login** – Submit credentials to `/login`, session is created.
- **Dashboard** – Add/Edit/Delete employees via provided endpoints.

---

## 📜 License

[MIT License](LICENSE)

Feel free to fork, contribute, or customize this project to suit your needs.

---

## 📧 Contact

For issues, suggestions, or improvements:

**Kaustubh Satam**  
✉️ satamkaustubh2003@email.com  
🔗 [GitHub - Kaustubh-S8](https://github.com/Kaustubh-S8)

---

### 👥 Simplify HR Management – One Employee at a Time!

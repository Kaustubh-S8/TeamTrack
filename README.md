TeamTrack - Spring MVC Application
🌟 Welcome to the Employee Management System
A robust Spring MVC application designed for seamless employee registration, authentication, and CRUD operations. Perfect for HR management, team tracking, and administrative tasks.

🎯 Core Features
👤 User Management
Register & Login: Employees can securely register and log in.

Session Handling: Uses HttpServletRequest for authentication.

🛠️ Admin & Employee Dashboard
View All Employees: Admins can see the complete employee list.

Add/Edit/Delete: Full CRUD functionality for employee records.

Status Updates: Toggle employee activity (if extended with service logic).

📊 Workflow
Registration → Login → Dashboard

Add/Edit Employees → Save Changes → View Updates

🖥️ Technology Stack
Frontend	Backend	Database	APIs
🔹 JSP	🍃 Spring MVC	🗃️ MySQL (or any RDBMS)	🔗 RESTful Controllers
🚀 Key Endpoints
HTTP Method	Endpoint	Description	View
GET	/	Registration page	index.jsp
POST	/save	Saves new employee	login.jsp
POST	/login	Authenticates user	home.jsp or login.jsp
GET	/home	Shows all employees (dashboard)	home.jsp
GET	/edit	Edits employee by ID	add.jsp
GET	/delete	Deletes employee by ID	home.jsp
📂 Project Structure
plaintext
Copy
📂 emp-mvc-app  
├── 📁 src/main/java  
│   └── 📁 com/ty/empapp  
│       ├── 📄 EmpController.java  # Controller logic  
│       ├── 📁 entity              # Employee POJO  
│       └── 📁 service             # Business logic  
├── 📁 src/main/webapp  
│   ├── 📄 index.jsp              # Registration  
│   ├── 📄 login.jsp              # Login  
│   ├── 📄 home.jsp               # Dashboard  
│   └── 📄 add.jsp                # Add/Edit form  
└── 📄 pom.xml                    # Maven dependencies  
🛠️ Setup Instructions
✅ Prerequisites
Java JDK 17+

Apache Tomcat 9+

Maven

MySQL (or any database configured in application.properties)

⚙️ Configuration
Database Setup:

properties
Copy
spring.datasource.url=jdbc:mysql://localhost:3306/emp_db  
spring.datasource.username=root  
spring.datasource.password=yourpassword  

💡 How It Works
Employee Registration:

Fill details in index.jsp → Submit to /save.

Login:

Enter credentials → /login validates → Redirects to home.jsp.

Manage Employees:

Add: Via add.jsp.

Edit/Delete: Admins use /edit or /delete endpoints.

📜 License
MIT License. Contribute or fork freely!

📧 Contact
For questions or enhancements:
✉️ satamkaustubh2003@email.com

Simplify HR management today! 👥💼

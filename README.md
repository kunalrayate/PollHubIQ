#   PollHubIQ Spring MVC CRUD Application

# Overview

 PollHubIQ is a Spring MVC-based web application designed to manage election candidates and allow users to contact the election management team. It supports basic CRUD (Create, Read, Update, Delete) operations for candidates, including functionalities to search for candidates by their name. Additionally, the application features a Contact Us form, where users can submit their inquiries, and the form data is stored in a database for easy access and response.


## Features and Operations :

1.Add Candidate :
	Administrators can add new candidates with details such as name, party, position, and contact information. 
2.Update Candidate:
	 Existing candidate details can be modified, including personal and campaign information.
3.Delete Candidate: 
	Candidates can be removed from the system if they are disqualified or withdrawn.
4.Search Candidates:
	 Users can search for candidates by their name to find relevant profiles.

## Attributes
Each candidate record consists of the following attributes:
- **c_id**: Candidate ID (Unique Identifier)
- **name**: Full name of the candidate
- **partyname**: Political party name
- **assembly**: Assembly constituency
- **statename**: Name of the state
- **gender**: Gender of the candidate
- **age**: Age of the candidate

## Technologies Used

- **Spring MVC** :  The core framework for building the web application using the Model-View-Controller (MVC) design pattern. Spring MVC handles the request mapping,
	 data binding, and model-view separation.
- **JDBC** : Java Database Connectivity, is used for interacting with the database to perform CRUD operations (Create, Read, Update, Delete) on the candidate and contact form records.
-**HTML & CSS** : These technologies are used for creating the user interface of the application. HTML structures the content, while CSS ensures a responsive and visually appealing layout.
- **Spring Initializr** : Spring Initializr was used to set up the initial project structure for Spring MVC with the necessary dependencies, allowing for quick project scaffolding.
- **Apache Tomcat** :  The servlet container that runs the Spring MVC application, providing necessary support for servlets and JSP (Java Server Pages).
- **JDBC** : MySQL (or other relational databases): The database used to store candidate details and contact form submissions.


##  To create a Spring Boot project using Spring Initializr, download it, extract the files, and then import it into Eclipse, follow these steps :

  1. Create the Project using Spring Initializr :
  -  Go to the Spring Initializr website : Spring Initializ
  -  Project Settings :
  -  Project : Choose Maven Project or Gradle Project (For this example, we'll use Maven).
  -  Language : Choose Java.
  -  Spring Boot Version : Select the latest stable version.
   
 2. Project Metadata :
  - Group : com.example (or your preferred group name)
  - Artifact : springbootproject (or your project name)
  - Description : A simple Spring Boot project.
  - Package Name: com.example.springboot.
  - Packaging : Choose Jar (unless you need a WAR file).
  - Java Version : Choose your JDK version (17 or later).
   
3. Dependencies :
  - Spring Web: For building the web application using Spring MVC and handling HTTP requests.
  - Spring DevTools: For automatic application restarts and improved development-time experience.
  - JPA (Java Persistence API): For managing relational data between Java objects and a relational database, although JDBC is primarily used for database operations.
  - Servlet : Provides necessary support for handling HTTP requests and managing servlets in the application.
  - JSTL : (JavaServer Pages Standard Tag Library) this is required for using JSP tags in Spring MVC views.
  - MYSQL : MySQL Connector this dependency provides the MySQL JDBC driver to connect the Spring application with a MySQL database.

 ## 
For any inquiries, questions, or feedback related to this project, feel free to reach out to me:

- GitHub :  (https://github.com/kunalrayate)
- Email :  (kunalrayate126@gmail.com)

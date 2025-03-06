

Use an IDE like NetBeans or Eclipse configured with a server (e.g., Apache TomEE or WildFly).
Configure the server:

Deploy the project on a Java EE-compliant server.Deployec on glassfish serverAccess the application:

Open a browser and navigate .
Usage
Session Initialization:

When a user accesses the StartSession servlet via a GET request, the servlet initializes the session attributes icount (set to 0) and correctGuess (set to 0).
Request Forwarding:

After initializing the session, the servlet forwards the request to the name.html page.
Example of Session Initialization:
java
Copy code
HttpSession session = request.getSession(true);
Integer icount = 0;
Integer correctGuess = 0;
session.setAttribute("icount", icount);
session.setAttribute("correctGuess", correctGuess);
Request Forwarding:
java
Copy code
RequestDispatcher disp = request.getRequestDispatcher("name.html");
disp.forward(request, response);
Features
Session Management: Starts a session and initializes session variables.
Request Forwarding: Forwards requests to an HTML page using RequestDispatcher.
Handles GET and POST Requests: The servlet processes both types of requests

Developed by Sifiso Vinjwa

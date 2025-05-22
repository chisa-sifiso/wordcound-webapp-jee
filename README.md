
Here's a more structured and polished version of your deployment and usage documentation for a Java EE web application using servlets:

---

## 🚀 Java EE Web Application Deployment & Usage Guide

### 🧰 Tools Required

* **IDE:** NetBeans or Eclipse
* **Server:** Apache TomEE, WildFly, or GlassFish (Java EE-compliant)
* **Browser:** Any modern web browser

---

### 🔧 Server Configuration

1. **Install and configure a Java EE server**, such as:

   * **GlassFish Server** (preferred in this guide)
   * Apache TomEE
   * WildFly

2. **Integrate the server with your IDE**:

   * In NetBeans: Use the "Services" tab to register and start GlassFish.
   * In Eclipse: Use the "Servers" tab to add a new server runtime environment.

3. **Deploy the project**:

   * Clean and build your project.
   * Deploy to the configured server directly via your IDE or manually drop the `.war` file into the server's deployment directory.

---

### 🌐 Accessing the Application

* Open your browser.
* Navigate to the servlet entry point:

  ```
  http://localhost:8080/YourProjectName/StartSession
  ```

---

### ⚙️ Session Initialization Logic

When a user sends a `GET` request to the `StartSession` servlet, the following occurs:

#### Java Code – Session Initialization

```java
HttpSession session = request.getSession(true);
Integer icount = 0;
Integer correctGuess = 0;
session.setAttribute("icount", icount);
session.setAttribute("correctGuess", correctGuess);
```

This ensures every user session starts with a clean slate.

---

### 🔄 Request Forwarding

After session variables are set, the request is forwarded to the `name.html` page:

#### Java Code – Request Dispatching

```java
RequestDispatcher disp = request.getRequestDispatcher("name.html");
disp.forward(request, response);
```

---

### ✅ Features Summary

* **Session Management**

  * Automatically creates a session with initialized values (`icount`, `correctGuess`).

* **Request Forwarding**

  * Cleanly forwards the user to a designated HTML page after initialization.

* **GET and POST Handling**

  * The servlet is capable of handling both `GET` and `POST` requests (you can override both `doGet()` and `doPost()` methods).

---

### 📌 Author

**Developed by:** Sifiso Vinjwa

---

Let me know if you'd like help with deployment steps, writing the `web.xml`, or adding more servlet features like form processing or session timeout handling.


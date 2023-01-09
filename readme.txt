Eclipse setup
1. File -> Import -> Maven -> Existing Meven Project
2. Run Maven Clen
3. Run Maven Install
4. Maven -> Update Project
5. Project Clean
6. Run As -> On Server
7. How to access URL - http://localhost:8080/SanguineMenus/ModeOfOperation.html?clientCode=412.005
8. Where 412.005 is the client code. Please check in yout tblsetup and use that  client code.

Additional Project Setup
Right Click -> Properties ->

Database configuration
1. Database configuration is present in /SanguineMenus/src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml

Developer Note
1. Way to access session var on JSP <%=session.getAttribute(clsSessionConstants.SV_CLIENT_CODE).toString()%>
2. Constant class import on jsp <%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
3. How to access URL - http://localhost:8080/SanguineMenus/ModeOfOperation.html?clientCode=412.005
4. clientCode=  parameter is mandatory and should have valid client code.
5. 
6.
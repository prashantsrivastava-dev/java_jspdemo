<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.prashant.jsp.tagdemo.Student" %>

<%
    // just create some sample data ... normally provided by MVC
    List<Student> data = new ArrayList<>();

    data.add(new Student("Prashant", "Kumar", false));
    data.add(new Student("Prince", "Raj", false));
    data.add(new Student("Prakash", "Srivastava", true));
    
    pageContext.setAttribute("myStudents", data);
    
%>

<html>

<body>

   <table border="1">
   
   <tr>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Gold Customer</th>
   </tr>

    <c:forEach var="tempStudent" items="${myStudents}">
    
        <tr>
            <td>${tempStudent.firstName}</td>
            <td> ${tempStudent.lastName}</td>
            <td> ${tempStudent.goldCustomer}</td>
        </tr>
    
    </c:forEach>
    
   </table>

</body>

</html>
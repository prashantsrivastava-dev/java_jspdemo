<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Student Tracker App</title>
    
    <link type="text/css" rel="stylesheet" href="css/style.css">
    
    <!-- Latest compiled and minified CSS -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	
	<!-- Optional theme -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
	
	<!-- Latest compiled and minified JavaScript -->
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	
</head>

<body>

   <div id="wrapper">
       <div id="header">
           <h2>FooBar University</h2>
       </div>
   </div>
   
   <div id="container">
       <div id="content">
       
           <!-- put new button: Add Student -->
           
           <input type="button" value="Add Student"
                  onclick="window.location.href='add-student-form.jsp'; return false;"
                  class="add-student-button"
           />
           
           <!--  add a search box -->
            <form action="StudentControllerServlet" method="GET">
        
                <input type="hidden" name="command" value="SEARCH" />
            
                Search student: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-student-button" />
            
            </form>
            
           <table class="table table-striped">
           
             <thead>                
               <tr>
                   <th>First Name</th>
                   <th>Last Name</th>
                   <th>Email</th>
                   <th>Action</th>
               </tr>
             </thead>
               
             <tbody>
               <c:forEach var="tempStudent" items="${STUDENT_LIST}">
                   
                   <!-- set up a link for each student -->
                   <c:url var="tempLink" value="StudentControllerServlet">
                       <c:param name="command" value="LOAD" />
                       <c:param name="studentId" value="${tempStudent.id}" />
                   </c:url>
                   
                   <!-- set up a link for delete student -->
                   <c:url var="deleteLink" value="StudentControllerServlet">
                       <c:param name="command" value="DELETE" />
                       <c:param name="studentId" value="${tempStudent.id}" />
                   </c:url>
                   
                   <tr>
                       <td> ${tempStudent.firstName} </td>
                       <td> ${tempStudent.lastName} </td>
                       <td> ${tempStudent.email} </td>
                       <td> <a href="${tempLink}">Update</a>
                            |
                            <a href="${deleteLink}"
                            onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
                            Delete</a>
                       </td>
                   </tr>
               
               </c:forEach>
               
             </tbody>
               
           </table>
       
       </div>
       
   </div>

</body>

</html>
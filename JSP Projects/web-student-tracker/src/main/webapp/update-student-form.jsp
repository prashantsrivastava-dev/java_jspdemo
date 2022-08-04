<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Update Student</title>
    
    <link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
	
	<script type="text/javascript" src="js/student-validation.js"></script>
    
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
          <h3>Update Student</h3>
          
          <form action="StudentControllerServlet" method="GET" name="studentForm" onSubmit="return validateForm()">
          
              <input type="hidden" name="command" value="UPDATE" />
              
              <input type="hidden" name="studentId" value="${THE_STUDENT.id}" />
              
              <table>
                  <tbody>
                      <tr>
                          <td><label>First name:</label></td>
                          <td><input type="text" name="firstName"
                                     value="${THE_STUDENT.firstName}" /></td> 
                      </tr>
                      
                      <tr>
                          <td><label>Last name:</label></td>
                          <td><input type="text" name="lastName"
                                     value="${THE_STUDENT.lastName}" /></td> 
                      </tr>
                      
                      <tr>
                          <td><label>Email:</label></td>
                          <td><input type="text" name="email"
                                     value="${THE_STUDENT.email}" /></td> 
                      </tr>
                      
                      <tr>
                          <td><label></label></td>
                          <td><input type="submit" value="Save" class="save" /></td> 
                      </tr>
                      
                  </tbody>
              </table>
          </form>
          
          <div style="clear: both;"></div>
          
          <p>
              <a href="StudentControllerServlet">Back to List</a>
          </p>
      </div>

</body>

</html>
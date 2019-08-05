<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
       <h1>User Login</h1>
       <form:form method="post" action="newreg">  
      	<table >  
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>   
         <tr>  
          <td>Mobile :</td>  
          <td><form:input path="mobile" /></td>
         </tr> 
         <tr>  
          <td>Email : </td> 
          <td><form:input path="email"  /></td>
         </tr>   
         <tr>  
          <td>password :</td>  
          <td><form:input type="password" path="newpassword" /></td>
         </tr> 
         <tr>  
          <td>admin level :</td>  
          <td><form:input path="adminlevel" /></td>
         </tr>
         <tr>   
          <td></td>
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form:form>  

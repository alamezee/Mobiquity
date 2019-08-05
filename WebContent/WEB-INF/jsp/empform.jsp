<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<head>
<% 

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
  <title>Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="control.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script type = "text/javascript" 
        src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
     </script>
     <script type = "text/javascript" 
        src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js">
     </script>
       
     <script type = "text/javascript" language = "javascript">
  
        $(document).ready(function() {
            //   $(".target").effect( "bounce", {times:1}, 700 );
            $(".target").effect( "bounce", {times:2},"slow");

        });
		response.setHeader("cache-control","no-cache","no-store","must-revalidate");

     </script>   
</head>

<body style="background-color:white;">
<div class= " container-fluid justify-content-center align-content-center target .mx-auto mt-3"  style="border-radius: 20pt; background-color:rgb(255, 101, 45); color:black; min-width:250pt; width:40%; padding:15pt; ">

        <div class="container">
            <div class="row" style="text-align: center; width: inherit;">
                <img src="https://png.pngtree.com/svg/20170719/ec5498919c.svg" alt="logo" style="width:40px; margin-right:15pt;background-color:#222222;border-radius:50%;">
                <h2 style="text-align: center; color:azure">MOBIQUITY</h2>
            </div>

       <form:form method="post" action="empform/save">  
              <div class="form-group">
                <br><label for="username">Username:</label>
                <br><form:input path="username" class="form-control" placeholder="Enter username" />
              </div>
              <div class="form-group">
                <label for="pwd">Password:</label>
                <br><form:input type="password" path="password" class="form-control" placeholder="Enter password" />
              </div>  
           
          <input type="submit" class="btn btn-secondary" value="Submit" />  
           
       </form:form>  
       </div>
       </div>
       
       
       
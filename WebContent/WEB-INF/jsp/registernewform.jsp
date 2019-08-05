<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
  
	<title>Create New User</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="control.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
 
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="#">
              <img src="https://png.pngtree.com/svg/20170719/ec5498919c.svg" alt="logo" style="width:40px;">
            </a>
            <!-- Links -->
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Create User</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/Inbox/save/viewnotf/">Inbox</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/Inbox/empform">Signout</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-lg-0"  >
  				<div class="input-group" style="float:right">
    				<input class="form-control" type="search" placeholder="Search">
    <div class="input-group-append">
      <div class="input-group-text"><img src="D:\eclipse-workspace\Inbox\WebContent\WEB-INF\jsp\svg\search.svg"/></div>
      
    </div>
  </div>
</form>

        </nav>
		
        <div class="container-fluid">
                <!-- Control the column width, and how they should appear on different devices -->
                <div class="row">
              
                  <div class="col-sm-12 sc" style="background-color:rgb(204, 204, 204); border:2%; min-height:100pt;">
  
                     <div class="container .mx-auto" style="width=40%; min-width:150pt; ">
                            <h2>New User Registration </h2>
                            
                            <form:form method="post" action="newreg" >  
                                    <div class="form-group">
                                            <label >Username:</label>
                                            <form:input    class="form-control usn"  placeholder="Enter username" path="name"/>
                                          </div>
                                          <div class="form-group">
                                                <label >Mobile:</label>
                                                <form:input class="form-control"  placeholder="Enter Mobile" path="mobile"/>
                                              </div>
                                              <div class="form-group">
                                                    <label>Email:</label>
                                                    <form:input type="email" class="form-control"  placeholder="Enter email"  path="email"/>
                                                  </div>
                                                  <div class="form-group">
                                                        <label>Password:</label>
                                                        <form:input type="password" class="form-control" placeholder="Enter password" path="newpassword"/>
                                                      </div>
                                                      <label>Select Admin Level:</label>
                                                      <form:select name="levels" class="custom-select mb-3" path="adminlevel" placeholder="Select Admin Level">
                                                            <option value="na">Network Admin</option>
                                                            <option value="ca" selected>Channel Admin</option>
                                                          </form:select>

                              <br><input type="submit" class="btn btn-primary save" value="Save" style="align-content: center">
                            </form:form>
                        
                        

                        
            </div>
         
    </body>  
 
 
 <script type="text/javascript">
 
 //var queryString=location.search;
 $(document).ready(function() {
	
	 //var urlprams = new URLSearchParams(location.search);
	// var x=urlprams.get('pop');
	var x=window.location.href;
	
	 var y=x[x.length-1];
	 
	 if(y==1)
		 {
		 alert("Username already exists");
		 }
	 if(y==2)
	 {
	 alert("Success");
	 }
     });
 
</script>
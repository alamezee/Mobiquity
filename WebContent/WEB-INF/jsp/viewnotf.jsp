<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<head>
	<title>Home</title>
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
                <a class="nav-link" href="/Inbox/empform/registernewform">Create User</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/Inbox/save/viewnotf">Inbox</a>
              </li>
              <li class="nav-item">
                <a class="nav-link signout" href="/Inbox/empform">Signout</a>
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
<p class="adminname ml-auto" style="color:white;"><i>logged in as: </</i><b>${adminDetail}</b></p>
        </nav>


        <div class="container-fluid">
                <!-- Control the column width, and how they should appear on different devices -->
                <div class="row">
                  <div class="col-sm-2" data-toggle="collapse" href="#options" style="background-color:#F88C4E; border:2%; min-height:100pt; padding:10pt;">
                    <div class="container">
                           
                            <div>
                                    <ul class="nav flex-column" style="color: beige;">
                                      <li class="nav-item">
                                        <a class="nav-link text-white All" style="font-size:15pt;" href="#"><b>All</b></a>
                                      </li>
                                      <li class="nav-item">
                                        <a class="nav-link text-white Unread" style="font-size:15pt;" href="#">Unread</a>
                                      </li>
                                      <li class="nav-item">
                                        <a class="nav-link text-white Archive" style="font-size:15pt; " href="#">Archive</a>
                                      </li>
                                    </ul>
                                    
    
                                  </div>
                            </div>
                          
                </div>
                
                  <div class="col-sm-10 sc" style="background-color:rgb(204, 204, 204); border:2%; min-height:100pt;">
                    <h2 style="margin-left:15px;margin-top:10px">Inbox</h2>
                    <div class="container row">
                      <div class="col-sm-7">
                        <input class="form-control" id="myInput" type="text" placeholder="Search..">
                      </div>
                      <div class="col-sm-5">
                              <button type="button" class="btn btn-default btn-lg " style="background-color:#F88C4E"><img src="\Inbox\svg\search.svg"/></button>
                              <button type="button" class="btn btn-default btn-lg delete" style="background-color:#F88C4E"><img src="\Inbox\svg\trashcan.svg"/></button>
                              <button type="button" class="btn btn-default btn-lg archive" style="background-color:#F88C4E"><img src="\Inbox\svg\archive.svg"/></span></button>
                              <button type="button" class="btn btn-default btn-lg" style="background-color:#F88C4E"><img src="\Inbox\svg\chevron-left.svg"/></button>
                              <button type="button" class="btn btn-default btn-lg" style="background-color:#F88C4E"><img src="\Inbox\svg\chevron-right.svg"/></button>
                      </div>
                    </div>
                
                         <table class="table table-inbox table-hover myclass" id="myTable">
                      <tbody>
                      <c:forEach var="msg" items="${list}">

                      <c:if test="${ msg.read==false && msg.delete==false && msg.archive==false}">
                        <tr style="height: 3">
                            <td class="inbox-small-cells" >
                                <input type="checkbox" class="mail-checkbox" value="${msg.serial}">
                            </td>
                            <td class="table-row"  data-toggle="modal" data-target="#myModal"><b>${msg.serial}</b></td>
                            <td class="inbox-small-cells"><i class="glyphicon glyphicon-star"></i></td>
                           
                            <td id = "hi" class="view-message  dont-show bold"><b><div class="table-row"  data-toggle="modal" data-target="#myModal">${msg.sender}</div></div></b></td>
                            <td class="view-message "><b>${msg.subject}</b><td>
                            
                            <td  class="view-message  inbox-small-cells " style="height: 3" ><i class="fa fa-paperclip"><div class="table-row"  data-toggle="modal" data-target="#myModal"><b>${msg.content}</b></div></i></td>
                            <td class="view-message  date"><b>${msg.date}</b></td>
                            <td class="view-message  text-right"><b>${msg.time}</b></td>
                        </tr></c:if>
                         <c:if test="${ msg.read==true && msg.delete==false && msg.archive==false}">
                        <tr style="height: 1px">
                            <td class="inbox-small-cells">
                                <input type="checkbox" class="mail-checkbox" value="${msg.serial}">
                            </td>
                            <td class="table-row"  data-toggle="modal" data-target="#myModal"> ${msg.serial}</td>
                           
                            <td class="inbox-small-cells"><i class="glyphicon glyphicon-star"></i></td>
                           
                            <td id = "hi" class="view-message  dont-show bold"><div class="table-row"  data-toggle="modal" data-target="#myModal">${msg.sender}</div></div></td>
                            <td class="view-message ">${msg.subject}<td>
                            
                            <td class="view-message  inbox-small-cells" height="30" style="soverflow: hidden; text-overflow: ellipsis;"><i class="fa fa-paperclip"><div class="table-row"  data-toggle="modal" data-target="#myModal">${msg.content}</i><div></div></td>
                            <td class="view-message  date">${msg.date}</td>
                            <td class="view-message  text-right">${msg.time}</td>
                        </tr></c:if>
                        </c:forEach>
                        </tbody>
                        </table>
                  </div>
                </div>
        </div>
        <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title"></h4>
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" id="sub">
                    </div>
                    <div class="modal-footer">
        
                        <button type="button" class="btn btn-default approve" id="approve">Approve</button>
                        <button type="button" class="btn btn-default close" data-dismiss="modal">Close</button>
                    </div>
                  </div>
              
                </div>
              </div>
        <script type="text/javascript">

        $(document).ready(function(){
          $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
        
        
        $(document).ready(function($){
        	$(".table-row").click(function(){
        		var item = $(this).closest("tr").text();
        		item = item.replace(/\s+/g,' ').trim();
        		
        		//document.write(item);
        		//javascript:window.location.href="/read"
        		//serial = item.split(" ",1);
        	 temp = item.split(" ");
        	 //document.getElementById("sub").innerHTML=item;
        	 var sub="";
     		for(i=2;i<temp.length-5;i++)
     			{
     				sub +=temp[i];
     				sub +=" ";
     			}
     		var adm=$(".adminname").text().split(" ")[3];
     		//document.write(adm.split(" ")[3]);
     		if(temp[1]!=adm)
        		{document.getElementById("sub").innerHTML=" Notification ID: "+temp[0]+" <br>"+" Sender: "+ temp[1]+" <br>"+sub+" <br>"+
        		"Name: "+ temp[temp.length-5]+" <br>"+" Email : "+temp[temp.length-4]+"<br>"+" Mobile : "+temp[temp.length-3] ;}
     		
     		if(temp[1]==adm)
    		{document.getElementById("sub").innerHTML=" Notification ID: "+temp[0]+" <br>"+sub+"<br>"+
    		" Name: "+ temp[temp.length-5]+" <br>"+" Email : "+temp[temp.length-4]+"<br>"+" Mobile : "+temp[temp.length-3] ;
    		document.getElementById("approve").style.display = "none";
    		}
        		
        		
        	});
        });
        
        
        $(document).ready(function($){
        	$(".close").click(function(){
        		var item = document.getElementById("sub").innerHTML;
        		//item = item.replace(/\s+/g,' ').trim();
        		serial = parseInt(item.split(" ")[3]);
        		//document.write("/Inbox/viewnotf/read/"+item.split(" ")[3]);
        /* 	item = item.replace(/\s+/g,' ').trim(); */
        		javascript:window.location.href="/Inbox/save/read/"+serial;
        location.reload();
        
        	});
        });
        	
        $(document).ready(function($){
        	$(".approve").click(function(){
        		var item = document.getElementById("sub").innerHTML;
        		//item = item.replace(/\s+/g,' ').trim();
        		name = item.split(" ")[11];
        		serial = parseInt(item.split(" ")[3]);
        		//document.write("/Inbox/viewnotf/read/"+name);
        /* 	item = item.replace(/\s+/g,' ').trim(); */
        		javascript:window.location.href="/Inbox/save/approve/"+name;
        		javascript:window.location.href="/Inbox/save/read/"+serial;
        location.reload();
        
        	});
        });
        
        $(document).ready(function($){
        	$(".delete").click(function(){
        		var favorite = [];
                $.each($("input[type='checkbox']:checked"), function(){ 
                	javascript:window.location.href="/Inbox/save/delete/"+$(this).val();
                    favorite.push($(this).val());
                    });
               // document.write(favorite.join(","));
                location.reload();
        	});
        	});
        
        $(document).ready(function($){
        	$(".archive").click(function(){
        		var favorite = [];
                $.each($("input[type='checkbox']:checked"), function(){ 
                	javascript:window.location.href="/Inbox/save/archive/"+$(this).val();
                    favorite.push($(this).val());
                    });
               // document.write(favorite.join(","));
                location.reload();
        	});
        	});
        
        $(document).ready(function($){
        	$(".Archive").click(function(){
        		javascript:window.location.href="/Inbox/save/archive";
        	});
        });
        
        $(document).ready(function($){
        	$(".All").click(function(){
        		javascript:window.location.href="/Inbox/save/viewnotf/";
        	location.reload();
        	});
        });
        $(document).ready(function($){
        	$(".Unread").click(function(){
        		javascript:window.location.href="/Inbox/save/unread/";
        	});
        });
        
      
		response.setHeader("cache-control","no-cache","no-store","must-revalidate");

            </script>
    </body>  
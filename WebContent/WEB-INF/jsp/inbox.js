      $(function(){
              $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
              });
            });
            
            $(function($){
            	$(".table-row").click(function(){
            		var item = $(this).closest("tr").text();
            		item = item.replace(/\s+/g,' ').trim();
            		//document.write($item);
            		//javascript:window.location.href="/read"
            		document.getElementById("sub").innerHTML=item.charAt(0);
            		
            	});
            });
            
            $(function($){
            	$(".btn").click(function(){
            		var item = document.getElementById("sub").innerHTML;
            /* 	item = item.replace(/\s+/g,' ').trim(); */
            		javascript:window.location.href="/Inbox/viewnotf/read/"+item;
            location.reload();
            
            	});
            });
            	
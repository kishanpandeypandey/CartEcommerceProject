<%
String message =(String)session.getAttribute("message");
if(message != null){
%>
<div class="container">
<div class="alert alert-success alert-dismissible fade show text-center" style="width: 100%;" role="alert">
  <strong><%= message %></strong> 
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</div>


	<% 
	session.removeAttribute("message");
}
	
%>


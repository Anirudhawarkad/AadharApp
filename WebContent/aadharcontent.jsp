<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="row">
	<div class="col-md-12 p-4">
		<h4><a href="createaadhar.jsp"><img src="resources/images/addharimage.jpeg" width="40" height="40"/>Click Here For New Aadhar Card</a></h4>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
	<table class="table table-success table-striped">
	<tr>
		<th>ACTION</th>
		<th>ID</th>
		<th>NAME</th>
		<th>CONTACT</th>
		<th>ADDRESS</th>
		</tr>
		<%
		for(int i=1;i<=5;i++)
		{
		
		%>
		<tr>
			<td>ACTION</td>
			<td>ID</td>
			<td>NAME</td>
			<td>CONTACT</td>
			<td>ADDRESS</td>
			
		</tr>
		<% 	
			
		}
		
		%>
	</table>
	</div>
</div>
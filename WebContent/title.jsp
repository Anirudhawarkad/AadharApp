<%@page import="org.nlt.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
 <div class="row  bg-primary p-4">
 	<div class="col-md-8 text-light">
 		<h3>Aadhar Application</h3>
 	</div>
 		
 	<div class="col-md-4 text-light">
 	<%
 	Users user=(Users)session.getAttribute("LoginUser");
 	%>
 	
 		<h6><%=session.getAttribute("LoginUser")==null?"":"Login:"+(user.getName()) %></h6>
 		<h6><%=session.getAttribute("IP")==null?"":"Your Ip:"+session.getAttribute("IP") %></h6>
 		<h6 class="text-light"><%=session.getAttribute("LoginUser")!=null?"<a class='text-light'  href='./aadhar?page=LogoutPage'>Logout</a>":"" %></h6>
 	</div>
 </div>
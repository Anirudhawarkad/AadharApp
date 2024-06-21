<%@page import="org.nlt.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
Users user=(Users)session.getAttribute("LoginUser");
if(user!=null)//already login
{
response.sendRedirect("index.jsp");	
}
%>


<html>
<jsp:include page="headerpage.jsp"></jsp:include>

<style type="text/css">
body 
	{
	/*font-family:cursive;*/
	/*background-color:#D1E7DD;*/
	/*background: linear-gradient(to bottom,#D1E7DD,#DFBFC6);*/
	/*background-color:#ff6600;*/
	background: linear-gradient(to right, #FFFFFF, #98FB98, #66CDAA 80%);
	/*background: radius-gradient(circle, #009888, #BE398D, #EBBBDD);*/
	/*margin:20px;*/
	/*padding:10px;*/
	}
</style>

<body>
	<form action="./aadhar" method="post">
		<div class="container">
			<jsp:include page="title.jsp"></jsp:include>

			<div class="row p-4 login-content">

				<div class="col-md-6 login">
				
					<div class="row m-4">
						<div class="col-md-6">Enter Username:</div>

						<div class="col-md-6">
							<input type="hidden" name="page" value="LoginPage" /> <input
								type="text" name="username" class="form-control form-control-sm" />

						</div>
					</div>
					<br>
					<div class="row m-4">
						<div class="col-md-6">Enter Password:</div>

						<div class="col-md-6">
							<input type="password" name="password"
								class="form-control form-control-sm" />

						</div>
					</div>

					<div class="row m-4">
						<div class="col-md-6">
							<input type="submit" value="LOGIN" class="btn btn-primary" />
						</div>

						<div class="col-md-6 text-danger">
							<%=session.getAttribute("ErrorMessage") != null ? session.getAttribute("ErrorMessage") : ""%>
						</div>
					</div>

				</div>

				<div class="col-md-6">
					<!-- here we will display an image -->

					<img class="img1 flip-animation" src="resources/images/addharimage.jpeg"
						width="400px" height="250px" />
					<!-- img class="img2 flip-animation" src="images/aadhar2.png" width="400px" height="250px"/> -->
				</div>
				
			</div>

			
		</div>
	</form>
	
	<div class="row container text-center">
		<jsp:include page="footerpage.jsp"></jsp:include>
	</div>

</body>
</html>
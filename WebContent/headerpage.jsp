<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"><!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<script src="http://code.jquery.com/jquery-3.7.0.min.js" type="text/javascript" language="javascript">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/jquery-3.6.0.js"></script>
<script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<title>Aadhar Application</title>
</head>

<script>
$(function () {
	$("#accordion" ).accordion();
	$("#accordion" ).accordion("option", "active", <%=session.getAttribute("ActiveTab")==null?0:session.getAttribute("ActiveTab")%>);
	
});


</script>


<style type="text/css">
  body
  {
   background: linear-gradient(to right, #FFFFFF, #98FB98, #66CDAA, 80%);
  }
 </style>
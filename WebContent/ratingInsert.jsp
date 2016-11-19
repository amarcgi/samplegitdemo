<%@ page import="java.sql.*,databaseconnection.databasecon"%>

<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
Integer personId = (Integer)session.getAttribute("personId");
String sku=request.getParameter("sku");
String rating=request.getParameter("rating");
Connection conn =null;
PreparedStatement ps=null;

try
{
conn = databasecon.getconnection();
ps=conn.prepareStatement ("insert into product(sku,rating,rating_by) values(?,?,?)");
//ps=conn.prepareStatement ("insert into fileup(fileid,filename,filekey,indexm,describe,file,commonindex,likecommends,unlikecommends,s) values (?,AES_ENCRYPT(?,'key'),?,?,?,AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'),?,?,?)");
ps.setString(1,sku);
ps.setInt(2,Integer.parseInt(rating));
ps.setInt(3,personId);
ps.executeUpdate();
response.sendRedirect("shop.jsp");
}
catch(Exception e1)
{
	out.println(getServletContext().getRealPath("/"));
out.println(e1.getMessage());
}
%>
</body>
</html>

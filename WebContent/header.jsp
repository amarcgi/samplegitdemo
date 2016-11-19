<%-- <link rel="stylesheet" type="text/css" href="css/style.css"/>
<div id="container">
  <div id="header"> <a href="http://all-free-download.com/free-website-templates/">Keep it Simple</a> </div>
<div id="menu">Welcome,
<% if(session.getAttribute("personId") != null) { %>
    <a href="profile"><%= session.getAttribute("personName")%></a>&nbsp; &nbsp; &nbsp; &nbsp;<br />
<%} else {%>
    Guest&nbsp; &nbsp; &nbsp; &nbsp;<br />
<% } %>
    <a href="all_people">Everybody</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
<% if(session.getAttribute("personId") != null) { %>
    <a href="wall">My wall</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="addPost.jsp">New post</a> &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp;
    <a href="friends">Friends</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="friend_request">Friend requests</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="notifications">Notifications</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="edit_profile">Edit profile</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="editPassword.jsp">Change password</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="logout">Logout</a>
<% } else { %>
    <a href="login">Login</a> &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="signup.jsp">Sign up</a>
<% } %>
</div>

<div id="main">
 --%>
Welcome,
										<% if(session.getAttribute("personId") != null) { %>
											<a href="profile"><%= session.getAttribute("personName")%></a><br />
										<%} else {%>
											Guest&nbsp; &nbsp; &nbsp; &nbsp;<br />
										<% } %>
											<li><a href="all_people" class="active"><i class="fa fa-user"></i> EveryBody</a></li>
										<% if(session.getAttribute("personId") != null) { %>
											<li><a href="wall" class="active">My wall</a> </li>
											<li><a href="addPost.jsp"  class="active">Share Product Review</a> </li>
											<li><a href="friends"  class="active">Friends</a></li>
											<li><a href="friend_request"  class="active"></i>Friend requests</a></li>
											<li><a href="notifications" class="active">Notifications</a></li>
											<li><a href="edit_profile" class="active">Edit profile</a> </li>
											<li><a href="editPassword.jsp"  class="active">Change password</a></li>
											
											<li><a href="shop.jsp"  class="active">Shopping</a></li>
											<li><a href="logout"  class="active">Logout</a></li>
										<% } else { %>
											<li><a href="login.html" class="active"><i class="fa fa-lock"></i> Login</a>
											<li><a href="login.html" class="active"><i class="fa fa-unlock"></i> SignUp</a></li>
										<% } %>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="style2.css">
  <style type="text/css">

.buttons {
    text-align: center;
}

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 0;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 400% 200%;
    border-radius: 10px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-2 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
    margin-left: 650px;
}
.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}


//add button


  </style>
  <title> movie website</title>
</head>
<body>
<%@page import="com.ranjith.dao.UserDao,com.ranjith.bean.*,java.util.*"%>  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="com.ranjith.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>
  <header>
    <div class="burgerMenu"><i class="fas fa-bars"></i></div>
    <section>
      <div class="logo">
      <h1>MOVIES LIST</h1>
      </div>
      
    </section>
    <div class="searchItem">
      <div class="search">
        <input type="text" placeholder="type to search">
        <i class="fas fa-search"></i>
      </div>

    </div>
  </header>
  <div class="movieContainer">
  
  
    <div class="movieList">
     <c:forEach items="${list}" var="u" >
      <div class="movieItem">
      <a href="Movie_Details.jsp?MOV_ID=${u.getMOV_ID()}"><button class="btn-hover color-1">${u.getMOV_NAME()}</button></a>
      </div>
        </c:forEach>
    </div>
    
    </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><a href="Movie_Form.jsp"><button  class="btn-hover color-2">Add New Movie</button></a>
<footer>
</footer>


</body>

</html>
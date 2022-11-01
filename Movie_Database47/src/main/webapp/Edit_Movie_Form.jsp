<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style1.css">
<title>Edit Form</title>
</head>
<style>
body{
background-image: url("1111.jpg");
}
h1 {
	text-align: center;
}

h2 {
	text-align: center;
}

.movie_title {
	margin: auto;
	width: 100%;
}

select {
	width: 405px;
	height: 50%;
	border-radius: 10px;
}

select:focus {
	min-width: 390px;
	width: auto;
	border-radius: 10px;
}

.select {
	font-weight: 500;
}

.select select {
	margin-top: 10px;
	margin-bottom: 10px;
	width: 180px;
	height: 50px;
}

.select select:focus {
	min-width: 180px;
	width: auto;
}

label {
	background-color: indigo;
	color: white;
	padding: 0.5rem;
	font-family: sans-serif;
	border-radius: 0.3rem;
	cursor: pointer;
	margin-top: 1rem;
}
</style>
<body>
	<%@page import="com.ranjith.dao.UserDao"%>
	<%@page import="com.ranjith.bean.User"%>

	<%
	String MOV_ID = request.getParameter("MOV_ID");
	User u = UserDao.getRecordById(Integer.parseInt(MOV_ID));
	%>

	    <div class="container">
    <div class="title"><h1>Add Movie Details</h1></div>
   
      <div class="movie_title">
        <h2>Movie Details</h2>
    </div>
    <div class="content">
	<form action="Edit_Movie.jsp" method="post">
	        <div class="user-details">
		<input type="hidden" name="MOV_ID" value="<%=u.getMOV_ID()%>">
			<div class="input-box">
            <span class="details">Movie Title</span>
            <input type="text" placeholder="Enter Movie Title" name="MOV_NAME" value="<%=u.getMOV_NAME()%>">
          </div>
			<div class="input-box">
            <span class="details">Movie Year</span>
            <select name="MOV_YEAR" value = "<%=u.getMOV_YEAR()%>">
              <option value="2000">2000</option>
              <option value="2001">2001</option>
              <option value="2002">2002</option>
              <option value="2003">2003</option>
              <option value="2004">2004</option>
              <option value="2005">2005</option>
              <option value="2006">2006</option>
              <option value="2007">2007</option>
              <option value="2008">2008</option>
              <option value="2009">2009</option>
              <option value="2010">2010</option>
              <option value="2011">2011</option>
              <option value="2012">2012</option>
              <option value="2013">2013</option>
              <option value="2014">2014</option>
              <option value="2015">2015</option>
              <option value="2016">2016</option>
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
              <option value="2021">2021</option>
          </select>
          </div>
			 <div class="input-box">
            <span class="details">Movie Duration</span>
            <input type="text" placeholder="Enter Movie Duration" name="MOV_TIME" value="<%=u.getMOV_TIME() %>">
          </div>

			<div class="input-box">
            <span class="details">Movie Language</span>
            <select name="MOV_LANG" value="<%=u.getMOV_LANG() %>" >
              <option value="Kannada">Kannada</option>
              <option value="Telugu">Telugu</option>
              <option value="Tamil">Tamil</option>
              <option value="Malayalm">Malayalm</option>
              <option value="Hindi">Hindi</option>
              <option value="English">English</option>
          </select>
          </div>
          
			<div class="input-box">
            <span class="details">Movie Released Date</span>
            <input type="text" placeholder="Movie Released Date" name="MOV_REL_DATE" value="<%=u.getMOV_REL_DATE()%>" >
          </div>

			<div class="input-box">
            <span class="details">Movie Released Country</span>
            <input type="text" placeholder="Movie Released Country" name="MOV_REL_COUNTRY" value="<%=u.getMOV_REL_COUNTRY()%>" >
          </div>
<div class="select">
						<span>Category</span> <br> <select name="category1">
							<option style="display: none;"></option>
							<option value="Action">Action</option>
							<option value="Drama">Drama</option>
							<option value="Triller">Triller</option>
							<option value="Horror">Horror</option>
							<option value="Comedy">Comedy</option>
							
						</select> <select name="category2">
							<option style="display: none;"></option>
							<option value="Action">Action</option>
							<option value="Drama">Drama</option>
							<option value="Triller">Triller</option>
							<option value="Horror">Horror</option>
							<option value="Comedy">Comedy</option>
							
						</select> </select> <select name="category3">
							<option style="display: none;"></option>
							<option value="Action">Action</option>
							<option value="Drama">Drama</option>
							<option value="Triller">Triller</option>
							<option value="Horror">Horror</option>
							<option value="Comedy">Comedy</option>
							
						</select> </select> <select name="category4">
							<option style="display: none;"></option>
							<option value="Action">Action</option>
							<option value="Drama">Drama</option>
							<option value="Triller">Triller</option>
							<option value="Horror">Horror</option>
							<option value="Comedy">Comedy</option>
							
						</select> </select> <select name="category5">
							<option style="display: none;"></option>
							<option value="Action">Action</option>
							<option value="Drama">Drama</option>
							<option value="Triller">Triller</option>
							<option value="Horror">Horror</option>
							<option value="Comedy">Comedy</option>
						</select>
					</div>
			<div class="input-box">
            <span class="details">Movie Budget</span>
            <input type="text" placeholder="Movie Budget" name="MOV_BUDGET" value="<%=u.getMOV_BUDGET()%>"  >
          </div>
          <div class="input-box">
            <span class="details">Ratings</span>
            <input type="text" placeholder="Movie Ratigs" name="RATINGS" value="<%=u.getRATINGS()%>">
          </div>
          <div class="input-box">
            <span class="details">Total Ratings</span>
            <input type="number" placeholder="Movie Total Ratigs" name="NO_OF_RATINGS" value="<%=u.getNO_OF_RATINGS()%>">
          </div>
          <div class="input-box">
            <span class="details">About Movie</span>
            <input type="text" placeholder="About Movie" name="ABOUT_MOV" value="<%=u.getABOUT_MOV()%>"  >
          </div>
			
			<div class="movie_title">
            <br><h2>Actor Details</h2><br>
          </div>
       
          <div class="input-box">
            <span class="details">Actor Name</span>
            <input type="text" placeholder="Actor Name" name="ACT1_NAME" value="<%=u.getACT1_NAME() %>">
          </div>
          <div class="input-box">
            <span class="details">Actor Role</span>
            <select name="ACT1_ROLE" value="<%=u.getACT1_ROLE()%>" >
						<option value="select">Select</option>
						<option value="Hero">Hero</option>
						<option value="Heroine">Heroine</option>
				</select>
          </div>
			<div class="input-box">
            <span class="details">Actor Name</span>
            <input type="text" placeholder="Actor Name" name="ACT2_NAME" value="<%=u.getACT2_NAME()%>">
          </div>
          <div class="input-box">
            <span class="details">Actor Role</span>
            <select name="ACT2_ROLE" value="<%=u.getACT2_ROLE()%>">
						<option value="select">Select</option>
						<option value="Hero">Hero</option>
						<option value="Heroine">Heroine</option>
				</select>
          </div>
			<div class="movie_title">
            <br><h2>Director Details</h2><br>
          </div>
       
          <div class="input-box">
            <span class="details">Director Name</span>
            <input type="text" placeholder="Director Name" name="DIR_NAME" value="<%=u.getDIR_NAME()%>" >
          </div>
          <div class="input-box">
            <span class="details">Director Phono</span>
            <input type="number" placeholder="Director Phono" name="DIR_PHONO" value="<%=u.getDIR_PHONO()%>" >
          </div>
          <div class="movie_title">
            <br><h2>Producer Details</h2><br>
          </div>
       
          <div class="input-box">
            <span class="details">Producer Name</span>
            <input type="text" placeholder="Producer Name" name="PRO_NAME" value="<%=u.getPRO_NAME()%>" >
          </div>
          <div class="input-box">
            <span class="details">Producer Phono</span>
            <input type="number" placeholder="Producer Phono" name="PRO_PHONO" value="<%=u.getPRO_PHONO() %>" >
          </div>
			<div class="button">
          <input type="submit" value="Edit Movie">
          </div>
      </form>
    </div>
  </div>
</body>
</html>
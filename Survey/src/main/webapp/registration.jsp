<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up Page</title>
<style>
        h1{
            text-align: center;
            margin-top:100px;
            font-family:italic;
          
        }
        body{
            background-image:url("http://www.pixelstalk.net/wp-content/uploads/2016/08/Desktop-Best-Background-Images.jpg");
            color:aliceblue;
        }
        input{
            position:center;
            height:40px;
            width:500px;
            
        }
        .aa{
            height:50px;
            width:250px;
            background-color:mintcream;
            font-weight: bolder;
            font-size: large;
            
        }
        div{
            position:center;
            margin-top:20px;
           text-align:center;
        }
        p{
            margin-left:3px;
            text-align: left;
            font-size: larger;
        }
        fieldset{
            margin-top:30px;
            display:inline;
            position:center;
        } 
        .container {
          display: flex;
          justify-content: center; /* Horizontal centering */
          align-items: center; /* Vertical centering */
          text-align:center;
          height: auto; /* Adjust the height as needed */
          position: fixed;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
        }
       .box{
          display:inline-block;
          height:auto;
       }
       a{
          color:white;
          font-size:larger;
       }
       </style>
</head>
<body>
 <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
 <h1>CREATE AN ACCOUNT</h1>

  <fieldset>
	   <form method="post" action="register">
       <div class="container">
       <div class="box">
       <p>Username</p>
       <input id="a" name="nm" type="text" placeholder="Enter username" size=50 class="btn btn-success" required="required"><br><br>
       <p>Password</p>
       <input id="b" name="pw" type="password" placeholder="Enter password" size="50" class="btn btn-success" required="required"><br><br>
       <p>Confirm Password</p><input id="c" type="password" placeholder="Confirm password" size="50" class="btn btn-success" required="required"><br><br>
       <input  class="aa" type="submit" name="button" class="btn btn-success" value="SIGN UP"><br><br>
       <a href="login.jsp">Click here to go to Login page</a>
       </div>
       </div>
       </form>
   </fieldset>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status=document.getElementById("status").value;
		if(status == "success"){
			swal("Congrats,Account created successfully","SUCCESS!");
		}
	</script>
</body>
</html>
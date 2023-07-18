<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Survey Application</title>
<style>
        .h{
            text-align:center;
            text-decoration:underline;
            font-family:Georgia, 'Times New Roman', Times, serif;
        }
        p{
            text-align:center;
        }
        h1{
            text-align:center;
            font-family:Georgia, 'Times New Roman', Times, serif;
        }
        body{
            background-image:url("https://tse3.mm.bing.net/th?id=OIP.jn8zFH4vPf9IEuTK5ZXxPQHaEo&pid=Api&P=0&h=180");
            background-repeat:no-repeat;
            background-size:1500px 800px;
            color:black;
            display:inline;
        }
        input{
           padding-left:20px;
           height:32px;
           width:250px;
           border-radius:10px;
           color:deeppink;
           border:none;
        }
        .a,.b{
            height:40px;
            background-color:lavender;
            cursor:pointer;
            font-size:20px;
            font-weight: bold;
        }
        div{
            background-color: deeppink;
            margin-left:380px;
        }
        #aa{
            padding:20px 40px;
            height:360px;
            width:250px;
            position:fixed;
            top:150px;
            left:200px;
        }
        #bb{
            padding:20px 40px;
            height:360px;
            width:250px;
            position:fixed;
            top:150px;
            left:900px;
            right:200px;
        }
       </style>
       <script type="text/javascript">
       function redirectToPage() {
         var username = document.getElementById('username').value;
         if (username === 'admin') {
           window.location.href = 'admin.html';
         } else {
            window.location.href = 'user.jsp';
         }
       }
       </script>    
</head>
<body> 
 <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<h1>SURVEY APPLICATION</h1>
       <form method="post" action="Login">
       <div id="aa" style="color:aliceblue">
       <input name="un" id="username" type="text" placeholder="Username"  class="btn btn-success" required="required"><br><br>
       <input name="pd" type="password" placeholder="Password"  class="btn btn-success" required="required"><br><br>
       <input onclick="redirectToPage()" class="a" type="button" name="button" class="btn btn-success" value="LOGIN"><br><br>
       _______________________________
       <p>Don't have an account yet</p>
       <input onclick="location.href = 'registration.jsp';" class="b" type="button" name="button" class="btn btn-success" value="SIGN UP">
       </div>
       </form>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	   <link rel="stylesheet" href="alert/dist/sweetalert.css">
	   <script type="text/javascript">
		var status=document.getElementById("status").value;
		if(status == "fail"){
			swal("Sorry,Wrong username or password","Error!");
		}
		else if(status == "invalidUsername"){
			swal("Please enter username","TRY AGAIN!");
		}
		else if(status == "invalidPassword""){
			swal("Please enter password","TRY AGAIN!");
		}
		</script>
	  </script>
</body>
</html>
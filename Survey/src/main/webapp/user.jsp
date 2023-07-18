<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>User login page</title>
<style>
            h1{
              margin-top:50px;
              color:yellow;
            }
            body{
                background-image:url("https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148877163.jpg?size=626&ext=jpg&ga=GA1.1.665974504.1684758195&semt=ais");
                background-repeat:no-repeat;
                background-size: 1500px 900px;
                background-position:fixed;
                text-align: center;
            }
          input{
           margin:50px;
           padding-left:20px;
           height:60px;
           width:500px;
           background-color:yellow;
           border-radius:10px;
           color:black;
           border:none;
           font-size:larger;
           font-weight:bolder;
          }
          a{
				display:block;
				color:yellow;
				font-size:large;
			}
        </style>
</head>
<body>
        <h1>USER LOGIN PAGE</h1>
        <form method="post" action="Login">
        <input type="button" name="button" class="btn btn-primary" value="ATTEMPT A SURVEY"><br><br>
        <input type="button" name="button" class="btn btn-primary" value="VIEW ATTEMPTED SURVEYS"><br><br>
        <input type="button" name="button" class="btn btn-primary" value="VIEW PUBLISHED SURVEYS">
        <a href="login.jsp">Click here to go to Login page</a>
        </form>
</body>
</html>
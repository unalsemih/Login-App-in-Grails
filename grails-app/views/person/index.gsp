<%--
  Created by IntelliJ IDEA.
  User: Semih
  Date: 20.07.2019
  Time: 23:57
--%>
<html>
<head>
    <meta name="layout" content="main">
  <title></title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
    label{
        float: left;
        width:65px;
    }
    </style>
</head>
<body>
<div class="container">

    <div class="col-md-4 mt-4" style="margin:auto auto;">
        <g:if test="${flash.message}">
            <div class="message">
                ${flash.message}
            </div>
        </g:if>
        <g:if test="${session.user}">
            Login as : ${session.user} | <g:link action="logout">Logout</g:link>
        </g:if>
        <g:else>
            <g:form action="login">
            <div class="form-group">
                <label for="exampleInputEmail1">Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="username" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
            </g:form>
        </g:else>
    </div>
</div>




</body>
</html>
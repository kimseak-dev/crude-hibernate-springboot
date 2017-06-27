<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update | Student Management</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>Update Student 's Information</h1>
    <hr>
    <form action="${pageContext.request.contextPath }/edit" method="POST">
        <fieldset class="form-group">
            <div>
                <label> ID : </label>
                <input type="text" name="id" value="${User.id}" readonly="true" class="form-control">
            </div>
            <div>
                <label> Name : </label>
                <input type="text" name="name" placeholder="student Name" class="form-control" value="${User.name}">
            </div>

            <div>
                <label> Email : </label>
                <input type="text" name="email" placeholder="student score" class="form-control" value="${User.email}">
            </div>

            <div>
                <label>Address 1 : </label>
                <input type="text" placeholder="Address 1" class="form-control" name="address.address1" value="${User.address.address1}">
            </div>

            <div>
                <label>Address 2 : </label>
                <input type="text" placeholder="Address 2" class="form-control" name="address.address2" value="${User.address.address2}">
            </div>
            <div>
                <input type="submit" value="update" class="btn btn-success" style="margin-top: 10px;">
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
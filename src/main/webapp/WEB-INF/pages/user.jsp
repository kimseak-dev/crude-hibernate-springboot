<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User List | User Management</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <script>
        function confirmGo(m,u) {
            if ( confirm(m) ) {
                window.location = u;
            }
        }
    </script>
</head>
<body>

<div class="container">

    <h1 style="text-align: center;">User Management</h1>
    <a href="add-user" class="btn btn-success pull-right" style="margin-bottom: 10px;">Add User</a><br>
    <table class="table table-striped table-hover" class="scroll">
        <tr class="table-success">
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address 1</th>
            <th>Address 2</th>
            <th>Action</th>
        </tr>

        <c:forEach items = "${User}" var = "usr">
            <tr>
                <td>${usr.id}</td>
                <td>${usr.name}</td>
                <td>${usr.email}</td>
                <td>${usr.address.address1}</td>
                <td>${usr.address.address2}</td>

                <td>
                    <a href="javascript:confirmGo('Sure to delete this record?','delete/${usr.id}')" class="btn btn-danger">Delete</a>
                    <a href="javascript:confirmGo('Sure to update this record?','update/${usr.id}')" class="btn btn-warning">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
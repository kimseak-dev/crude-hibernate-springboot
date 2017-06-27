<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add | User Management</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" style="margin-top: 10px;">
    <h3 style="display: inline;">Welcome to User management</h3>

    <hr>
    <form action="save" method="post" id="user">
        <fieldset class="form-group">
            <div>
                <label>Name : </label>
                <input type="text" name="name" placeholder="Name" class="form-control">
            </div>

            <div>
                <label>Email : </label>
                <input type="email" placeholder="email" class="form-control" name="email">
            </div>

            <div>
                <label>Address 1 : </label>
                <input type="text" placeholder="Address 1" class="form-control" name="address.address1">
            </div>

            <div>
                <label>Address 2 : </label>
                <input type="text" placeholder="Address 2" class="form-control" name="address.address2">
            </div>

            <div>
                <label>User Role :</label>
                <select name="roles.role" multiple ="multiple" class="form-control">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                    <option value="developer">developer</option>
                </select>
            </div>
            <div>
                <input type="submit" value="Add" class="btn btn-success" style="margin-top: 10px;" >
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
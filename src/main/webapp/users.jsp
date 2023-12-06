<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus ROG
  Date: 12/3/2023
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Admin Dashboard</title>
</head>

<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
    <div class="container">
        <a href="index.jsp" class="navbar-brand">Blogen</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav">
                <li class="nav-item px-2">
                    <a href="index.jsp" class="nav-link">Dashboard</a>
                </li>
                <li class="nav-item px-2">
                    <a href="posts.jsp" class="nav-link">Posts</a>
                </li>
                <li class="nav-item px-2">
                    <a href="categories.jsp" class="nav-link">Categories</a>
                </li>
                <li class="nav-item px-2">
                    <a href="users.jsp" class="nav-link active">Users</a>
                </li>
            </ul>

            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown mr-3">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                        <i class="fas fa-user"></i> Welcome Palavan
                        <!--Placeholder Username-->
                    </a>
                    <div class="dropdown-menu">
                        <a href="profile.jsp" class="dropdown-item">
                            <i class="fas fa-user-circle"></i> Profile
                        </a>
                        <a href="settings.jsp" class="dropdown-item">
                            <i class="fas fa-cog"></i> Settings
                        </a>
                    </div>
                </li>
                <li class="nav-item">
                    <a href="login.jsp" class="nav-link">
                        <i class="fas fa-user-times"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!--Header-->
<header id="main-header" class="py-2 bg-warning text-white">
    <div class="container">
        <div class="ro">
            <div class="col-md-6">
                <h1><i class="fas fa-users"></i> Users</h1>
            </div>
        </div>
    </div>
</header>

<!--Users-->
<section id="users" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-6 ml-auto">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Users...">
                    <div class="input-group-append">
                        <button class="btn btn-warning">Search</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <!--<div class="col-md-3">
                <a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addPostModal">
                    <i class="fas fa-plus"></i> Add Post
                </a>
            </div>
            <div class="col-md-3">
                <a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#addCategoryModal">
                    <i class="fas fa-plus"></i> Add Category
                </a>
            </div>
            -->
            <div class="col-md-3">
                <a href="#" class="btn btn-warning btn-block" data-toggle="modal" data-target="#addUserModal">
                    <i class="fas fa-plus"></i> Add User
                </a>
            </div>
        </div>
    </div>
</section>


<!--Add User Modal-->
<div class="modal fade" id="addUserModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title">Add User</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<%= request.getContextPath() %>/insert_UserController" method="post">

                    <div class="form-group">
                        <label for="FullName">Full Name</label>
                        <input type="text" id = "FullName" name ="FullName" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="BirthDate">Birthday</label>
                        <input type="date" id = "BirthDate"  name ="BirthDate" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="Address">Address</label>
                        <input type="text" id = "Address"  name = "Address" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="Phone">Phone</label>
                        <input type="text" id = "Phone" name = "Phone" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="Email">Email</label>
                        <input type="email" id = "Email"  name = "Email" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="Password">Password</label>
                        <input type="password" id = "Password" name = "Password" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password2">Confirm Password</label>
                        <input type="password" id = "password2" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="Role">Role</label>
                        <select id="Role" name = "Role" class ="form-control">
                            <option value="Customer">Customer</option>
                            <option value="Manager">Manager</option>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type = "submit" class="btn btn-warning">Save Add</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<!--User Accounts-->
<section id="userAccounts">
    <div class="container" style="white-space:nowrap;">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Latest Users</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                        <tr>
                            <th>UserID</th>
                            <th>FullName</th>
                            <th style="white-space:nowrap;" >Birthdate</th>
                            <th style="white-space:nowrap;">Address</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <c:forEach var = "user" items = "${listUser}">
                                <tr >
                            <td name="UserID" value ="${user.userID}">${user.userID}</td>
                            <td>${user.fullName}</td>
                            <td>${user.birthDate}</td>
                            <td>${user.address}</td>
                            <td>${user.phone}</td>
                            <td>${user.email}</td>
                            <td>${user.role}</td>
                            <td>
                                <a href="usersDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                            <td>
                                <a href="delete_UserController?UserID=<c:out value='${user.userID}' />" class="btn btn-secondary" style="background-color:indianred">
                                    <i class="fas fa-angle-double-right"></i> Delete
                                </a>
                            </td>
                            </c:forEach>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Footer-->
<footer id="main-footer" class="bg-dark text-white mt-5 p-5">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="lead text-center">
                    Copyright &copy; <span id="year"></span>
                    Cloud Shop
                </p>
            </div>
        </div>
    </div>
</footer>

<!--jQuery CDN-->
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<!--popper js CDN-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>

<!--Bootstrap 4 CDN-->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>

<!--Custom JavaScript-->
<script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());

</script>
</body>

</html>

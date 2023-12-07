<%@ page import="com.cloud.Models.User" %><%--
  Created by IntelliJ IDEA.
  User: Asus ROG
  Date: 12/3/2023
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <ul class="navbar-nav d-none">
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
                    <a href="users.jsp" class="nav-link">Users</a>
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
        <div class="row">
            <div class="col-md-6">
                <h1><i class="fas fa-user"></i> User Details</h1>
            </div>
        </div>
    </div>
</header>

<!--Actions-->
<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="index.jsp" class="btn btn-light btn-block border">
                    <i class="fas fa-arrow-left"></i> Back To Dashboard
                </a>
            </div>
            <div class="col-md-3">
                <a href="users.jsp" class="btn btn-light btn-block border">
                    <i class="fas fa-arrow-left"></i> Back To Users
                </a>
            </div>
            <!--
            <div class="col-md-3">
                <a href="users.jsp"  class="btn btn-success btn-block">
                    <i class="fas fa-check"></i> Save Changes
                </a>
            </div>
            <div class="col-md-3">
                <a href="users.jsp" class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i> Delete Changes
                </a>
            </div>
            -->
        </div>
    </div>
</section>



<!--Details-->
<section id="details">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit User Information</h4>
                    </div>
                    <div class="modal-body" >
                        <form action="<%= request.getContextPath() %>/update_UserController" method = "post" >
                            <input type="hidden" name="from" value="userDetails">
                            <div class="form-group">
                                <label for="UserID">User ID</label>
                                <!--
                                Có hai cách lấy giá trị cho value:
                                    value="<c:out value='${User.userID}' />"
                                    value="${User.fullName}"
                                 -->
                                <input readonly type="text" value="<c:out value='${User.userID}' />" id = "UserID" name ="UserID"  class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="FullName">Full Name</label>
                                <input type="text" value="${User.fullName}" id = "FullName" name ="FullName" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="BirthDate">Birthday</label>
                                <input type="date" value="${User.birthDate}" id = "BirthDate"  name ="BirthDate" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Address">Address</label>
                                <input type="text" value="${User.address}" id = "Address"  name = "Address" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Phone">Phone</label>
                                <input type="text" value="${User.phone}" id = "Phone" name = "Phone" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <input type="email" value="${User.email}" id = "Email"  name = "Email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Password">Password</label>
                                <input type="password" value="${User.password}" id = "Password" name = "Password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password2">Confirm Password</label>
                                <input type="password" id = "password2" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Role">Role</label>
                                <select id="Role" name = "Role" class ="form-control">
                                    <option value="Customer" ${User.role == 'Customer' ? 'selected' : ''}>Customer</option>
                                    <option value="Manager" ${User.role == 'Manager' ? 'selected' : ''}>Manager</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <button type="submit" class="btn btn-success btn-block">
                                    Save Changes
                                </button>
                            </div>

                        </form>

                    </div>
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

<!--CKEditor CDN-->
<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>

<!--Custom JavaScript-->
<script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());

    //CKEditor
    CKEDITOR.replace('editor1');
</script>
</body>

</html>

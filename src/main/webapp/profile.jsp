<%--
  Created by IntelliJ IDEA.
  User: Asus ROG
  Date: 12/3/2023
  Time: 11:19 PM
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
        <a href="index.jsp" class="navbar-brand">Cloud Shop</a>
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
                        <i class="fas fa-user"></i> Welcome Khanh
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
<header id="main-header" class="py-2 bg-primary text-white">
    <div class="container">
        <div class="ro">
            <div class="col-md-6">
                <h1><i class="fas fa-user"></i> Edit Profile</h1>
            </div>
        </div>
    </div>
</header>

<!--Actions-->
<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="index.jsp" class="btn btn-primary btn-block">
                    <i class="fas fa-arrow-left"></i> Back To Dashboard
                </a>
            </div>
            <div class="col-md-3">
                <a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#changePasswordModal">
                    <i class="fas fa-lock"></i> Change Password
                </a>
            </div>
            <div class="col-md-3">
                <a href="#" class="btn btn-danger btn-block" data-toggle="modal" data-target="#deleteAccountModal">
                    <i class="fas fa-trash"></i> Delete Account
                </a>
            </div>
        </div>
    </div>
</section>

<!--Profile-->
<section id="profile">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit Profile</h4>
                    </div>
                    <div class="card-body">
                        <form action="<%= request.getContextPath() %>/user/update_UserController" method = "post">
                            <input type="hidden" name="from" value="profile">
                            <div class="form-group">
                                <label for="UserID">User ID</label>
                                <input readonly type="text" value="${userLogin.userID}" id = "UserID" name ="UserID"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="FullName">Name</label>
                                <input type="text" id="FullName" name="FullName" class="form-control" value="${userLogin.fullName}">
                            </div>
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <input type="email" value="${userLogin.email}" id = "Email"  name = "Email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="BirthDate">Birthday</label>
                                <input type="date" value="${userLogin.birthDate}" id = "BirthDate"  name ="BirthDate" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Address">Address</label>
                                <input type="text" value="${userLogin.address}" id = "Address"  name = "Address" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Phone">Phone</label>
                                <input type="text" value="${userLogin.phone}" id = "Phone" name = "Phone" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="Role">Role</label>
                                <select id="Role" class ="form-control" disabled>
                                    <option value="Customer" ${userLogin.role == 'Customer' ? 'selected' : ''}>Customer</option>
                                    <option value="Manager" ${userLogin.role == 'Manager' ? 'selected' : ''}>Manager</option>
                                    <input type="hidden" name="Role" value="${userLogin.role}">
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
                    Blogen
                </p>
            </div>
        </div>
    </div>
</footer>

<!--Change Password Modal-->
<div class="modal fade" id="changePasswordModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-success text-white">
                <h5 class="modal-title">Change Password</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="oldPassword">Old Password</label>
                        <input type="password" id="oldPassword" name="oldPassword" class="form-control">
                        <p id="oldPasswordError" class="text-danger"></p>
                    </div>
                    <div class="form-group">
                        <label for="newPassword">New Password</label>
                        <input type="password" id="newPassword" name="newPassword" class="form-control">
                        <p id="newPasswordError" class="text-danger"></p>
                    </div>
                    <div class="form-group">
                        <label for="confirmNew">Confirm New Password</label>
                        <input type="password" id="confirmNew" name="confirmNew" class="form-control">
                        <p id="confirmNewError" class="text-danger"></p>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="btnChangePassword" type="submit" class="btn btn-success">Save Changes</button>
                <button  class="btn" data-dismiss="modal">Exit</button>
            </div>
        </div>
    </div>
</div>

<!--Delete Account Modal-->
<div class="modal fade" id="deleteAccountModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-danger text-white">
                <span class="modal-title h5">Delete Account</span>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <span class="h5">Are you sure you wish to delete your account? This will permanently erase your account and you will not be able to login again with your existing information.</span>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Delete Account</button>
            </div>
        </div>
    </div>
</div>

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
<script>
    $(document).ready(function(){
        $("#btnChangePassword").click(function(event){
            event.preventDefault();

            var oldPassword = $("#oldPassword").val();
            var newPassword = $("#newPassword").val();
            var confirmNew = $("#confirmNew").val();
            var userID = $("#userID").val();
            if (oldPassword.trim() === "") {
                $("#oldPasswordError").text("Please enter old password");
                return;
            } else {
                $("#oldPasswordError").text("");
            }

            if (newPassword.trim() === "") {
                $("#newPasswordError").text("Please enter new password");
                return;
            } else {
                $("#newPasswordError").text("");
            }

            if (confirmNew.trim() === "") {
                $("#confirmNewError").text("Please confirm new password");
                return;
            } else {
                $("#confirmNewError").text("");
            }

            if (newPassword !== confirmNew) {
                $("#confirmNewError").text("Passwords do not match");
                return;
            } else {
                $("#confirmNewError").text("");
            }
            var requestData = {
                oldPassword: oldPassword,
                userID: userID
            };

            $.ajax({
                type: "POST",
                url: "<%=request.getContextPath()%>/user/checkOldPassword_UserController",
                data: requestData,
                success: function(response){
                    var isPasswordValid = response.isPasswordValid;
                    if(isPasswordValid){
                        localStorage.setItem('newPassword', newPassword);
                        localStorage.setItem('userID', userID);
                        window.location.href = "/user/updatePasswordProfile_UserController";
                    } else {
                        alert("Password change failed. Please check your old password.");
                    }
                },
                error: function(xhr, status, error){
                    console.error("Ajax request failed:", status, error);
                }
            });
        });
    });
</script>
<% if (request.getAttribute("resultMsg") != null) { %>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Thông báo</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ${resultMsg}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Thoát</button>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript to trigger the modal -->
<script>
    $(document).ready(function() {
        console.log('Document ready function');
        $('#myModal').modal('show');
    });
</script>
<% } %>
</body>

</html>
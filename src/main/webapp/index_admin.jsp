<%--
  Created by IntelliJ IDEA.
  User: Asus ROG
  Date: 12/3/2023
  Time: 11:15 PM
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
        <a href="index.jsp" class="navbar-brand">Fasion Shop</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav">
                <li class="nav-item px-2">
                    <a href="index.jsp" class="nav-link active">Dashboard</a>
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
<header id="main-header" class="py-2 bg-primary text-white">
    <div class="container">
        <div class="ro">
            <div class="col-md-6">
                <h1><i class="fas fa-cog"></i> Dashboard</h1>
            </div>
        </div>
    </div>
</header>

<!--Actions-->
<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addPostModal">
                    <i class="fas fa-plus"></i> Add
                </a>
            </div>

        </div>
    </div>
</section>

<!--Posts-->
<section id="posts">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Latest Posts</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Category</th>
                            <th>Date</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Post One</td>
                            <td>Web Development</td>
                            <td>November 23 2020</td>
                            <td>
                                <a href="postDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Post Two</td>
                            <td>Tech Gadgets</td>
                            <td>November 22 2020</td>
                            <td>
                                <a href="postDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Post Three</td>
                            <td>Web Development</td>
                            <td>November 20 2020</td>
                            <td>
                                <a href="postDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Post Four</td>
                            <td>Business</td>
                            <td>November 18 2020</td>
                            <td>
                                <a href="postDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Post Five</td>
                            <td>Web Development</td>
                            <td>November 15 2020</td>
                            <td>
                                <a href="postDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Post Six</td>
                            <td>Health & Wellness</td>
                            <td>November 5 2020</td>
                            <td>
                                <a href="postDetails.jsp" class="btn btn-secondary">
                                    <i class="fas fa-angle-double-right"></i> Details
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-center bg-primary text-white mb-3">
                    <div class="card-body">
                        <h3>Posts</h3>
                        <h4 class="display-4">
                            <i class="fas fa-pencil-alt"></i> 6
                        </h4>
                        <a href="posts.jsp" class="btn btn-outline-light btn-sm">View</a>
                    </div>
                </div>

                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Categories</h3>
                        <h4 class="display-4">
                            <i class="fas fa-folder"></i> 4
                        </h4>
                        <a href="categories.jsp" class="btn btn-outline-light btn-sm">View</a>
                    </div>
                </div>

                <div class="card text-center bg-warning text-white mb-3">
                    <div class="card-body">
                        <h3>Users</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> 4
                        </h4>
                        <a href="<%= request.getContextPath() %>/list_UserController" class="btn btn-outline-light btn-sm">View</a>
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

<!--Modals-->
<!--Add Post Modal-->
<div class="modal fade" id="addPostModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Add Post</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" id = "title" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="category">Category</label>
                        <select name="" id="category" class="form-control">
                            <option value=""></option>
                            <option value="">Web Development</option>
                            <option value="">Tech Gadgets</option>
                            <option value="">Business</option>
                            <option value="">Health & Wellness</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="image">Upload Image</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="image">
                            <label for="image" class="custom-file-label">Choose File</label>
                        </div>
                        <small class="form-text text-muted">Max Size 3mb</small>
                    </div>
                    <div class="form-group">
                        <label for="body">Body</label>
                        <textarea name="editor1" id = "body" class="form-control"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" data-dismiss="modal">Save Changes</button>
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
</body>

</html>
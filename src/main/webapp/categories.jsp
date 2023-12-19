<%--
  Created by IntelliJ IDEA.
  User: Asus ROG
  Date: 12/3/2023
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <jsp:include page="./css.jsp" />
  <title>Admin Dashboard</title>
</head>

<body>

<jsp:include page="./header_admin.jsp" />

<!--Header-->
<header id="main-header" class="py-2 bg-success text-white">
  <div class="container">
    <div class="ro">
      <div class="col-md-6">
        <h1><i class="fas fa-folder"></i> Categories</h1>
      </div>
    </div>
  </div>
</header>

<!--Search-->
<section id="search" class="py-4 mb-4 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-md-6 ml-auto">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search Categories...">
          <div class="input-group-append">
            <button class="btn btn-success">Search</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--Actions-->
<section id="actions" class="py-4 mb-4 bg-light">
  <div class="container">
      <div class="col-md-3">
        <a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#addCategoryModal">
          <i class="fas fa-plus"></i> Add Category
        </a>
      </div>
  </div>
</section>


<!--Add Category Modal-->
<div class="modal fade" id="addCategoryModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title">Add Category</h5>
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
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-success" data-dismiss="modal">Save Changes</button>
      </div>
    </div>
  </div>
</div>
<!--Categories-->
<section id="categories">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="card">
          <div class="card-header">
            <h4>Latest Categories</h4>
          </div>
          <table class="table table-striped">
            <thead class="thead-dark">
            <tr>
              <th>#</th>
              <th>Title</th>
              <th>Date Added</th>
              <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>1</td>
              <td>Tech Gadgets</td>
              <td>November 22 2020</td>
              <td>
                <a href="categoriesDetails.jsp" class="btn btn-secondary">
                  <i class="fas fa-angle-double-right"></i> Details
                </a>
              </td>
            </tr>
            <tr>
              <td>2</td>
              <td>Business</td>
              <td>November 18 2020</td>
              <td>
                <a href="categoriesDetails.jsp" class="btn btn-secondary">
                  <i class="fas fa-angle-double-right"></i> Details
                </a>
              </td>
            </tr>
            <tr>
              <td>3</td>
              <td>Web Development</td>
              <td>November 15 2020</td>
              <td>
                <a href="categoriesDetails.jsp" class="btn btn-secondary">
                  <i class="fas fa-angle-double-right"></i> Details
                </a>
              </td>
            </tr>
            <tr>
              <td>4</td>
              <td>Health & Wellness</td>
              <td>November 5 2020</td>
              <td>
                <a href="categoriesDetails.jsp" class="btn btn-secondary">
                  <i class="fas fa-angle-double-right"></i> Details
                </a>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<!--Footer-->
<jsp:include page="./footer.jsp" />

<!--jQuery CDN-->
<jsp:include page="./scripts.jsp" />
<!--Custom JavaScript-->
</body>

</html>

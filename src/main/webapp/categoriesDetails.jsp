<%--
  Created by IntelliJ IDEA.
  User: Asus ROG
  Date: 12/3/2023
  Time: 11:17 PM
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
        <h1><i class="fas fa-folder"></i> Category Details</h1>
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
        <a href="categories.jsp" class="btn btn-light btn-block border">
          <i class="fas fa-arrow-left"></i> Back To Categories
        </a>
      </div>
      <div class="col-md-3">
        <a href="categories.jsp" class="btn btn-success btn-block">
          <i class="fas fa-check"></i> Save Changes
        </a>
      </div>
      <div class="col-md-3">
        <a href="categories.jsp" class="btn btn-danger btn-block">
          <i class="fas fa-trash"></i> Delete Changes
        </a>
      </div>
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
            <h4>Edit Category Title</h4>
          </div>
          <div class="modal-body">
            <form action="">
              <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control">
              </div>
            </form>
          </div>
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
<script>
  //CKEditor
  CKEDITOR.replace('editor1');
</script>
</body>

</html>

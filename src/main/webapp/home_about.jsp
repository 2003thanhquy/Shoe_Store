<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>About Us - Cloud Shop</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" />
</head>

<body>
<!-- Navigation-->
<jsp:include page="homepage_navbar.jsp"/>
<!-- Include your navigation code here -->

<!-- Header-->
<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">About Cloud Shop</h1>
        </div>
    </div>
</header>

<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
            <div class="col-lg-6">
                <h2 class="display-4 fw-bolder">Our Story</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet
                    consectetur nulla. Proin suscipit, velit sit amet tincidunt vestibulum, ipsum metus
                    suscipit nunc, a fermentum velit mi a ex.</p>
            </div>
            <div class="col-lg-6">
                <h2 class="display-4 fw-bolder">Mission & Vision</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet
                    consectetur nulla. Proin suscipit, velit sit amet tincidunt vestibulum, ipsum metus
                    suscipit nunc, a fermentum velit mi a ex.</p>
            </div>
        </div>
    </div>
</section>

<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">
            Copyright &copy; Cloud Shop 2023
        </p>
    </div>
</footer>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>

</html>

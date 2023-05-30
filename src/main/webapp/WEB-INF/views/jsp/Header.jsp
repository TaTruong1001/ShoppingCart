<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<section class="myheader">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-3">
                <img src="image/logo.webp" class="img-fluid" alt="logo">
            </div>
            <div class="col-md-4">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Tìm kiếm" aria-label="Tìm kiếm"
                           aria-describedby="basic-addon2">
                    <span class="input-group-text" id="basic-addon2"><i class="fa-solid fa-magnifying-glass"></i></span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col">
                        <div class="row">
                            <div class="col-3">
                                <div class="fs-3 text-danger"><i class="fa-solid fa-phone"></i></div>
                            </div>
                            <div class="col-9">
                                Tư vấn <br>
                                <strong class="text-danger">0987654321</strong>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="row">
                            <div class="col-3">
                                <div class="fs-3 text-danger"><i class="fa-regular fa-user"></i></div>
                            </div>
                            <div class="col-9">
                                Xin chào <br>
                                <a class="text-danger" href="#">Đăng nhập</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="row">
                    <div class="col">
                        <a href="#" class="position-relative">
                            <span class="fs-3"><i class="fa-regular fa-heart"></i></span>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                  0
                                </span>
                        </a>
                    </div>
                    <div class="col">
                        <a href="#" class="position-relative">
                            <span class="fs-3"><i class="fa-solid fa-bag-shopping"></i></span>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                  0
                                </span>
                        </a>
                    </div>
                    <div class="col">
                        <a href="#" class="position-relative">
                            <span class="fs-3"><i class="fa-solid fa-print"></i></span>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                  0
                                </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
</section>
<section class="mymainmenu bg-danger">
    <div class="container">
        <div class="row">
            <div class="col-md-3 text-white py-3">Danh mục sản phẩm</div>
            <div class="col-md-9">
                <nav class="navbar navbar-expand-lg bg-danger">
                    <div class="container-fluid">
                        <a class="navbar-brand d-none" href="#">Navbar</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link text-white active" aria-current="page" href="#">Trang chủ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#">Giới thiệu</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Sản phẩm
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white">Tin tức</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white">Tuyển dụng</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</section>
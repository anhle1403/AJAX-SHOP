<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

     <!-- Google Font -->
     <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

     <!-- Css Styles -->
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/bootstrap.min.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/font-awesome.min.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/elegant-icons.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/nice-select.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/jquery-ui.min.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/owl.carousel.min.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/slicknav.min.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/style.css')}}" type="text/css">
     <link rel="stylesheet" href="{{asset('public/frontend/shop/css/sweetalert.css')}}" type="text/css">
     <link rel="icon" href="{{asset('public/frontend/shop/img/logo2.png')}}">
    <style>
        #dk input{
            width: 100%;
    height: 45px;
    border-radius: 2px;
    border: 1px solid whitesmoke;
    margin-top: 21px;
        }
    </style>
</head>

<body style="background-color: rgb(251 251 251)">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="{{asset('public/frontend/shop/img/logo2.png')}}" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="{{URL::to('/gio-hang')}}"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>

            </ul>

        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="{{asset('public/frontend/shop/img/language.png')}}" alt="">
                <div>Ngôn Ngữ</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">VietNamese</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i>  nhatanh.010100@gmail.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> nhatanh.010100@gmail.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="public/frontend/shop/img/language.png" alt="">
                                <div>Ngôn ngữ</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="">VietNamese</a></li>
                                    <li><a href="">English</a></li>
                                </ul>
                            </div>
                            <?php
                            $customer_id = Session::get('customer_id');
                            if($customer_id!=null){
                            ?>
                            <div class="header__top__right__auth">
                                <a href="{{URL::to('/logout-checkout')}}"><i class="fa fa-user"></i> Đăng Xuất</a>
                            </div>
                            <?php
                            }else{
                                ?>
                                 <div class="header__top__right__auth">
                                    <a href="{{URL::to('/login-checkout')}}"><i class="fa fa-user"></i> Đăng nhập</a>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="{{URL::to('/trangchu')}}"><img src="{{asset('public/frontend/shop/img/logo2.png')}}" alt="" style='width:66%' ></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul style="display: flex">
                            <li class="active"><a href="{{URL::to('/trangchu')}}">Trang Chủ</a></li>
                            <li><a href="#">Thương Hiệu</a>
                                <ul class="header__menu__dropdown">

                                    @foreach ($brand as $key=>$brand )
                                    <li><a href="{{URL::to('/thuong-hieu-san-pham/'.$brand->brand_id  )}}"> {{$brand ->brand_name}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="{{URL::to('/contact')}}">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="{{URL::to('/gio-hang')}}"><i class="fa fa-shopping-bag"></i> </a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh Mục</span>
                        </div>
                        <ul >
                            @foreach ($category as $key=>$cate )
                            <li><a href="{{URL::to('/Danh-muc-san-pham/'.$cate->category_id  )}}"> {{$cate ->category_name}}</a></li>
                            @endforeach


                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="{{URL::to('/tim-kiem')}}" method="POST">
                                {{ csrf_field() }}

                                <input type="text" name="keywords_submit" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                                <a href="tel:+84369046596" class="telephone"><i class="fa fa-phone"  ></i></a>
                            </div>
                            <div class="hero__search__phone__text">
                            <h5>+84 369.046.596</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="breadcrumb-section set-bg" data-setbg="{{asset('public/frontend/shop/img/breadcrumb.jpg')}}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
    @yield('content')

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="{{URL::to('/trangchu')}}"><img src="{{asset('public/frontend/shop/img/logo2.png')}}" style="width:66%" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: Quận 12 , TP.HCM</li>
                            <li>Phone: +84 369.046.596</li>
                            <li>Email: nhatanh.010100@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                <div class="footer__copyright">
                        <div class="footer__copyright__text"><p>© NCH. All right reserved</p></div>
                        <div class="footer__copyright__payment"><img src="public/frontend/shop/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="{{asset('public/frontend/shop/js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/jquery.nice-select.min.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/jquery-ui.min.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/jquery.slicknav.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/mixitup.min.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/main.js')}}"></script>
    <script src="{{asset('public/frontend/shop/js/sweetalert.js')}}"></script>
    <script type="text/javascript" src="https://itexpress.vn/API/files/it.snow.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.send_order').click(function(){

                swal({
                        title: "Xác nhận mua hàng",
                        text: "Đơn hàng sẽ không được hoàn lại sau khi đồng ý ",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonClass: "btn-danger",
                        confirmButtonText: "Đồng ý!",
                        cancelButtonText: "No, cancel!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                        },
                        function(isConfirm){
                            if (isConfirm) {

                                var shipping_email = $('.shipping_email').val();
                                var shipping_name = $('.shipping_name').val();
                                var shipping_address = $('.shipping_address').val();
                                var shipping_phone = $('.shipping_phone').val();
                                var shipping_note = $('.shipping_note').val();
                                var shipping_method = $('.payment_select').val();

                                var _token = $('input[name="_token"]').val();
                                $.ajax({
                                    url: '{{url('/confirm-order')}}',
                                    method: 'POST',
                                    data:{shipping_email:shipping_email,shipping_name:shipping_name,
                                    shipping_address:shipping_address,shipping_phone:shipping_phone,
                                    shipping_note:shipping_note,shipping_method:shipping_method,_token:_token},
                                    success:function(){
                                        swal("Hoàn Thành!", "Đơn hàng của bạn đã gửi thành công", "success");

                                    }
                                });
                                window.setTimeout(function(){
                                    location.reload();
                                }, 3000);
                            } else {
                                swal("Cancelled", "Đơn hàng chưa được gửi ", "error");
                            }

                        });




});
});

    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.add-to-cart').click(function(){
                var id = $(this).data('id_product');
                var cart_product_id = $('.cart_product_id_' + id).val();
                var cart_product_name = $('.cart_product_name_' + id).val();
                var cart_product_image = $('.cart_product_image_' + id).val();
                var cart_product_price = $('.cart_product_price_' + id).val();
                var cart_product_qty = $('.cart_product_qty_' + id).val();
                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url: '{{url('/add-cart-ajax')}}',
                    method: 'POST',
                    data:{cart_product_id:cart_product_id,cart_product_name:cart_product_name,cart_product_image:cart_product_image,cart_product_price:cart_product_price,cart_product_qty:cart_product_qty,_token:_token},
                    success:function(){

                        swal({
                                title: "Đã thêm sản phẩm vào giỏ hàng",
                                text: "Bạn có thể mua hàng tiếp hoặc tới giỏ hàng để tiến hành thanh toán",
                                showCancelButton: true,
                                cancelButtonText: "Xem tiếp",
                                confirmButtonClass: "btn-success",
                                confirmButtonText: "Đi đến giỏ hàng",
                                closeOnConfirm: false
                            },
                            function() {
                                window.location.href = "{{url('/gio-hang')}}";
                            });


                        }

});
});
});

    </script>



</body>

</html>




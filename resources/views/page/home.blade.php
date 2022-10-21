@extends('layout')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


@section('conten')
<section class="featured spad">
    <div class="container">
    
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2> Sản Phẩm Mới</h2>
                </div>
                
            </div>
        </div>
        <div class="row featured__filter">
            @foreach ($all_product as $key => $pro)
            <div class="col-lg-3 col-md-4 col-sm-6 mix ">
                <div class="featured__item" style="background-color: rgb(248 248 248)">
                    <div class="featured__item__pic set-bg" data-setbg="{{URL::to('public/uploads/'.$pro->product_images)}}">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            
                           
                        
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="{{URL::to('/chi-tiet-san-pham/'.$pro->product_id)}}">{{$pro->product_name}}</a></h6>
                        <h5>{{number_format($pro->product_price,0,',','.')}} VNĐ</h5>
                    </div>
                    <div class="featured__item__text">
                        <form>
                            {{ csrf_field() }}
                            <input type="hidden" value="{{$pro->product_id}}" class="cart_product_id_{{$pro->product_id}}">
                            <input type="hidden" value="{{$pro->product_name}}" class="cart_product_name_{{$pro->product_id}}">
                            <input type="hidden" value="{{$pro->product_images}}" class="cart_product_image_{{$pro->product_id}}">
                            <input type="hidden" value="{{$pro->product_price}}" class="cart_product_price_{{$pro->product_id}}">
                            <input type="hidden" value="1" class="cart_product_qty_{{$pro->product_id}}">

                        <button type="button" style=" color: white ;  background-color: #7fad39" class=" btn btn-default add-to-cart" name="add-to-cart" data-id_product="{{$pro->product_id}}">Thêm Giỏ Hàng</button>
                        </form>
                    </div>
                </div>
            </div>         
            @endforeach
            
           
        </div>
    </div>
</section>


@endsection
@section('banner1')
<div style="display: flex;padding: 0 14% 1% 14%;gap: 2%;">
<div id="carouselExampleControls" class="carousel slide" style=" width: 66% !important;" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="border-radius: 12px;" src="{{asset('public/frontend/shop/img/carosel1.jpg')}}"  class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img style="border-radius: 12px;" src="{{asset('public/frontend/shop/img/carosel2.jpg')}}"  class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img  style="border-radius: 12px;"src="{{asset('public/frontend/shop/img/carosel3.jpg')}}"  class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" style="padding: 0 20%;" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" style="padding: 0 20%;" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div style="width:35%;display: flex;
    flex-direction: column;
    gap: 14px;}">
    <div  >
      <img style="border-radius: 12px;" src="{{asset('public/frontend/shop/img/carosel4.jpg')}}"   alt="...">
    </div>
    <div  >
      <img style="border-radius: 12px;" src="{{asset('public/frontend/shop/img/carosel5.jpg')}}"   alt="...">
    </div>
    <div   >
      <img  style="border-radius: 12px;"src="{{asset('public/frontend/shop/img/carosel6.jpg')}}"   alt="...">
    </div>
</div>
</div>


@endsection
@section('banner2')
<section class="categories">
    <div class="container" style="background-color: #fdf8f2;">
        <div class="row">
            
            <div class="categories__slider owl-carousel">
                
                <div class="col-lg-3">
                    <img src="{{asset('public/frontend/shop/img/sale1.png')}}" alt="">
                    
                </div>
                <div class="col-lg-3">
                    <img src="{{asset('public/frontend/shop/img/sale2.png')}}" alt="">
                </div>
                <div class="col-lg-3">
                    <img src="{{asset('public/frontend/shop/img/sale3.png')}}" alt="">
                </div>
                <div class="col-lg-3">
                    <img src="{{asset('public/frontend/shop/img/sale4.png')}}" alt="">
                </div>
                <div class="col-lg-3">
                    <img src="{{asset('public/frontend/shop/img/sale5.png')}}" alt="">
                </div>
                
            </div>
            
        </div>
        
    </div>
    
</section>
@endsection
<style>
    .fa:before {
    
    line-height: 45px;}
</style>
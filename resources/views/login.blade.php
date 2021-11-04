<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>{{setting('site.title')}}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">




  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">



	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>


	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">

						<p class="num">тел: +7 939 337-78-53</p>
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-instagram"></i></a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.html"><i class="icon-study"></i>NOTA BENE<span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.html">Главная</a></li>

							<li><a href="#up">Уч.планы</a></li>
							<li><a href="#reg">Регистрация</a></li>
							<li class="btn-cta"><a href="#"><span>Войти в систему</span></a></li>

						</ul>
					</div>
				</div>
                <form action="{{url('login')}}" method="post">
                <div class="row  align-items-center">
                    <div class="col-md-offset-4"></div>
                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Вход в систему</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                    <label>Пин код</label>
                              <input type="text" placeholder="пин код" name="pcd" class="form-control">
                                        {{ csrf_field() }}
                                </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-6">  {!!captcha_img()!!}</div>
                                    <div class="col-md-6">  <input type="text" placeholder="Введите сумму" name="capcha" class="form-control"></div>
                                </div>
                                <br>
                                <input type="submit" class="btn btn-info">

                            </div>
                        </div>
                    </div>
                </div>
                </form>
			</div>
		</div>
	</nav>



	</div>



	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->

	<script>
        $(function() {

        });
	</script>
	</body>
</html>


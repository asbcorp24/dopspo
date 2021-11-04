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

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/sweetalert2.min.css">
	<!-- Pricing -->
	<link rel="stylesheet" href="css/pricing.css">

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
    <!-- Bootstrap 4 -->
    <div class="modal fade" id="modal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Подтверждение</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="gdb">

                </div>
                <div class="modal-footer">
                   <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                </div>
            </div>
        </div>
    </div>
	<div class="fh5co-loader"></div>

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
							<li class="btn-cta"><a href="login"><span>Войти в систему</span></a></li>

						</ul>
					</div>
				</div>

			</div>
		</div>
	</nav>

	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
                @foreach($uppanel as $up)
		   	<li style="background-image: url(../storage/app/public/{!!$up->img!!});">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>{{$up->comment}}</h1>

									<p><a class="btn btn-primary btn-lg" href="#reg">зарегистрироваться </a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
                @endforeach

		  	</ul>
	  	</div>
	</aside>

        <div id="fh5co-about">
            <div class="container">
                <div class="col-md-6 animate-box fadeInUp animated-fast">
                    <span>наша помошь</span>
                    <h2>Компания «NOTA BENE» предлагает ВАМ</h2>
                    Комплексное сопровождение - это подготовка к Периодической аккредитации, которая включает в себя обучение с выдачей баллов НМО, помощь при работе с порталом НМО и составлением портфолио.
                    Так, при выборе полного пакета обучения слушатель получает:
                    <li>	помощь при создании и ведении личного кабинета на портале НМО;</li>
                    <li>	помощь в формировании собственного образовательного маршрута;</li>
                    <li>	подбор подходящих для специальности слушателя тем;</li>
                    <li>	сопровождение на протяжении всего пятилетнего цикла обучения;</li>
                    <li>	помощь в заполнении документов (заявление, портфолио);</li>
                    <li>	консультации по итоговому комплекту документов.</li>

                </div>
                <div class="col-md-6">
                    <img class="img-responsive" src="images/img_bg_2.jpg" alt="Free HTML5 Bootstrap Template">
                </div>
            </div>
        </div>

{{--	<div id="fh5co-counter" class="fh5co-counters" style="background-image: url(images/img_bg_4.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row">
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-world"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="3297" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Foreign Followers</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-study"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="3700" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Students Enrolled</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-bulb"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="5034" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Classes Complete</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-head"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="1080" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Certified Teachers</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--}}

	<div id="fh5co-course">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Наши новости</h2>

				</div>
			</div>
			<div class="row">
                @foreach($tekst as $tx)

                <div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(../storage/app/public/{!!$tx->img!!});">
						</a>
						<div class="desc">
							<h3><a href="#">{{$tx->name}}</a></h3>
                            <p>{{$tx->comment}}</p>
						</div>
					</div>
				</div>
                @endforeach

			</div>
		</div>
	</div>




        <a name="up">
	<div id="fh5co-pricing" class="fh5co-bg-section">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Планы &amp; Цены</h2>

				</div>
			</div>
			<div class="row">
				<div class="pricing pricing--rabten">

                    @foreach($price as $pr)


					<div class="col-md-4 animate-box col-padded"  style="min-height: 430px" >
						<div class="pricing__item table-bordered" style="min-height: 400px;">
							<div class="wrap-price">
								 <!-- <div class="icon icon-user2"></div> -->
	                     <h3 class="pricing__title">{{$pr->name}}</h3>
	                     <!-- <p class="pricing__sentence">Single user license</p> -->
							</div>
                     <div class="pricing__price">
                        <span class="pricing__anim pricing__anim--1">
								<span class="pricing__currency">Р</span>{{$pr->cena}}
                        </span>
                        <span class="pricing__anim pricing__anim--2">
								<span class="pricing__period">в год</span>
                        </span>
                     </div>
                     <div class="wrap-price">
                     	<ul class="pricing__feature-list">
	                     {{$pr->long_name}}
	                     </ul>
	                     <button class="pricing__action" data-id="{{$pr->id}}">Выберите план</button>
                     </div>
                  </div>
					</div>
                    @endforeach

            </div>
			</div>
		</div>
	</div>
        <a name="reg" id="reg">
        <div id="fh5co-contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-md-push-1 animate-box fadeInUp animated-fast">

                        <div class="fh5co-contact-info">
                            <h3>Контакты</h3>
                            <ul>

                                <li class="phone"><a href="tel://+7 939 337-78-53">+7 939 337-78-53</a></li>
                                <li class="email"><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>

                            </ul>
                        </div>

                    </div>
                    <div class="col-md-6 animate-box fadeInUp animated-fast">
                        <h3>Регистрация</h3>
                        <form action="#" id="idForm">
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <!-- <label for="subject">Subject</label> -->
                                  <select class="form-control" name="idz" id='idz'>
                                      @foreach($price as $pr)
                                          <option value="{{$pr->id}}">{{$pr->name}}</option>
                                      @endforeach
                                  </select>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="fname" class="form-control" placeholder="Ваша фамилия" name="fname" required>
                                </div>
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="lname" class="form-control" placeholder="Ваша Имя" name="lname" required>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="date" id="d_r" class="form-control" placeholder="Дата рождения" name="d_r" required>
                                </div>

                            </div>
                            {{ csrf_field() }}
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="phone" class="form-control" placeholder="Ваш телефон" required name="phone">
                                </div>
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="email" class="form-control" placeholder="Ваша почта" name="email">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="nmolog" class="form-control" placeholder="Нмо логин" name="nmolog">
                                </div>
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="nmopass" class="form-control" placeholder="Нмо пароль" name="nmopass" >
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <!-- <label for="message">Message</label> -->
                                    <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Комментарий"></textarea>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <!-- <label for="message">Message</label> -->
                                    {!!captcha_img()!!}
                                </div>
                                <div class="col-md-6">
                                    <!-- <label for="subject">Subject</label> -->
                                    <input type="text" id="nmopass" class="form-control" placeholder="Введите результат сложения" name="captcha" >
                                </div>
                            </div>

                            <div class="form-group">
                                <input type="submit" value="Отправить" class="btn btn-primary" id="ds">
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>
	<div id="fh5co-gallery" class="fh5co-bg-section">
		<div class="row text-center">
			<h2><span>Instagram Gallery</span></h2>
		</div>
		<div class="row" id="instafeed">
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/project-5.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/project-2.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/project-3.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/project-4.jpg);"></a>
			</div>
		</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo" style="background-image: url(images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">


			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy.ASBcorp</small>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="js/simplyCountdown.js"></script>
    <script src="js/sweetalert2.all.min.js"></script>
    <script src="js/jquery.instagramFeed.min.js"></script>

	<!-- Main -->
	<script src="js/main.js"></script>
	<script>
        $(function() {

            $.instagramFeed({
                'username': 'nmo_nb', //Имя пользователя
                'container': "#instafeed", //Контейнер для изображений
                'display_profile': false, //Отображение профиля
                'display_biography': false, //Отображение биографии
                'display_gallery': true, //Отображение галереи
                'styling': true, //Стандартные стили библиотеки
                'items': 4, //Количество изображений в галереи
                'items_per_row': 4, //Количество изображений в ряд
                'margin': 0.5 //Отступ между изображениями
            });


            $('.pricing__action').on('click', function(event) {


                    dn = $('#reg').offset().top;
              $('html, body').animate({scrollTop: dn}, 1000);

            });
            var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

            // default example
            simplyCountdown('.simply-countdown-one', {
                year: d.getFullYear(),
                month: d.getMonth() + 1,
                day: d.getDate()
            });

            $("#idForm").submit(function (e) {

                e.preventDefault(); // avoid to execute the actual submit of the form.
                console.log('ee');
                var form = $(this);
                var url = 'addst';

                $.ajax({
                    type: "POST",
                    url: url,
                    data: form.serialize(), // serializes the form's elements.
                    success: function (data) {
                        if (data[0] == 404) {
                            $('#gdb').html('Неправильная контрольная строка');
                            $('#modal').modal('show');
                            console.log('ree');
                            return;
                        }

                        $('#idForm')[0].reset();

                        if (data[0] == 1) {
                            Swal.fire({
                                title: 'с телефоном ' + data[1][0].phone + '<br> привязан ' + data[1][0].fam + ' ' + data[1][0].name + '' +
                                    ' хотите добавить услугу в личном кабинете? ',
                                showDenyButton: true,

                                confirmButtonText: 'Добавить',
                                denyButtonText: `Отменить`,
                            }).then((result) => {
                                /* Read more about isConfirmed, isDenied below */
                                if (result.isConfirmed) {

                                } else if (result.isDenied) {

                                }
                            })
                        } else {
                            $('#gdb').html('Вы успешно зарегестрировались на сайте <br> ваш пароль ' + data[1].passw + '<br>  в ближайшее время с вами свяжутся наши менеджеры по телефону');
                            $('#modal').modal('show');
                        }
                        // show response from the php script.
                    }
                });


            });

            $('.pricing__action').click(function () {

                id = $(this).data('id');
                console.log($('#idz option[value=' + id + ']'));
                $('#idz option[value=' + id + ']').prop('selected', true);

            });
            //jQuery example
            $('#simply-countdown-losange').simplyCountdown({
                year: d.getFullYear(),
                month: d.getMonth() + 1,
                day: d.getDate(),
                enableUtc: false
            });
        });
	</script>
	</body>
</html>


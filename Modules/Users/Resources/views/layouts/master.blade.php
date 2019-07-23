<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href={{asset('/public/style/images/icons/favicon.ico')}}/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/vendor/bootstrap/css/bootstrap.min.css')}}>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/vendor/animate/animate.css')}}>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/vendor/css-hamburgers/hamburgers.min.css')}}>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/vendor/animsition/css/animsition.min.css')}}>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/vendor/select2/select2.min.css')}}>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/vendor/daterangepicker/daterangepicker.css')}}>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/css/util.css')}}>
	<link rel="stylesheet" type="text/css" href={{asset('/public/style/css/main.css')}}>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			@yield('content')
		</div>
	</div>
	

	
<!--===============================================================================================-->
	<script src={{asset('/public/style/vendor/jquery/jquery-3.2.1.min.js')}}></script>
<!--===============================================================================================-->
	<script src={{asset('/public/style/vendor/animsition/js/animsition.min.js')}}></script>
<!--===============================================================================================-->
	<script src={{asset('/public/style/vendor/bootstrap/js/popper.js')}}></script>
	<script src={{asset('/public/style/vendor/bootstrap/js/bootstrap.min.js')}}></script>
<!--===============================================================================================-->
	<script src={{asset('/public/style/vendor/select2/select2.min.js')}}></script>
<!--===============================================================================================-->
	<script src={{asset('/public/style/vendor/daterangepicker/moment.min.js')}}></script>
	<script src={{asset('/public/style/vendor/daterangepicker/daterangepicker.js')}}></script>
<!--===============================================================================================-->
	<script src={{asset('/public/style/vendor/countdowntime/countdowntime.js')}}></script>
<!--===============================================================================================-->
	<script src={{asset('/public/style/js/main.js')}}></script>

</body>
</html>
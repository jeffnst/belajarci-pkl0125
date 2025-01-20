<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>halaman login</title>
	<link href="<?php echo base_url('public/template/css/bootstrap.min.css'); ?>" rel="stylesheet">
</head>

<body>
	<div class="row justify-content-center pt-5">


		<div class="card col-md-4">
			<div class="card-header">
				<div class="card-title fw-bold">Sign In</div>
			</div>
			<div class="card-body">
				<form id="form_login" action="#" method="post" enctype="multipart/form-data">
					<div class="mb-1">
						<label for="username" class="form-label">Username</label>
						<input type="email" class="form-control" id="username" name="username" value="">
						<div class="error-block"></div>
					</div>
					<div class="mb-1">
						<label for="password" class="form-label">Password</label>
						<input type="password" class="form-control" id="password" name="password" value="">
						<div class="error-block"></div>
					</div>

					<button type="button" id="loginBtn" class="btn btn-primary mt-3 ">Login</button>
					<div class="login-error"></div>
				</form>

			</div>
		</div>
	</div>




	<script src="<?php echo base_url('public/template/js/bootstrap.bundle.min.js'); ?>"></script>
	<script src="<?php echo base_url('public/template/js/jquery-3.7.1.min.js'); ?>"></script>

	<script>
		$(document).ready(function() {
			$('#loginBtn').click(function() {
				let msg = '';
				$('.error-block').html('');
				$('input').removeClass('is-invalid');
				let formdata = new FormData($("#form_login")[0])
				$.ajax({
					url: '<?php echo base_url('login/proses_login'); ?>',
					type: 'POST',
					data: formdata,
					processData: false,
					contentType: false,
					dataType: 'json',
					success: function(response) {
						if (response.status) {
							//alert(response.message);
							msg = 'email: ' + response.email + '<br>password: ' + response.password;
							msg += '<br>status: ' + response.message;
							$('.login-error').html(msg).addClass('alert alert-success');
							$('#loginBtn').text('logout').addClass('btn-danger');

							window.location.href = '<?php echo base_url('dashboard'); ?>';

						} else {
							if (response.error) {
								//console.log('error1: ' + response.error[1]);
								for (var prop in response.error) {
									if (response.error[prop] !== '') {

										$("#form_login [name= " + prop + "] ").addClass('is-invalid').next('div .error-block').html(response.error[prop]);
									}


								}

								/* for (var i = 0; i < response.error.length; i++) {
									console.log('error2:' + response.error);

									$('#' + response.error[i]).addClass('is-invalid').next('.error-block').html(response.error[i]);
								} */

							} else {
								console.log('error3: not found');
							}

						}
					}
				});
			});
		});
	</script>
</body>

</html>

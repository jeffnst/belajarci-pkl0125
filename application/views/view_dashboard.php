<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="<?php echo base_url('public/template/css/bootstrap.min.css'); ?>" rel="stylesheet">
	<title>Dashboard</title>
</head>

<body>
	<div class="row justify-content-center">
		<div class="card col-md-8 mt-5 ">
			<div class="card-header">
				<h1>halaman dashboard</h1>
			</div>
			<div class="card-body">
				<div class="">
					<a href="<?= base_url('dashboard/add'); ?>" class="btn btn-primary">Tambah User</a>
				</div>
				<div class="table-user">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>No</th>
								<th>Username</th>
								<th>Password</th>
								<th>Aksi</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$no = 1;
							foreach ($users as $user) :
							?>
								<tr>
									<td><?= $no++ ?></td>
									<td><?= $user->username ?></td>
									<td><?= $user->password ?></td>
									<td>
										<a href="<?= base_url('dashboard/edit/' . $user->id); ?>" class="btn btn-primary">Edit</a>
										<a href="<?= base_url('dashboard/delete/' . $user->id); ?>" class="btn btn-danger">Delete</a>
									</td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	<script src="<?php echo base_url('public/template/js/bootstrap.bundle.min.js'); ?>"></script>
	<script src="<?php echo base_url('public/template/js/jquery-3.7.1.min.js'); ?>"></script>
</body>

</html>
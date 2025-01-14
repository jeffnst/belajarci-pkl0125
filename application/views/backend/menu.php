<li class="nav-item">
	<a href="<?php echo base_url('admin') ?>" class="nav-link">
		<i class="nav-icon fas fa-tachometer-alt "></i>
		<p>
			Dashboard
		</p>
	</a>
</li>
<li class="nav-item ">
	<a href="#" class="nav-link ">
		<i class="nav-icon fas fa-th "></i>
		<p>
			Master Data
			<i class="right fas fa-angle-left"></i>
		</p>
	</a>
	<ul class="nav nav-treeview">
		<li class="nav-item">
			<a href="<?php echo base_url('tahun_pelajaran') ?>" class="nav-link ">
				<i class="far fa-circle nav-icon"></i>
				<p>Data Tahun Pelajaran</p>
			</a>
		</li>
		<li class="nav-item">
			<a href="<?php echo base_url('jurusan') ?>" class="nav-link ">
				<i class="far fa-circle nav-icon"></i>
				<p>Data Jurusan</p>
			</a>
		</li>
		<li class="nav-item">
			<a href="<?php echo base_url('kelas') ?>" class="nav-link ">
				<i class="far fa-circle nav-icon"></i>
				<p>Data Kelas</p>
			</a>
		</li>

	</ul>
</li>

<li class="nav-item">
	<a href="<?php echo base_url('user_akun') ?>" class="nav-link">
		<i class="nav-icon fas fa-users "></i>
		<p>
			Akun Pengguna
		</p>
	</a>
</li>

<li class="nav-item">
	<a href="<?php echo base_url('login/logout') ?>" class="nav-link">
		<i class="nav-icon fas fa-sign-out-alt"></i>
		<p>
			Keluar
		</p>
	</a>
</li>
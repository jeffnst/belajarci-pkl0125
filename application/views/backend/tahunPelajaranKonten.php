<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">Tahun Pelajaran</h3>
			</div>
			<div class="card-body">
				<div class="row">
					<table class="table table-striped" id="tabelTahunPelajaran">
						<thead>
							<tr>
								<th>No</th>
								<th>Tahun Pelajaran</th>
								<th>Mulai</th>
								<th>Akhir</th>
								<th>Status</th>
								<th>Aksi</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {
		tabelTahunPelajaran();
	})

	function tabelTahunPelajaran() {
		let tabelTahunPelajaran = $('#tabelTahunPelajaran');
		let tr = $('<tr>');
		$.ajax({
			url: '<?php echo base_url('tahun_pelajaran/table_tahun_pelajaran'); ?>',
			type: 'GET',

			dataType: 'json',
			success: function(response) {
				if (response.status) {
					tabelTahunPelajaran.find('tbody').html('');
					let no = 1;
					$.each(response.data, function(i, item) {

						tr.append('<td>' + no++ + '</td>');
						tr.append('<td>' + item.nama_tahun_pelajaran + '</td>');
						tr.append('<td>' + item.tanggal_mulai + '</td>');
						tr.append('<td>' + item.tanggal_akhir + '</td>');
						tr.append('<td>' + item.status_tahun_pelajaran + '</td>');
						tr.append('<td>	<button class="btn btn-primary" onclick="editTahunPelajaran(' + item.id + ')">Edit</button> <button class="btn btn-danger" onclick="deleteTahunPelajarar(' + item.id + ')">Delete</button></td>');
						tabelTahunPelajaran.find('tbody').append(tr);
					});

				} else {
					tabelTahunPelajaran.find('tbody').html('');
					tr.append('<td colspan="4">' + response.message + '</td>');
				}
			}
		});
	}
</script>
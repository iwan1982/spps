
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo isset($title) ? '' . $title : null; ?>
			<small>List</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo site_url('manage') ?>"><i class="fa fa-th"></i> Home</a></li>
			<li class="active"><?php echo isset($title) ? '' . $title : null; ?></li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<?php echo form_open(current_url(), array('method' => 'get')) ?> <br>
						<div class="row">
							<div class="col-md-3">  
								<div class="form-group">
									<div class="input-group date " data-date="" data-date-format="yyyy-mm-dd">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										<input class="form-control" type="text" name="ds" readonly="readonly" <?php echo (isset($q['ds'])) ? 'value="'.$q['ds'].'"' : '' ?> placeholder="Tanggal Awal">
									</div>
								</div>
							</div>
							<div class="col-md-3">  
								<div class="form-group">
									<div class="input-group date " data-date="" data-date-format="yyyy-mm-dd">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										<input class="form-control" type="text" name="de" readonly="readonly" <?php echo (isset($q['de'])) ? 'value="'.$q['de'].'"' : '' ?> placeholder="Tanggal Akhir">
										
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary">Filter</button>
							<?php if ($q) { ?>
							<a class="btn btn-success" href="<?php echo site_url('manage/report/report' . '/?' . http_build_query($q)) ?>"><i class="fa fa-file-excel-o" ></i> Export Excel</a>
							<?php } ?>
						</div>
					</div>

				</div>
			</div>

	</div>

	<?php if ($q AND !empty($dom)) { ?>

				<div class="box box-info">
					<div class="box-body table-responsive">
						<table class="table table-responsive table-hover table-bordered" style="white-space: nowrap;" id="nilai">
							<thead>
							<tr>
								<th rowspan="3">No</th>
								<th rowspan="3">Pembayaran</th>
								<th rowspan="3">Nama Siswa</th>
								<th rowspan="3">Kelas</th>
								<th rowspan="3">Tanggal</th>
								<th rowspan="3">Penerimaan</th>
								<th rowspan="3">Pengeluaran</th>
								<th rowspan="3">Keterangan</th>
							</tr>
						</thead>

							<?php $i=1;
							foreach ($bulan as $row) : ?>
								<tr>
                                    <td><?php echo $i++; ?></td>
									<td><?php echo $row['pos_name'].' - T.A '.$row['period_start'].'/'.$row['period_end'].'-'.$row['month_name']?></td>
									<td><?php echo $row['student_full_name']?></td>
									<td><?php echo $row['class_name']?></td> 
									<td><?php echo pretty_date($row['bulan_date_pay'], 'm/d/Y', FALSE)?></td>
									<td><?php echo number_format($row['bulan_bill'])?></td>
									</tr>
									
									 <?php endforeach ?>
									
								<?php
								foreach ($dom as $row) : ?>
									<tr>
                                    <td><?php echo $i++; ?></td>
									<td><?php echo $row['pos_name'].' - T.A '.$row['period_start'].'/'.$row['period_end']?></td>
									<td><?php echo $row['student_full_name']?></td>
									<td><?php echo $row['class_name']?></td> 
									<td><?php echo pretty_date($row['bebas_pay_input_date'], 'm/d/Y', FALSE)?></td>
									<td><?php echo number_format($row['bebas_pay_bill'])?></td>
								</tr>
                                   						
<tfoot>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td><span id="hasil"></span></td>

</tfoot>
                            <?php endforeach ?>
							</table>

					</div>
					<!-- /.box-body -->
				</div>
				<?php } ?>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>

<script>
		var table = document.getElementById("nilai"), sumHsl = 0;
		for(var t = 1; t < table.rows.length; t++)
		{
			sumHsl = sumHsl + parseInt(table.rows[t].cells[5].innerHTML.replace(/[^0-9]/g, ''));
		}
		document.getElementById("hasil").innerHTML = "Sum Value = "+ sumHsl;
		
	</script>

	
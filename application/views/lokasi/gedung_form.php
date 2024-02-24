<!-- Main content -->
<section class='content'>
    <div class='row'>
        <div class='col-xs-12'>
            <div class='box box-<?= $box ?>'>
                <div class='box-header  with-border'>
                    <h3 class='box-title'>FORMULIR KELAS</h3>
                </div>
                <div class="box-body">
                    <form role="form" id="myForm" data-toggle="validator" action="<?php echo $action; ?>" method="post">
                        <div class="form-group has-feedback">
                            <label for="nama_gedung" class="control-label">KELAS<?php echo form_error('nama_gedung') ?></label>
                            <div class="input-group">
                                <input type="text" class="form-control" data-error="Kelas harus diisi" name="nama_gedung" id="nama_gedung" placeholder="Kelas" value="<?php echo $nama_gedung; ?>" required />
                                <span class="input-group-addon">
                                    <span class="fas fa-door-open"></span>
                                </span>
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="alamat" class="control-label">Tingkatan <?php echo form_error('alamat') ?></label>
                            <div class="input-group">
                                <input type="text" class="form-control" data-error="Tingkatan harus diisi" name="alamat" id="alamat" placeholder="Tingkatan" value="<?php echo $alamat; ?>" required />
                                <span class="input-group-addon">
                                    <span class="fas fa-address-card"></span>
                                </span>
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                        <input type="hidden" name="gedung_id" value="<?php echo $gedung_id; ?>" />
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary btn-lg btn3d"><?php echo $button ?></button>
                            <a href="<?php echo site_url('lokasi') ?>" class="btn btn-default  btn-lg btn3d">Cancel</a>
                        </div>
                    </form>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</section><!-- /.content -->
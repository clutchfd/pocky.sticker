<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); 


?>
<script type="text/javascript">
    window.onload = function() {
        FB.Canvas.setSize({ width: 810, height: 752 });
    }
</script>
<div class="content-img">
	<div class="row">
	  <div class="registration">
		<?php echo form_open_multipart(base_url('home/register'),array('id'=>'register','class'=>'form-horizontal'));?>
		  <fieldset>

			<!-- Form Name -->
			<legend>Masukkan data pribadi kamu sebelum mengunggah foto koleksi stiker JKT48 yang sudah kamu miliki.</legend>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Nama&ast;</label>
			  <div class="col-sm-8">
				<input type="text" class="form-control" placeholder="Nama" value="<?php echo set_value('name', @$user_fb->fb_name) ?>" name="name" required>
                <small><?php echo $errors['name'];?></small>
              </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Usia&ast;</label>
			  <div class="col-sm-8">
				<input type="text" class="form-control" placeholder="Usia" value="<?php echo set_value('age', @$user_fb->age) ?>" name="age" required>
                <small><?php echo $errors['age'];?></small>
              </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Jenis Kelamin&ast;</label>
			  <div class="col-sm-8">
                    <select name="gender" id="gender" class="form-control" required>
                        <option value=""></option>
                        <?php foreach ($genders as $gender) { ?>
                            <option value="<?php echo $gender;?>" <?php echo $gender == $fields->gender ? 'selected' :'';?>><?php echo $gender;?></option>
                        <?php } ?>
                    </select>
                    <small><?php echo $errors['gender'];?></small>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Alamat Lengkap&ast;</label>
			  <div class="col-sm-8">
                    <textarea type="text" class="form-control" placeholder="Alamat" name="address" required><?php echo set_value('address', @$user_fb->address) ?></textarea>
                    <small><?php echo $errors['address'];?></small>
              </div>
			</div>

			<div class="form-group">
			  <div class="col-sm-4" for="textinput"></div>
			  <div class="col-sm-4">
                    <input type="hidden" value="<?php echo $field->province;?>">
                    <select name="province" class="form-control" id="province" onChange="getRegion($(this),'province');" required>
                        <option value="0">-- PROPINSI --</option>
                        <?php foreach ($provinces as $province){ ?>
                          <option value="<?php echo $province->id;?>" name="province"><?php echo $province->name;?></option>
                        <?php } ?>
                    </select>
                    <small><?php echo $errors['province'];?></small>
			  </div>
			  <div class="col-sm-4">
                    <input type="hidden" value="<?php echo $field->urbandistrict;?>">
                    <select name="urbandistrict" class="form-control" id="urbandistrict" onChange="getRegion($(this),'urbandistrict');">
                        <option value="0">-- KABUPATEN --</option>
                    </select>
                    <small><?php echo $errors['urbandistrict'];?></small>
			  </div>
			</div>
			<div class="form-group">
			  <div class="col-sm-4" for="textinput"></div>
			  <div class="col-sm-4">
                    <input type="hidden" value="<?php echo $field->suburban;?>">
                    <select name="suburban" class="form-control" id="suburban" onChange="getRegion($(this),'suburban');" required>
                        <option value="0">-- KECAMATAN --</option>
                    </select>
                    <small><?php echo $errors['suburban'];?></small>
			  </div>

			  <div class="col-sm-4">
                  <input type="text" name="zipcode" placeholder="Kode Pos" class="form-control" value="<?php echo $fields->zipcode;?>">
                  <small><?php echo $errors['zipcode'];?></small>
			  </div>
			</div>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">No Hp.&ast;</label>
			  <div class="col-sm-8">
                    <input type="text" name="phone" class="form-control" placeholder="No. Telp" value="<?php echo set_value('phone', @$user_fb->phone) ?>" name="phone" required>
                    <small><?php echo $errors['phone'];?></small>
              </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">No Kartu Identitas&ast;</label>
			  <div class="col-sm-8">
                    <input type="text" name="id_number" placeholder="KTP/SIM/KARTU PELAJAR" value="<?php echo $fields->id_number;?>" class="form-control" required>
                    <small><?php echo $errors['id_number'];?></small>
              </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Nama Oshi Favorit&ast;</label>
			  <div class="col-sm-8">
                    <input type="text" name="oshi_favorite" placeholder="Oshi Favorit" value="<?php echo $fields->oshi_favorite;?>" class="form-control">
                    <small><?php echo $errors['oshi_favorite'];?></small>
              </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <div class="col-sm-4" for="textinput"></div>
			  <div class="col-sm-8">
				<p>&ast;&rpar; Semua kolom harus diisi</p>
				<p>&ast;&rpar; Semua data yang dimasukkan adalah benar</p>
				<p>&ast;&rpar; Saya menyetujui syarat & ketentuan yang berlaku</p>
			  </div>
			</div>

			<div class="klik font-pocky">
			  <button type="submit" class=""><a href=>LANJUTKAN</a></button>
			</div>

		  </fieldset>
		  <div class="error-form" style="width:50%; margin:0 auto">
			<?php echo validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?>
		  </div>
		<?=form_close();?>
	  </div><!-- /.col-lg-12 -->
	</div><!-- /.row -->
</div>
<!--section id="content" class="thanks">
    <?=form_open_multipart(base_url('home/register'),array('id'=>'register'));?>
    <input type="hidden" name="picture_url" value="<?php echo @$user_fb->fb_pic ?>"/>
    <input type="hidden" name="fb_id" value="<?php echo @$user_fb->fb_id ?>"/>
    <div class="cover">
	<div class="head_tit regist"></div>
	<div class="listcen">
	    <div class="cont text-center">
		<h3 class="text-center">Masukkan data diri untuk mulai bermain.</h3>
		<img src="<?=base_url();?>assets/public/img/regist.png" alt="" />
		<div class="form_G">
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="Nama" value="<?php echo set_value('name', @$user_fb->fb_name) ?>" name="name" required>
		    </div>
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="Alamat" value="<?php echo set_value('address', @$user_fb->address) ?>" name="address" required>
		    </div>
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="E-mail" value="<?php echo set_value('email', @$user_fb->fb_email) ?>" name="email" required>
		    </div>
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="No. Telp" value="<?php echo set_value('phone', @$user_fb->phone) ?>" name="phone">
		    </div>   
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="Twitter" value="<?php echo set_value('twitter', @$user_fb->twitter) ?>" name="twitter" required>
		    </div>                                   
		</div>
		<div class="row">
		  <div class="col-lg-12 kiri">
			<div class="input-group">
			  <span class="input-group-addon">
				<input type="checkbox" name="checkbox_rules" required="required">
			  </span>
			  <h3>Saya sudah menyetujui syarat dan ketentuan yang berlaku.*</h3>
			</div>
			<div class="input-group">
			  <span class="input-group-addon">
				<input type="checkbox" name="checkbox_data" required="required">
			  </span>
			  <h3>Data yang saya masukkan adalah benar.*</h3>
			</div>         
		  </div>
		</div>        
	    </div>
	</div>
    </div>
    <div class="error-form" style="width:50%; margin:0 auto">
	<?php echo validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?>
    </div>
    <div class="atas posit2 text-center"><button type="submit" class="btn btn-primary btn-lg" role="button">DAFTAR</button></div>
    <?=form_close();?>
</section-->
    
    
                
            <!-- HEADER DESKTOP-->
            
            <!-- MAIN CONTENT-->
   <form action="tambah_pegawai" method="post" class="form-horizontal">
              <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                       Tambah <strong>Pegawai</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="hf-nama_paket" class=" form-control-label">NIP</label>

                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="hf-no_sk" name="nip" placeholder="Masukkan NIP" class="form-control">
                                                    
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="hf-no_sk" class=" form-control-label">Nama</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="hf-no_sk" name="nama" placeholder="Masukkan Nama" class="form-control">
                                                    
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="hf-nama_paket" class=" form-control-label">Alamat</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="hf-nama_paket" name="alamat" placeholder="Masukkan Alamat" class="form-control">
                                                    
                                                </div>
                                            </div>
                                             
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="hf-hps" class=" form-control-label">Bidang</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select type="text" id="hf-hps" name="id_bidang" placeholder="Masukkan Bdiang" class="form-control">
                                                        <?php foreach ($data_pegawai as $row) : ?>
                                                        <option value="<?= $row['id_bidang'] ?>"><?= $row['bidang'] ?></option>
                                                        <?php endforeach ?>
                                                    
                                                        
                                                        
                                                       </select>
                                                       
                                                </div>
                                            </div>
                                              <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="hf-hps" class=" form-control-label">Jabatan</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select type="text" id="hf-hps" name="jabatan" placeholder="Masukkan jabatan" class="form-control">
                                                        <?php foreach ($data_jabatan as $row) : ?>
                                                        <option value="<?= $row['id_jabatan'] ?>"><?= $row['jabatan'] ?></option>
                                                        <?php endforeach ?>
                                                    
                                                        
                                                        
                                                       </select>
                                                       
                                                </div>
                                            </div>
                                                
                                                
                                            
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm" name="submit">
                                            <i class="fa fa-plus-circle"></i> Tambah
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                           </div></form>
                
                         

                            
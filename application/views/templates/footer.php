<!-- Footer -->
<div class="footer-v1 bg-dark">
    <div class="footer bg-dark">
        <div class="container">
            <div class="row justify-content-between">
                <!-- About -->
                <div class="col-md-5 md-margin-bottom-40">
                    <div class="headline mb-5">
                        <h2 class="text-light bg-dark">Tentang </h2>
                    </div>
                    <div class="row">
                        <div class="col-sm-3 justify-content-end d-flex align-items-center">
                            <img src="<?php echo base_url() ?>/assets/img/asel.png" alt="Logo" style="height: 75px; margin-bottom: 5px;">
                        </div>
                        <div class="col-sm-9">
                            <p class="text-light bg-dark"><b class="text-light bg-dark">Lerem Ipsum</b> Lorem Ipsum sit.</p>
                        </div>
                    </div>
                </div>
                <!--/col-md-3-->
                <!-- End About -->

                <!-- Latest -->
                <div class="col-md-5 md-margin-bottom-40">
                    <div class="posts">
                        <div class="headline mb-5">
                            <h2 class="text-light bg-dark">Kontak Info</h2>
                        </div>
                        <ul class="list-unstyled latest-list">
                            <li>
                                <a href="#" class="text-light bg-dark">Alamat</a>
                                <small class="text-light bg-dark">Jl. </small>
                            </li>
                            <li>
                                <a href="#" class="text-light bg-dark">Telp.</a>
                                <small class="text-light bg-dark">(0536) </small>
                            </li>
                            <li>
                                <a href="#" class="text-light bg-dark"> Email</a>
                                <small class="text-light bg-dark">email@aha.id</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--/col-md-3-->
                <!-- End Latest -->

                <!-- Link List -->

            </div>
            <!--/footer-->

            <div class="copyright mt-8 pt-4" style="border-top: 0.2px solid rgba(255,255,255,.4)">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <p class="mb-1 mt-2 bg-dark text-white d-flex justify-content-center">
                                <?= (int) date('Y') ?> © PEMERINTAH
                            </p>
                        </div>


                    </div>
                </div>
            </div>
            <!--/copyright-->
        </div>


        <?php foreach ($js_list as $js) { ?>
            <script src="<?= base_url($js) ?>"></script>
        <?php } ?>
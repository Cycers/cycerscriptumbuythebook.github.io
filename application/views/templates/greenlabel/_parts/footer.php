<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 f-col">
                    <h3><?= lang('about_us') ?></h3>
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Culpa quaerat deserunt tempore eos, dicta, obcaecati!</p>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6 f-col">
                    <h3><?= lang('pages') ?></h3>
                    <ul>
                        <li><a href="<?= base_url() ?>">» <?= lang('home') ?> </a></li>
                        <li><a href="<?= LANG_URL . '/checkout' ?>">» <?= lang('checkout') ?> </a></li>
                        <li><a href="<?= LANG_URL . '/contacts' ?>">» <?= lang('contacts') ?> </a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6 f-col">
                    <h3><?= lang('categories') ?></h3>
                    <?php if (!empty($footerCategories)) { ?>
                        <ul>
                            <?php foreach ($footerCategories as $key => $categorie) { ?>
                                <li><a href="javascript:void(0);" data-categorie-id="<?= $key ?>" class="go-category"><?= $categorie ?></a></li>
                            <?php } ?>
                        </ul>
                    <?php } else { ?>
                        <p><?= lang('no_categories') ?></p>
                    <?php } ?>
                </div>
                <div class="col-lg-4  col-md-4 col-sm-4 col-xs-6 f-col">
                    <h3><?= lang('contacts') ?></h3>
                    <ul class="footer-icon">
                        <?php if ($footerContactAddr != '') { ?>
                            <li>
                                <span class="pull-left"><i class="fa fa-map-marker"></i></span> 
                                <span class="pull-left f-cont-info"> <?= $footerContactAddr ?></span> 
                            </li>
                        <?php }if ($footerContactPhone != '') { ?>
                            <li>
                                <span class="pull-left"><i class="fa fa-phone"></i></span> 
                                <span class="pull-left f-cont-info"> <?= $footerContactPhone ?></span> 
                            </li>
                        <?php } if ($footerContactEmail != '') { ?>
                            <li>
                                <span class="pull-left"><i class="fa fa-envelope"></i></span> 
                                <span class="pull-left f-cont-info"><a href="mailto:<?= $footerContactEmail ?>"><?= $footerContactEmail ?></a></span>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-lg-4  col-md-4 col-sm-6 col-xs-12 f-col">
                    <ul class="social">
                        <?php if ($footerSocialFacebook != '') { ?>
                            <li> <a href="<?= $footerSocialFacebook ?>"><i class=" fa fa-facebook"></i></a></li>
                        <?php } if ($footerSocialTwitter != '') { ?>
                            <li> <a href="<?= $footerSocialTwitter ?>"><i class="fa fa-twitter"></i></a></li>
                        <?php } if ($footerSocialGooglePlus != '') { ?>
                            <li> <a href="<?= $footerSocialGooglePlus ?>"><i class="fa fa-google-plus"></i></a></li>
                        <?php } if ($footerSocialPinterest != '') { ?>
                            <li> <a href="<?= $footerSocialPinterest ?>"><i class="fa fa-pinterest"></i></a></li>
                        <?php } if ($footerSocialYoutube != '') { ?>
                            <li> <a href="<?= $footerSocialYoutube ?>"><i class="fa fa-youtube"></i></a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div> 
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"><?= $footercopyright ?></p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    
                </ul> 
            </div>
        </div>
    </div>
</footer>
<?php if ($this->session->flashdata('emailAdded')) { ?>
<script>
    $(document).ready(function () {
        ShowNotificator('alert-info', '<?= lang('email_added') ?>');
    });
</script>
    <?php
}
echo $addJs;
if ($this->session->flashdata('userError')) {
    if (is_array($this->session->flashdata('userError'))) {
        $usr_err = implode(' ', $this->session->flashdata('userError'));
    } else {
        $usr_err = $this->session->flashdata('userError');
    }
    ?>
    <script>
        $(document).ready(function () {
            ShowNotificator('alert-danger', '<?= $usr_err ?>');
        });
    </script>
    <?php
}
?>
<div id="notificator" class="alert"></div>
<script src="<?= base_url('assets/js/bootstrap.min.js') ?>"></script>
<script src="<?= base_url('assets/js/placeholders.min.js') ?>"></script>
<script>
var variable = {
    clearShoppingCartUrl: "<?= base_url('clearShoppingCart') ?>",
    manageShoppingCartUrl: "<?= base_url('manageShoppingCart') ?>",
    discountCodeChecker: "<?= base_url('discountCodeChecker') ?>"
};
</script>
<script src="<?= base_url('assets/js/system.js') ?>"></script>
<script src="<?= base_url('templatejs/mine.js') ?>"></script>
</body>
</html>
<?php defined('BASEPATH') or exit('No direct script access allowed'); ?><!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?= $assets ?>/img/apple-icon.png">
    <link rel="shortcut icon" href="<?= $assets ?>images/icon.png"/>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title><?= $title ?></title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" >
    <!-- CSS Files -->
    <link href="<?= $assets ?>css/bootstrap.min.css" rel="stylesheet" />
    <link href="<?= $assets ?>css/now-ui-kit.css?v=1.3.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="<?= $assets ?>demo/demo.css" rel="stylesheet" />
    <!-- bayoeway style -->
    <link rel="stylesheet" href="<?= $assets ?>styles/bayoeway-style.css">

    </head>

    <body class="login-page sidebar-collapse">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
    <div class="container">
      <div class="dropdown button-dropdown">
        <a href="#pablo" class="dropdown-toggle" id="navbarDropdown" data-toggle="dropdown">
          <span class="button-bar"></span>
          <span class="button-bar"></span>
          <span class="button-bar"></span>
        </a>
  
      </div>
      <div class="navbar-translate">
        <a class="navbar-brand" href="https://widodomakmurperkasa.co.id" rel="tooltip" title="Designed by WMP DEV. Coded by Creative Tim" data-placement="bottom" target="_blank">
          
        </a>
        <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar top-bar"></span>
          <span class="navbar-toggler-bar middle-bar"></span>
          <span class="navbar-toggler-bar bottom-bar"></span>
        </button>
      </div>
      <!-- <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="<?= $assets ?>assets/img/blurred-image-1.jpg">
        <ul class="navbar-nav">
      
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="" target="_blank">
              <i class="fab fa-twitter"></i>
              <p class="d-lg-none d-xl-none">Twitter</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="" target="_blank">
              <i class="fab fa-facebook-square"></i>
              <p class="d-lg-none d-xl-none">Facebook</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="" target="_blank">
              <i class="fab fa-instagram"></i>
              <p class="d-lg-none d-xl-none">Instagram</p>
            </a>
          </li>
        </ul>
      </div> -->
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="page-header clear-filter" filter-color="green">
    <div class="page-header-image" style="background-image:url(<?= $assets ?>/img/whub1.JPG)"></div>
    <div class="content">
      <div class="container">
        <div class="col-md-4 ml-auto mr-auto">
          <div class="card card-login card-plain">
          <?php echo admin_form_open('auth/login', 'class="login" data-toggle="validator"'); ?>
              <div class="card-header text-center">
                <div class="logo-container">
                <?php if ($Settings->logo2) {
                    echo '<img src="' . base_url('assets/uploads/logos/' . $Settings->logo2) . '" alt="' . $Settings->site_name . '" />';
                } ?>
                </div>
              </div>
             
              <?php if ($Settings->mmode) {
                ?>
                            <div class="alert alert-warning">
                                <button data-dismiss="alert" class="close" type="button">×</button>
                                <?= lang('site_offline') ?>
                            </div>
                            <?php
                }
                        if ($error) {
                            ?>
                            <div class="alert alert-danger">
                                <button data-dismiss="alert" class="close" type="button">×</button>
                                <ul class="list-group"><?= $error; ?></ul>
                            </div>
                            <?php
                        }
                        if ($message) {
                            ?>
                            <div class="alert alert-success">
                                <button data-dismiss="alert" class="close" type="button">×</button>
                                <ul class="list-group"><?= $message; ?></ul>
                            </div>
                            <?php
                        }
                        ?>
              <div class="card-body">
                <div class="input-group no-border input-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fa fa-users"></i>
                    </span>
                  </div>
                  <input type="text" value="<?= DEMO ? 'owner@wmeat.store' : ''; ?>" required="required" class="form-control" name="identity"placeholder="<?= lang('username') ?>"/>
                </div>
                <div class="input-group no-border input-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fas fa-key"></i>
                    </span>
                  </div>
                  <input type="password" value="<?= DEMO ? '12345678' : ''; ?>" required="required" class="form-control " name="password"  placeholder="<?= lang('pw') ?>"/>
                </div>
              </div>
                <div class="card-footer text-center">
                    <!-- <a href="#pablo" class="btn btn-primary btn-round btn-lg btn-block">Get Started</a> -->
                    <button type="submit" class="btn btn-primary btn-round btn-lg btn-block"><?= lang('login') ?> &nbsp; <i class="fa fa-sign-in"></i></button>
                <!-- <div class="pull-left">
                <?php
                        if ($Settings->captcha) {
                            ?>
                            <div class="col-sm-12">
                                <div class="textbox-wrap form-group">
                                    <div class="row">
                                        <div class="col-sm-6 div-captcha-left">
                                            <span class="captcha-image"><?php echo $image; ?></span>
                                        </div>
                                        <div class="col-sm-6 div-captcha-right">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <a href="<?= admin_url('auth/reload_captcha'); ?>" class="reload-captcha">
                                                        <i class="fa fa-refresh"></i>
                                                    </a>
                                                </span>
                                                <?php echo form_input($captcha); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php
                        } /* echo $recaptcha_html; */
                        ?>
                      
                  <h6>
                    <a href="#pablo" class="link">Create Account</a>
                  </h6>
                </div>
                <div class="pull-right">
                  <h6>
                    <a href="#pablo" class="link">Need Help?</a>
                  </h6>
                </div> -->
                
                <?php echo form_close(); ?>
                <div class="clearfix"></div>


            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="footer">
      <div class=" container ">
       
        <div class="copyright" id="copyright">
          &copy;
          <script>
            document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
          </script>, Designed by
          <a href="hhttps://widodomakmurperkasa.co.id" target="_blank">WMP Dev</a>. Coded by
          <a href="https://widodomakmurperkasa.co.id" target="_blank">M.G</a>.
        </div>
      </div>
    </footer>
  </div>
  <!--   Core JS Files   -->
  <script src="<?= $assets ?>js/core/jquery.min.js" type="text/javascript"></script>
  <script src="<?= $assets ?>js/core/popper.min.js" type="text/javascript"></script>
  <script src="<?= $assets ?>js/core/bootstrap.min.js" type="text/javascript"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="<?= $assets ?>js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<?= $assets ?>js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
  <script src="<?= $assets ?>js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
  <script src="<?= $assets ?>js/now-ui-kit.js?v=1.3.0" type="text/javascript"></script>


  <script src="<?= $assets ?>js/jquery.js"></script>
    <script src="<?= $assets ?>js/bootstrap.min.js"></script>
    <script src="<?= $assets ?>js/jquery.cookie.js"></script>
    <script src="<?= $assets ?>js/login.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            localStorage.clear();
            var hash = window.location.hash;
            if (hash && hash != '') {
                $("#login").hide();
                $(hash).show();
            }
        });
    </script>
</body>
</html>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <!--link href="http://allfont.es/allfont.css?fonts=cricket" rel="stylesheet" type="text/css" /-->
    <base href="<?php echo site_url(); ?>/">
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>border 
    <![endif]-->
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?> class="">
<div class="container-fluid p-0 m-0 ">
    <?php
        $classaddhome = "";        
    ?>

    <div class="header <?=$classaddhome; ?> p-0 m-0 col-12 bg-transparent mw-100 ">
        
        
        <nav class="navbar col-12 p-0 m-0" style="z-index:10000;">
            
            <!-- subheader >
            <div class=" col-10 col-lg-12 p-0 m-0 container row "--> 

                <!--Area logo-->
                
                <div class="col-10 col-lg-5 p-0 m-0 pl-2 pt-2 row align-items-center text-center" >
                    <a class="navbar-brand m-0 p-2" href="<?php echo get_home_url(); ?>">
                        <?php
                            $custom_logo_id = get_theme_mod( 'custom_logo' );
                            $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                            echo '<img class="imglogo " 
                                src="'.esc_url( $custom_logo_url ).'" 
                                alt="Logo " >';
                        ?>
                    </a>
                </div>
                

                <!-- Spacer -->
                <div class="col-lg-2 d-none d-lg-block">
                    &nbsp;
                </div>

                <?php

                $url_fb = get_option( 'faceurl', 'http://www.facebook.com' );
                $url_in = get_option( 'instaurl', 'http://www.instagram.com' );
                $icono_fb = get_option( 'facelogo', '/img/icoface.png' );
                $icono_in = get_option( 'instalogo', '/img/icoinsta.png' );

                $text_ph = get_option( 'phonenumber', '(9999)999.99.99' );
                $icono_ph = get_option( 'phoneicono', '/img/contactophone.png' );
                ?>
                <!-- Area buscador-->
                <div class="d-none col-lg-5 p-0 m-0 pr-4 d-lg-flex flex-row ">
                    <!-- Spacer -->
                    <div class="col-2 ">
                        &nbsp;
                    </div>
                    <div class="buscador col-6 p-0">
                        <?php echo do_shortcode("[wpbsearch]");?>
                    </div>
                    <div class="col-4">
                        <div class="col-12">
                            <a href="https://www.instagram.com/vipconsentidogccs/" target="_blank">
                                <img src="<?php echo get_template_directory_uri().'/img/ico-instagram-gold.png'?>" />
                            </a>
                            <a href="https://wa.me/584241061261?text=Hola,%20les%20escribo%20desde%20www.consentidog.com" target="_blank">
                                <img src="<?php echo get_template_directory_uri().'/img/ico-whatsapp-brown.png'?>" />
                            </a>
                        </div>
                    </div>
                </div>

                <button class="navbar-toggler d-sm-block d-lg-none" type="button" 
                        data-toggle="collapse" 
                        data-target="#navbarTogglerDemo01" 
                        aria-controls="navbarTogglerDemo01" 
                        aria-expanded="false" 
                        aria-label="Toggle navigation"
                        style="z-index:10000 !important;">
                    <span class="navbar-toggler-icon "></span>
                </button>
            <!--/div-->
            <!--Area menu   area-menu   -->
            <!--div class="col-12 col-lg-12 d-lg-block p-0 m-0 
                            container row navbar-expand-lg navbar-light"-->
                            
                <?php
                wp_nav_menu( array(
                    'container'       => 'div',
                    'container_class' => 'collapse navbar-collapse area-menu col-12 col-lg-12 d-lg-block p-0 m-0 navbar-expand-lg navbar-light',
                    'container_id'    => 'navbarTogglerDemo01',
                    'items_wrap'      => '<ul id="%1$s" class="%2$s navbar-nav bg-light mt-0 mt-lg-0 w-100 justify-content-center">%3$s</ul>',
                    'theme_location'  => 'header-menu',
                    'menu_class'      => 'header-menu',
                    'walker'          => new WP_Bootstrap_Navwalker())
                );
                ?>
            <!--/div-->
        </nav>
            
        
        
        
    </div><!-- header -->


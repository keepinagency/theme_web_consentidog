<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <link href="http://allfont.es/allfont.css?fonts=cricket" rel="stylesheet" type="text/css" />
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>> 
<div class="container p-sm-0 m-sm-0">
    
    <div class="header">
        <!--Area logo-->
        <div class="area-logo col-sm-6 align-center">
            <a class="navbar-brand" href="<?php echo get_home_url(); ?>">
                <?php
                    $custom_logo_id = get_theme_mod( 'custom_logo' );
                    $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                    echo '<img class="imglogo " src="' . esc_url( $custom_logo_url ) . '" alt="Logo ">';
                ?>
            </a>
        </div>
        <div class="area-buscador col-sm-6 align-center"><?php echo do_shortcode("[wpbsearch]"); ?></div>
        <!--Area menu-->
        <div class="area-menu col-sm-12">
            <?php
                wp_nav_menu( array(
                    'theme_location'  => 'header-menu',
                    'menu_class'      => 'header-menu',
                    'walker'          => new WP_Bootstrap_Navwalker())
                );
            ?>
        </div>

    </div><!-- header -->

    <div class="row cont-central p-0 m-0">
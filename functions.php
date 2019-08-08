<?php
/* Libreria bootstrap para Nav - Menu */
/*require_once('class-wp-bootstrap-navwalker.php');*/
if ( ! file_exists( get_template_directory() . '/class-wp-bootstrap-navwalker.php' ) ) {
    return new WP_Error( 'class-wp-bootstrap-navwalker-missing', __( 'It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker' ) );
} else {
    require_once trailingslashit( get_template_directory() ) . '/class-wp-bootstrap-navwalker.php';
}


/*Definicion de rutas TEMP_PARTS*/
define( 'Consentidog_VERSION', '0.0.1' );
define( 'Consentidog_TEMP_PARTS', trailingslashit( get_template_directory() ) . 'temp_parts/' );

/*** Área para SetUp GENERAL de la página según ajustes de WordPress: Título, etc. ***/
function consentidog_wp_setup() {
    add_theme_support( 'title-tag' );
    add_theme_support( 'custom-logo', array(
        'height'      => 100,
        'width'       => 400,
        'flex-height' => false,
        'flex-width'  => false,
        'header-text' => array( 'site-title', 'site-description' ),
    ) );
}
function consentidog_thumbnails() {
    add_theme_support( 'post-thumbnails' );
    
    add_image_size( 'medium', 400, 400, TRUE ); // Miniaturas por definir/si es necesario
    add_image_size( 'page', 450, 1000, TRUE);    // Miniatura Obediencia Home
    add_image_size( 'full', 1200, 1024, TRUE ); // Miniaturas /si es necesario
  }

/*** Carga de Archivos CSS y Js para el site ***/
function consentidog_enqueue_styles() {
    /*** Archivos CSS Bootstrap ***/
    /*wp_register_style('bootstrap', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css' );*/
    wp_register_style('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' );
    $dependencies = array('bootstrap');
	wp_enqueue_style( 'consentidog-style', get_stylesheet_uri(), $dependencies ); 
}      
function consentidog_enqueue_scripts() {
    /*** Archivos JS BootStrap y sus dependencias ***/
    $dependencies = array('jquery');
    wp_enqueue_script('bootstrap', get_template_directory_uri().'/bootstrap/js/bootstrap.min.js', $dependencies, '', true );

}
/*** Registro de áreas para menús de WP ***/
function consentidog_register_menu() {
    register_nav_menu( 'header-menu', __('Header Menu'));
    register_nav_menu( 'footer-menu', __('Footer Menu'));

}
/**Buscador en Header**/
function busquedaform( $form ) {
    $form = '
    <form class="align-middle" role="search" method="get" id="searchform" action="' . home_url( '/' ) . '" >
        <div>
            <label class="screen-reader-text" for="s">' . __('') . '</label>
            <input type="text" placeholder="BÚSQUEDA" class="buscador_txt" value="' . get_search_query() . '" name="s" id="s" />
            <!--input type="submit" class="" id="searchsubmit" value="'. esc_attr__('Buscar') .'" /-->
        </div>
    </form>';
    return $form;
}
        /*******FUNCIONES CUSTOM PARA EL EXTRACTO *********
        **************************************************/
function custom_excerpt_length( $length){
    return 20;
}

        /*****FUNCIONES CUSTOM PARA EL PERSONZALIDOR*******
        **************************************************/
function custom_consentidog_register( $wp_customize ) {
    /**Agrego el Panel**/
    $wp_customize->add_panel( 'consentidog', array(
        'title' => 'Configuraciones',
        'description' => 'Opciones personales',
        'priority' => 1,
    ));
    /*******AGREGO SECCIÓN PARA SOCIALMEDIA FOOTER**********
    *******************************************************/
    $wp_customize->add_section( 'SocialMediaFoot', array(
        'title' => __( 'SocialMedia Footer', 'textdomain' ),
        'panel' => 'consentidog',
        'priority' => 4,
    ));
    /**Agrego el Setting FaceIcono**/
    $wp_customize->add_setting( 'facelogo', array (
        'default'        => get_template_directory_uri() .'/img/icoface.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'face', array(
        'label'      => __( 'Icono Facebook', 'textdomain' ),
        'section'    => 'SocialMediaFoot',
        'settings'   => 'facelogo',
        'priority'   => 1,
    )));
    /**Agrego el Setting FaceURL**/
    $wp_customize->add_setting( 'faceurl', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('faceurl', array(
        'label' => __( 'Perfil Facebook', 'textdomain' ),
        'section' => 'SocialMediaFoot',
        'priority' => 2,
        'type' => 'text',
    ));
    /**Agrego el Setting InstaIcono**/
    $wp_customize->add_setting( 'instalogo', array (
        'default'        => get_template_directory_uri() .'/img/icoinsta.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'insta', array(
        'label'      => __( 'Icono Instagram', 'textdomain' ),
        'section'    => 'SocialMediaFoot',
        'settings'   => 'instalogo',
        'priority'   => 2,
    )));
    /**Agrego el Setting InstaURL**/
    $wp_customize->add_setting( 'instaurl', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('instaurl', array(
        'label' => __( 'Perfil Instagram', 'textdomain' ),
        'section' => 'SocialMediaFoot',
        'priority' => 2,
        'type' => 'text',
    ));
    /***************AGREGO CONTACTO FOOTER******************
    *******************************************************/
    $wp_customize->add_section( 'ContactoFoot', array(
        'title' => __( 'Contacto Footer', 'textdomain' ),
        'panel' => 'consentidog',
        'priority' => 5,
    ));
    /**Agrego el Setting MailIcono**/
    $wp_customize->add_setting( 'contactologo', array (
        'default'        => get_template_directory_uri() .'/img/contactomail.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'contact', array(
        'label'      => __( 'Icono Mail', 'textdomain' ),
        'section'    => 'ContactoFoot',
        'settings'   => 'contactologo',
        'priority'   => 1,
    )));
    /**Agrego el Setting MailTexto**/
    $wp_customize->add_setting( 'mailtexto', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('mailtexto', array(
        'label' => __( 'Dirección Mail', 'textdomain' ),
        'section' => 'ContactoFoot',
        'priority' => 2,
        'type' => 'text',
    ));
    /**Agrego el Setting PhoneIcono**/
    $wp_customize->add_setting( 'phoneicono', array (
        'default'        => get_template_directory_uri() .'/img/contactophone.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'phone', array(
        'label'      => __( 'Icono Phone', 'textdomain' ),
        'section'    => 'ContactoFoot',
        'settings'   => 'phoneicono',
        'priority'   => 2,
    )));
    /**Agrego el Setting PhoneNumber**/
    $wp_customize->add_setting( 'phonenumber', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('phonenumber', array(
        'label' => __( 'Numero Contacto', 'textdomain' ),
        'section' => 'ContactoFoot',
        'priority' => 2,
        'type' => 'text',
    ));
    /*******AGREGO LA SECCIÓN TEXTO O CITA DEL HOME*********
    *******************************************************/
    $wp_customize->add_section( 'Texto-Home', array(
        'title' => __( 'Cita Textual Home', 'textdomain' ),
        'panel' => 'consentidog',
        'priority' => 2,
    ));
    /**Agrego el Setting Texto o Cita del Home**/
    $wp_customize->add_setting( 'textohome', array (
        'type' => 'option',
        'default' => 'Los ojos de un animal tienen el poder de hablar un gran lenguaje',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control( 'textohome', array(
        'label' => __( 'Coloque cita textual', 'textdomain' ),
        'section' => 'Texto-Home',
        'type' => 'text',
        'priority' => 1,
    ));
    /**Agrego el Setting Autor Cita del Home**/
    $wp_customize->add_setting( 'autorcita', array (
        'type' => 'option',
        'default' => 'MARTIN BUBER',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control( 'autorcita', array(
        'label' => __( 'Autor de la Cita', 'textdomain' ),
        'section' => 'Texto-Home',
        'type' => 'text',
        'priority' => 2,
    ));
}
    /************** METABOXES PARA EL TITULO ****************
    ********************************************************/
function meta_box_titulo() {
    add_meta_box('titulo','Indique el titulo a ser usado para esta página.','el_titulo','page','normal','high');
}
function el_titulo() {
    global $wpdb, $post;
    $value  = get_post_meta($post->ID, 'titulo', true);

    echo '<label><strong>Titulo:</strong></label>
    <input type="text" name="titulo" id="titulo" value="'.htmlspecialchars($value).'" style="width: 300px;" /></br>';
}
function guardar_titulo() {
    global $wpdb, $post;
    if (!$post_id) $post_id = $_POST['post_ID'];
    if (!$post_id) return $post;
    $price= $_POST['titulo'];
    update_post_meta($post_id, 'titulo', $price);
}

    /****** AÑADIR ACCIONES EN BASE A LAS FUNCIONES DEFINIDAS ******
    ***************************************************************/ 
add_action( 'wp_enqueue_scripts', 'consentidog_enqueue_styles' );   // Css
add_action( 'wp_enqueue_scripts', 'consentidog_enqueue_scripts' );  // Scripts Javas
add_action( 'after_setup_theme', 'consentidog_wp_setup' );          // Título y logo  
add_action( 'after_setup_theme', 'consentidog_register_menu' );     // Menús
add_action( 'excerpt_length' , 'custom_excerpt_length', 999 );      // EXTRACTO BLOG
add_action( 'customize_register', 'custom_consentidog_register' );  // Personalizador
add_action( 'after_setup_theme', 'consentidog_thumbnails' );        // thumbnails
add_action('add_meta_boxes', 'meta_box_titulo');                    //Metaboxes
add_action('save_post', 'guardar_titulo');                          //guardar titulo metabox
add_action('publish_post', 'guardar_titulo');                       //Publicar título metabox en post
add_shortcode('wpbsearch', 'busquedaform');                         // Buscador en Header
?>
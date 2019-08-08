<?php
	 $url_fb = get_option( 'faceurl', 'http://www.facebook.com' );
	 $url_in = get_option( 'instaurl', 'http://www.instagram.com' );
	 $icono_fb = get_option( 'facelogo', '/img/icoface.png' );
	 $icono_in = get_option( 'instalogo', '/img/icoinsta.png' );

	 $text_ct = get_option( 'mailtexto', 'loren@ipsum.com' );
	 $text_ph = get_option( 'phonenumber', '(9999)999.99.99' );
	 $icono_ct = get_option( 'contactologo', '/img/contactomail.png' );
	 $icono_ph = get_option( 'phoneicono', '/img/contactophone.png' );
?>

</div><!-- /.container -->
<footer class="footer">
	<div class="menufoot col-sm-8">
			<?php if (!empty($icono_ct) || !empty($icono_in)) {
				echo "Contactános:&nbsp;&nbsp"; }
			?>
		<div class="iconcontacto">
				<?php if (!empty($icono_ct)) { ?>
					<img src="<?php echo $icono_ct; ?>" alt="" id="">&nbsp;
					<?php echo $text_ct;?>
				<?php } ?>
					<br>
				<?php if (!empty($icono_ph)) { ?>
					<img src="<?php echo $icono_ph; ?>" alt="" id="">
					<?php echo $text_ph;?>
				<?php } ?>
		</div>
	</div>
	<div class="socialfoot col-sm-4">
		<?php if (!empty($icono_fb) || !empty($icono_in)) {
			echo "Síguenos en:&nbsp;&nbsp"; }
		?>
		<?php if (!empty($icono_fb)) { ?>
			<a href="<?php echo $url_fb; ?>" class="icon-fb" target="_blank">
			<img src="<?php echo $icono_fb; ?>" alt="" id="">&nbsp;&nbsp;&nbsp;&nbsp;
			</a>
		<?php } ?>

		<?php if (!empty($icono_in)) { ?>
			<a href="<?php echo $url_in; ?>" class="icon-fb" target="_blank">
			<img src="<?php echo $icono_in; ?>" alt="" id="">
		</a>
		<?php } ?>
	</div>
</footer>
<?php wp_footer(); ?>
</body>
</html>

<?php
headerTienda($data);
$arrArtesanos = $data['informacionArtesano'];
?>
<br><br><br>
<hr>
<!-- Product -->
<div class="bg0 m-t-23 p-b-140">

	<div class="container">
		<div class="flex-w flex-sb-m p-b-52">
			<?php
			for ($j = 0; $j < count($arrArtesanos); $j++) {
				$ruta = $arrArtesanos[$j]['ruta'];
			?>
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?= media() . '/images/uploads/' . $arrArtesanos[$j]['portada'] ?>" alt="<?= $arrArtesanos[$j]['nombres'] ?>" style=" height: 250px;">
							<a href="<?= base_url() . '/tienda/artesanos/' . $arrArtesanos[$j]['idpersona'] . '/' . $ruta; ?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
								Ver artesano
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="<?= base_url() . '/tienda/artesanos/' . $arrArtesanos[$j]['idpersona'] . '/' . $ruta; ?>" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									<?= $arrArtesanos[$j]['nombres'] ?>
								</a>
							</div>


						</div>
					</div>
				</div>
			<?php } ?>

		</div>
	</div>
</div>
<?php
footerTienda($data);
?>
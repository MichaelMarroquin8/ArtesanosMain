<?php
headerTienda($data);
$arrArtesanos = $data['artesanos'];
$arrProductos = $data['prodArtesanos'];
?>
<br><br><br>
<hr>
<!-- Product -->
<!--  -->
<div class="container">
	<div class="flex-w flex-sb-m p-b-52">
		<div class="flex-w flex-l-m filter-tope-group m-tb-10">
			<?php
			if (count($data['artesanos']) > 0) {
				foreach ($data['artesanos'] as $artesanos) {
			?>
					<section class="bg0 p-t-75 p-b-120">
						<div class="container">
							<div class="row p-b-148">
								<div class="col-md-7 col-lg-8">
									<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
										<h3 class="mtext-111 cl2 p-b-16">
											<?= $artesanos['nombres'] ?> <?= $artesanos['apellidos'] ?>
										</h3>

										<p class="stext-113 cl6 p-b-26">
											<!-- <?= $artesanos['nombres'] ?> -->
											Breve descripción de cada artesano individualmente, como carta de presentación al publico.
										</p>
									</div>
								</div>

								<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
									<div class="how-bor1 ">
										<div class="hov-img0">

											<img src="<?= media() . '/images/uploads/' . $artesanos['portada'] ?>">
										</div>
										<a href="https://api.whatsapp.com/send?phone=<?= "57" . $artesanos['telefono'] ?>" target="_blank" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="WhatsApp">
											Contactar por whatsapp al artesano <i class="fab fa-whatsapp" aria-hidden="true"></i>
										</a>
									</div>
								</div>
							</div>
						</div>

					</section>
			<?php
				}
			}
			?>
		</div>
	</div>
</div>
<!--  -->
<!-- Related Products -->
<section class="sec-relate-product bg0 p-t-45 p-b-105">
	<div class="container">
		<!-- Slide2 -->
		<div class="wrap-slick2">
			<div class="container">
				<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
					<h3>Productos de este artesano</h3>
				</div>
				<hr>
				<div class="row isotope-grid">
					<?php
					for ($p = 0; $p < count($arrProductos); $p++) {
						$rutaProducto = $arrProductos[$p]['ruta'];
						if (count($arrProductos[$p]['images']) > 0) {
							$portada = $arrProductos[$p]['images'][0]['url_image'];
						} else {
							$portada = media() . '/images/uploads/product.png';
						}
					?>
						<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="<?= $portada ?>" alt="<?= $arrProductos[$p]['nombre'] ?>" style=" height: 230px;">
									<a href="<?= base_url() . '/tienda/producto/' . $arrProductos[$p]['idproducto'] . '/' . $rutaProducto; ?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
										Ver producto
									</a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="<?= base_url() . '/tienda/producto/' . $arrProductos[$p]['idproducto'] . '/' . $rutaProducto; ?>" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											<?= $arrProductos[$p]['nombre'] ?>
										</a>

										<span class="stext-105 cl3">
											<?= SMONEY . formatMoney($arrProductos[$p]['precio']); ?>
										</span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#" id="<?= openssl_encrypt($arrProductos[$p]['idproducto'], METHODENCRIPT, KEY); ?>" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2 js-addcart-detail
								 icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11
								 ">
											<i class="zmdi zmdi-shopping-cart"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>
				</div>

			</div>
		</div>
</section>

<?php
footerTienda($data);
?>
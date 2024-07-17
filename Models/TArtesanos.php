<?php
require_once("Libraries/Core/Mysql.php");
trait TArtesanos
{
	private $con;

	public function getArtesanosT()
	{
		$this->con = new Mysql();
		$sql = "SELECT *
        FROM persona
        WHERE status != 0 AND rolid IN (4)
        ORDER BY idpersona DESC
        LIMIT 4";
		$request = $this->con->select_all($sql);

		return $request;
	}
	public function getArtesanos()
	{
		$this->con = new Mysql();
		$sql = "SELECT *
				 FROM persona WHERE status != 0 AND rolid IN (4)";
		$request = $this->con->select_all($sql);

		return $request;
	}

	public function getArtesano(int $idartesano, string $ruta)
	{
		$this->con = new Mysql();
		$this->intIdArtesano = $idartesano;
		$this->strRuta = $ruta;
		$sql = "SELECT *
        FROM persona
		WHERE idpersona = '{$this->intIdArtesano}' AND ruta = '{$this->strRuta}' ";
		$request = $this->con->select_all($sql);

		return $request;
	}

	// public function getProdArtesano(int $idartesano1)
	// {
	// 	$this->con = new Mysql();
	// 	$this->intIdArtesano1 = $idartesano1;
	// 	$sql = "SELECT *
    //         FROM producto
    //         WHERE status != 0 AND personaid = '{$this->intIdArtesano1}'";
	// 	$request = $this->con->select_all($sql);

	// 	return $request;
	// }

	public function getProdArtesano(int $idartesano1)
	{
		$this->con = new Mysql();
		$this->intIdArtesano1 = $idartesano1;
		$sql = "SELECT p.idproducto,
						p.codigo,
						p.nombre,
						p.descripcion,
						p.categoriaid,
						c.nombre as categoria,
						p.precio,
						p.ruta,
						p.stock
				FROM producto p 
				INNER JOIN categoria c
				ON p.categoriaid = c.idcategoria
				WHERE p.status != 0 AND personaid = '{$this->intIdArtesano1}' ORDER BY p.idproducto DESC LIMIT " . CANTPORDHOME;
		$request = $this->con->select_all($sql);
		if (count($request) > 0) {
			for ($c = 0; $c < count($request); $c++) {
				$intIdProducto = $request[$c]['idproducto'];
				$sqlImg = "SELECT img
								FROM imagen
								WHERE productoid = $intIdProducto";
				$arrImg = $this->con->select_all($sqlImg);
				if (count($arrImg) > 0) {
					for ($i = 0; $i < count($arrImg); $i++) {
						$arrImg[$i]['url_image'] = media() . '/images/uploads/' . $arrImg[$i]['img'];
					}
				}
				$request[$c]['images'] = $arrImg;
			}
		}
		return $request;
	}
}

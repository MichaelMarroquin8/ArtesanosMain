<?php

class ProductosModel extends Mysql
{
	private $intIdProducto;
	private $strNombre;
	private $strDescripcion;
	private $intCodigo;
	private $intCategoriaId;
	private $intPersonaid;
	private $intPrecio;
	private $intStock;
	private $intStatus;
	private $strRuta;
	private $strImagen;

	public function __construct()
	{
		parent::__construct();
	}

	public function selectProductos(int $personaid)
	{
		$rolUser = "SELECT * FROM `persona` WHERE idpersona in ($personaid)";
		$requestRol = $this->select_all($rolUser);
		if ($requestRol[0]["rolid"] != 1) {
			// Si el rol es 4, mostrar solo los productos de esa persona
			$sql = "SELECT p.idproducto,
							p.codigo,
							p.nombre,
							p.descripcion,
							p.categoriaid,
							c.nombre as categoria,
							p.precio,
							p.stock,
							p.status 
					FROM producto p 
					INNER JOIN categoria c
					ON p.categoriaid = c.idcategoria
					WHERE p.status != 0 and p.personaid IN($personaid)";
		} else {
			// Si el rol no es 4, mostrar todos los productos
			$sql = "SELECT p.idproducto,
							p.codigo,
							p.nombre,
							p.descripcion,
							p.categoriaid,
							c.nombre as categoria,
							p.precio,
							p.stock,
							p.status 
					FROM producto p 
					INNER JOIN categoria c
					ON p.categoriaid = c.idcategoria
					WHERE p.status != 0";
		}

		$request = $this->select_all($sql);
		return $request;
	}

	public function insertProducto(string $nombre, string $descripcion, int $codigo, int $categoriaid, string $precio, int $stock, string $ruta, int $status, int $personaid)
	{

		$this->strNombre = $nombre;
		$this->strDescripcion = $descripcion;
		$this->intCodigo = $codigo;
		$this->intCategoriaId = $categoriaid;
		$this->intPrecio = $precio;
		$this->intStock = $stock;
		$this->strRuta = $ruta;
		$this->intStatus = $status;
		$this->intPersonaid = $personaid; // Agregamos el personaid

		$return = 0;
		$sql = "SELECT * FROM producto WHERE codigo = '{$this->intCodigo}'";
		$request = $this->select_all($sql);

		if (empty($request)) {
			$query_insert  = "INSERT INTO producto(categoriaid,
														codigo,
														nombre,
														descripcion,
														precio,
														stock,
														ruta,
														status,
														personaid) 
								  VALUES(?,?,?,?,?,?,?,?,?)";
			$arrData = array(
				$this->intCategoriaId,
				$this->intCodigo,
				$this->strNombre,
				$this->strDescripcion,
				$this->intPrecio,
				$this->intStock,
				$this->strRuta,
				$this->intStatus,
				$this->intPersonaid
			); // Usamos el personaid añadido

			$request_insert = $this->insert($query_insert, $arrData);
			$return = $request_insert;
		} else {
			$return = "exist";
		}

		return $return;
	}

	public function updateProducto(int $idproducto, string $nombre, string $descripcion, int $codigo, int $categoriaid, string $precio, int $stock, string $ruta, int $status)
	{
		$this->intIdProducto = $idproducto;
		$this->strNombre = $nombre;
		$this->strDescripcion = $descripcion;
		$this->intCodigo = $codigo;
		$this->intCategoriaId = $categoriaid;
		$this->strPrecio = $precio;
		$this->intStock = $stock;
		$this->strRuta = $ruta;
		$this->intStatus = $status;
		$return = 0;
		$sql = "SELECT * FROM producto WHERE codigo = '{$this->intCodigo}' AND idproducto != $this->intIdProducto ";
		$request = $this->select_all($sql);
		if (empty($request)) {
			$sql = "UPDATE producto 
						SET categoriaid=?,
							codigo=?,
							nombre=?,
							descripcion=?,
							precio=?,
							stock=?,
							ruta=?,
							status=? 
						WHERE idproducto = $this->intIdProducto ";
			$arrData = array(
				$this->intCategoriaId,
				$this->intCodigo,
				$this->strNombre,
				$this->strDescripcion,
				$this->strPrecio,
				$this->intStock,
				$this->strRuta,
				$this->intStatus
			);

			$request = $this->update($sql, $arrData);
			$return = $request;
		} else {
			$return = "exist";
		}
		return $return;
	}

	public function selectProducto(int $idproducto)
	{
		$this->intIdProducto = $idproducto;
		$sql = "SELECT p.idproducto,
							p.codigo,
							p.nombre,
							p.descripcion,
							p.precio,
							p.stock,
							p.categoriaid,
							c.nombre as categoria,
							p.status
					FROM producto p
					INNER JOIN categoria c
					ON p.categoriaid = c.idcategoria
					WHERE idproducto = $this->intIdProducto";
		$request = $this->select($sql);
		return $request;
	}

	public function insertImage(int $idproducto, string $imagen)
	{
		$this->intIdProducto = $idproducto;
		$this->strImagen = $imagen;
		$query_insert  = "INSERT INTO imagen(productoid,img) VALUES(?,?)";
		$arrData = array(
			$this->intIdProducto,
			$this->strImagen
		);
		$request_insert = $this->insert($query_insert, $arrData);
		return $request_insert;
	}

	public function selectImages(int $idproducto)
	{
		$this->intIdProducto = $idproducto;
		$sql = "SELECT productoid,img
					FROM imagen
					WHERE productoid = $this->intIdProducto";
		$request = $this->select_all($sql);
		return $request;
	}

	public function deleteImage(int $idproducto, string $imagen)
	{
		$this->intIdProducto = $idproducto;
		$this->strImagen = $imagen;
		$query  = "DELETE FROM imagen 
						WHERE productoid = $this->intIdProducto 
						AND img = '{$this->strImagen}'";
		$request_delete = $this->delete($query);
		return $request_delete;
	}

	public function deleteProducto(int $idproducto)
	{
		$this->intIdProducto = $idproducto;
		$sql = "UPDATE producto SET status = ? WHERE idproducto = $this->intIdProducto ";
		$arrData = array(0);
		$request = $this->update($sql, $arrData);
		return $request;
	}
}

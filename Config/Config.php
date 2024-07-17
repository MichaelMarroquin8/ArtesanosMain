
<?php
const BASE_URL = "http://localhost/artesanos2";
//const BASE_URL = "https://artesanos.senacgts.org";

//Zona horaria
date_default_timezone_set('America/Bogota');

//Datos de conexión a Base de Datos
const DB_HOST = "localhost";
const DB_NAME = "db_tiendavirtual";
const DB_USER = "root";
const DB_PASSWORD = "";
const DB_CHARSET = "utf8";

//Para envío de correo
const ENVIRONMENT = 1; // Local: 0, Produccón: 1;

//Deliminadores decimal y millar Ej. 24,1989.00
const SPD = ".";
const SPM = ",";

//Simbolo de moneda
const SMONEY = "$";
const CURRENCY = "COP";

//Api PayPal
//SANDBOX PAYPAL
const URLPAYPAL = "";
const IDCLIENTE = "";
const SECRET = "";
//LIVE PAYPAL
//const URLPAYPAL = "https://api-m.paypal.com";
//const IDCLIENTE = "";
//const SECRET = "";

//Datos envio de correo
const NOMBRE_REMITENTE = "Tienda Virtual";
const EMAIL_REMITENTE = "SENA";
const NOMBRE_EMPESA = "Tienda Artesanos Virtual";
const WEB_EMPRESA = "";

const DESCRIPCION = "La mejor plataforma para las comunidades artesanas.";
const SHAREDHASH = "Artesanos";

//Datos Empresa
const DIRECCION = "52-396,, Cra 2 #52154, Cali, Valle del Cauca";
const TELEMPRESA = "";
const WHATSAPP = "";
const EMAIL_EMPRESA = "";
const EMAIL_PEDIDOS = "";
const EMAIL_SUSCRIPCION = "";
const EMAIL_CONTACTO = "";

const CAT_SLIDER = "1,2,3";
const CAT_BANNER = "4,5,6";
const CAT_FOOTER = "1,2,3,4,5";

//Datos para Encriptar / Desencriptar
const KEY = 'Artesanos SENA';
const METHODENCRIPT = "AES-128-ECB";

//Envío
const COSTOENVIO = 5;

//Módulos
const MDASHBOARD = 1;
const MUSUARIOS = 2;
const MCLIENTES = 3;
const MPRODUCTOS = 4;
const MPEDIDOS = 5;
const MCATEGORIAS = 6;
const MSUSCRIPTORES = 7;
const MDCONTACTOS = 8;
const MDPAGINAS = 9;

//Páginas
const PINICIO = 1;
const PTIENDA = 2;
const PCARRITO = 3;
const PNOSOTROS = 4;
const PCONTACTO = 5;
const PPREGUNTAS = 6;
const PTERMINOS = 7;
const PSUCURSALES = 8;
const PERROR = 9;

//Roles
const RADMINISTRADOR = 1;
const RARTESANO = 4;
const RCLIENTES = 3;

const STATUS = array('Completo', 'Aprobado', 'Cancelado', 'Reembolsado', 'Pendiente', 'Entregado');

//Productos por página
const CANTPORDHOME = 4;
const PROPORPAGINA = 4;
const PROCATEGORIA = 4;
const PROBUSCAR = 4;

//REDES SOCIALES
const FACEBOOK = "";
const INSTAGRAM = "";


?>
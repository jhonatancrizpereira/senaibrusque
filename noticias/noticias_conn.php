<?php
$servidor	=	"127.0.0.1";
$basedados	=	"sistemasenai";
$utilizador	=	"sistemasenai";
$chavepass	=	"ayMCpLrfacqJqJPV";

$conn = mysql_connect($servidor, $utilizador, $chavepass);
if (!$conn)
  {
  die('Erro; ' . mysql_error());
  }
?>  
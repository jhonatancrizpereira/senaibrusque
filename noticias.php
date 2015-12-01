<?php 
include('noticias/noticias_conn.php');
mysql_select_db($basedados, $conn);

$resultado = mysql_query("SELECT * FROM noticias ORDER BY id DESC");


while($linha = mysql_fetch_array($resultado)) {
echo    "<div class='col-sm-4' >";
echo 	"<h3>".$linha['titulo']."</h3>";
echo    "<h3>".$linha['desc']."</h3>";
echo 	"<br />";
/* Trigger the modal with a button */
echo    "<button type='button' class='btn btn-info btn-lg' data-toggle='modal' data-target='#myModal'>Saiba Mais...</button>";
/* Modal */
echo    "<div class='modal fade' id='myModal' role='dialog'>";
echo    "<div class='modal-dialog'>";
/* Modal content */
echo    "<div class='modal-content'>";
echo    "<div class='modal-header'>";
echo    "<button type='button' class='close' data-dismiss='modal'>&times;</button>";
echo    "<h4 id='cortextomodal' class='modal-title'>".$linha['titulo']."</h4>";
echo    "</div>";
echo    "<div  id='cortextomodal' class='modal-body'>";
echo    "<p>".$linha['corpo']."</p>";
echo    "</div>";
echo    "<div class='modal-footer'>";
echo    "<button type='button' class='btn btn-default' data-dismiss='modal'>Fechar</button>";
echo    "</div>";
echo    "</div>";      
echo    "</div>";
echo    "</div>";  
echo    "</div>";
} 
mysql_close($conn);
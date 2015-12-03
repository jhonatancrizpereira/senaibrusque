<?php
//Faz a requisição de dados paraconexão com o BD
if ($_SERVER['SERVER_ADDR'] == '127.0.0.1')
    require_once 'cadastro/dbconfig.php';
else
    require_once 'cadastro/dbconfigHostinger.php';

/*
 * Conexão com o banco de dados 
 */
try {//Criação do objeto $conn - conexão
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    //echo "Conectado ao banco $dbname em $host com sucesso.";
} catch (PDOException $pe) {
    die("Não foi possível se conectar ao banco $dbname :" . $pe->getMessage());
}

function converteDataMySQLPHP($dataMySQL) {
    $dataPHP = $dataMySQL;
    if ($dataMySQL) {
        $dataPHP = date('d/m/Y G:i:s', strtotime($dataMySQL));
    }
    return $dataPHP;
}

$id = $_GET['id'];

$sql = "SELECT n.titulo, n.conteudo,n.dtCadastro,a.nome from noticia n inner join autor a using(idautor) where idnoticia = '$id'";

while ($r = $q->fetch()) {
    $titulo = $r['titulo'];
    $dtCadastro = converteDataMySQLPHP($r['dtCadastro']);
    $autor = $r['autor'];
    $conteudo = $r['conteudo'];
}
?>    

<div class="modal-dialog">

    <!-- Conteúdo da modal-->
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title"><?= utf8_encode($titulo); ?></h4>
        </div>
        <div class="modal-body">
            <time class="h4"><?= $dtCadastro; ?></time>
            <p><?= utf8_encode($autor); ?></p>

            <?= utf8_encode($conteudo); ?>

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
        </div>
    </div>

</div>


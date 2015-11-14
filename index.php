<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Site Institucional do SENAI - Brusque</title>

        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/estilo.css"/>

        <!-- javascript -->
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/meu_script.js"></script>

    </head>
    <body>
        <div class="container-fluid">
            <header class="jumbotron text-center" id="topo">
                <h1>SENAI/SC Brusque</h1>
                <p>Ola mundo do bootstrap</p>
                <form role="form">
                    <div class="form-inline">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-envelope"></span>
                            </span>
                            <input type="email" class="form-control" id="email" placeholder="nome@dominio.com.br">
                        </div>
                    </div>                    
                    <button type="submit" class="btn btn-success">Cadastrar</button>
                </form>
            </header>
        </div>
    </body>
</html>

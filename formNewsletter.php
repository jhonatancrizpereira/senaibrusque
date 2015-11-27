<form action="newsletter/newsletter.php" method="post" class="form-inline" >
    <!-- Gerador de Bootstrap Form 
         http://embed.plnkr.co/ZrnnkFR3Yv9HGQHrRMiW/preview -->
    <!-- Em caso de sucesso na validação: <div class="form-group has-feedback has-success"> -->
    <!-- Em caso de falha na validação: <div class="form-group has-feedback has-error"> -->
    <div class="form-group has-feedback">
        <input type="email" name="email" required class="form-control" placeholder="seunome@provedor.com.br" size="40px"/>
        <i class="form-control-feedback glyphicon glyphicon-envelope"></i>
        <div class="help-block with-errors"></div>
    </div>
    <input type="submit" name="btn" class="btn btn-success"/>
    <div id="msgSubmit" class="h3 text-center hidden"></div>
</form>
/* 
 * Responsável pela busca AJAX de apenas uma notícia.
 */
var id = 0;
$('document').ready(function(){
    $('#noticias button').click(function(){
        //Botão clicado
        if($.isNumeric($(this).attr('id'))){
            id = $(this).attr('id');
            console.log(id);
            //Reconstrução do identificador da noticia
            noticiaID = '#noticia'+id;
            console.log(noticiaID);
            //AJAX método GET
            $.ajax({
                    url:'noticiaBD.php',
                    type: 'GET',
                    data:'id='+id,
                    beforeSend:function(){
                        $(noticiaID).html('<img src=img/aguarde-por-favor.gif>');
                    },
                    success: function(retorno) {
                        $(noticiaID).html(retorno);
                    }
                });
            
        }
    });
});


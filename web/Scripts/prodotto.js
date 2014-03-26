$(function(){
    
    var prodottoId = $("#prodottoId").val();
        
    $.getJSON(
            "prodotti?prodottoId=" + prodottoId,
            function(ViewModel){
                $("#descrizione").val(ViewModel.Descrizione);
                $("#prezzo").val(ViewModel.Prezzo);                
            }
    );
    
    $("#btnAggiungi").on('click', function(){
        
        var ordineProdotto = {
            "ordineId": 1,
            "userId": 1,
            "prodottoId": $("#prodottoId").val(),
            "quantita": $("#quantita").val()
        };
        
        $.post(
            "basket",
            JSON.stringify(ordineProdotto),
            function (result){
                window.location.href="Basket.html";
            }
        );
    });
});
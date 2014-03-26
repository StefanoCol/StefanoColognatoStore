$(function(){
    $.getJSON(
            'basket'
            , function(result){ //manca l'identificatore perche questa funzione ha senso solo qui. Funzione anonima.
                //La chiama quando ha scaricato l'array di oggetti json.
                var tabella_basket = $("#tblBasket > tbody");
                var somma = 0.0;
                $(result).each(function(i, item){
                    var tr_html =
                            "<tr basketId='"+ item.BasketId +"'>"
                            + "<td>" + item.Descrizione + "</td>"
                            + "<td>" + item.Prezzo + "</td>"
                            + "<td>" + item.Quantita + "</td>"
                            + "<td>" + item.Quantita * item.Prezzo + "</td>"
                            + "<td><a href='#' class='cancella btn btn-danger'>cancella</a></td>"
                            + "</tr>";
                    tabella_basket.append(tr_html);
                    somma += item.Quantita*item.Prezzo;
                });
                $("#txtSomma").val(somma);
                
                $(".cancella").on('click', function(e){
                   var basketId = $(e.target).parent().parent().attr("basketId");
                   if( confirm("sei sicuro?") === false) return;
                   else{
                       $.ajax({
                            url: "basket?BasketId=" + basketId, 
                            type:"DELETE",
                            data: null,
                            success: function (result){
                                window.location.href="Basket.html";
                            }
                        });
                   }

               });

            }
                    
    );
    

});
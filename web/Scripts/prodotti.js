$(function(){
   
    $.getJSON(
            'prodotti'
            , function(result){ //manca l'identificatore perche questa funzione ha senso solo qui. Funzione anonima.
                //La chiama quando ha scaricato l'array di oggetti json.
                var tabella_prodotti = $("#tblProdotti > tbody");
                $(result).each(function(i, item){
                    var tr_html =
                            "<tr prodottoId='"+ item.ProdottoId +"'>"
                            + "<td>" + item.Descrizione + "</td>"
                            + "<td>" + "<a class='btn btn-default' href='Prodotto.jsp?prodottoId="+ item.ProdottoId +"'>Scheda</a>" + "</td>"
                            + "</tr>";
                    tabella_prodotti.append(tr_html);
                });
                

            }
                    
    );
    

});


<%-- 
    Document   : Prodotto
    Created on : 26-mar-2014, 15.03.09
    Author     : Stefano Colognato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="css/personale.css" />
        <title>Prodotto</title>
    </head>
    <body>
        <div class='container'>
            <div class='row'>
                <div class='col-xs-3'></div>
                <div class='col-xs-6'>
                    <div class='title'>
                        <h1>Scheda prodotto</h1>
                    </div>
                    
                    <form>
                        <input type="hidden" id="prodottoId" value='<%= request.getParameter("prodottoId") %>'/>
                        <fieldset>
                            <div class='container'>
                                <div class='row'>
                                    <div class='col-xs-4'>
                                        <label for="descrizione">Descrizione</label>
                                    </div>
                                    <div class='col-xs-6'>
                                        <input type="text" id="descrizione" readonly />
                                    </div>                                    
                                </div>
                                <div class='row'>
                                    <div class='col-xs-4'>
                                        <label for="prezzo">Prezzo</label>
                                    </div>
                                    <div class='col-xs-6'>
                                        <input type="text" id="prezzo" readonly /> 
                                    </div>                                    
                                </div>
                                <div class='row'>
                                    <div class='col-xs-4'>
                                        <label for="quantita">Quantità</label>
                                    </div>
                                    <div class='col-xs-6'>
                                        <input type="text" id="quantita"/>
                                    </div>                                    
                                </div>  
                                <div class='row'>
                                    <div class='col-xs-4'>
                                        <a class='btn btn-default' href='#' id='btnAggiungi'>Aggiungi al Basket</a>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                    
                </div>
                <div class='col-xs-3'></div>
            </div>
        </div>
        <script src='Scripts/jquery-1.11.0.js'></script>
        <script src='Scripts/prodotto.js'></script>
    </body>
</html>

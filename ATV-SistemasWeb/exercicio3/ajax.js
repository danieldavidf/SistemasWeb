function loadDoc(){
	var xmlhttp, busca, texto, qtde, ling, nomeImagem;

    busca = document.getElementById("entrada").value;
    ling = document.getElementById("ling").value;
    qtde = document.getElementById("qtde").value;
    
    var quemTemImagens = [];

    if (busca == "") {
        alert("Por favor, preencha o campo de busca.");
    }
    else {
        document.getElementById('btnEnviar').disabled=true;
        if (ling == "Inglês") { ling = "en" }
        if (ling == "Português") { ling = "pt" }

        texto = "https://"+ling+".wikipedia.org/w/api.php?action=opensearch&origin=*&limit="+qtde+"&search="+busca+"&format=xml";

        var parser, xmlDoc;

        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
            console.log("Navegador é de uma versão recente.");
        } else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            console.log("Navegador é de uma versão antiga.");
        }
        
        var txt, x, y, z;

        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.status==404) {
                document.getElementById("situacao").innerHTML = "Página não encontrada";
            }
            if (xmlhttp.readyState==1) {
                document.getElementById("situacao").innerHTML = "Estabelendo conexão com o servidor...";
            }
            if (xmlhttp.readyState==2) {
                document.getElementById("situacao").innerHTML = "Requisição recebida";
            }
            if (xmlhttp.readyState==3) {
                document.getElementById("situacao").innerHTML = "Processando requisição...";
            }
            if (xmlhttp.readyState==4) {
                document.getElementById("situacao").innerHTML = "Requisição finalizada e resposta pronta.";
                document.getElementById('btnEnviar').disabled=false;
            }
            if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                xmlDoc = xmlhttp.responseXML;

                txt = "";

                w = xmlDoc.getElementsByTagName("Text");
                x = xmlDoc.getElementsByTagName("Description");
                y = xmlDoc.querySelectorAll("Item");
                yy = xmlDoc.getElementsByTagName("Image");
                z = xmlDoc.getElementsByTagName("Url");

                
                console.log(y);
                var index = 0,cont = 0;
                //console.log(y[0].childNodes.length);
                //console.log(y[4].childNodes.length);

                for (i = 0; i < qtde; i++) {
                    if (y[i].childNodes.length == 4) {
                        quemTemImagens[cont] = i;
                        cont++; console.log(i);
                    }
                }
                console.log(quemTemImagens);
                console.log(cont);

                for (i = 0; i < qtde; i++) {
                    if (i>0) { txt += "<br><br>"}
                    txt += "<u>Resultado "+(i+1)+"</u><br><b>Título: </b>";
                    txt += w[i].childNodes[0].nodeValue;
                    txt += "<br><b>Descrição: </b>";
                    txt += x[i].childNodes[0].nodeValue;

                    if (cont>0 && i==quemTemImagens[index]) {
                        txt += "<br><b>Imagem: </b>";
                        txt += "<img src='";
                        //txt += y[i].getAttribute("source");
                        txt += yy[index].getAttribute("source");
                        console.log(yy[index].getAttribute("source"));
                        txt += "'>";
                        cont--; index++;
                    } else {
                        txt += "<br><b>Imagem: </b>";
                        txt += "Não possui";
                    }
                    
                    txt += "<br><b>Link: </b><a href='";
                    txt += z[i].childNodes[0].nodeValue;
                    txt += "'>"+z[i].childNodes[0].nodeValue+"</a>";
                }
                document.getElementById("resultadoBusca").innerHTML = txt;
            }
        }
        xmlhttp.open("GET", texto, true);
        xmlhttp.send();
    }
}
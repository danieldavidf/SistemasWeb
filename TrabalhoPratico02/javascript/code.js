function gerarGrafico(){

    // variáveis:
    var p, e, ano, textano;
    var contcampos;
    var link = "https://www.youtube.com/results?search_query=";

    // recebe valores de entrada do formulário
    p = document.getElementById("pais").value;
    ano = document.getElementById("ano").value;
    e = document.getElementById("estado").value;
    contcampos = 0;

    if (p>0) contcampos++;
    if (ano!="") contcampos++;
    if (e>0) contcampos++;

    // verificação do parâmetro do ano de entrada
    if (ano!="" && (ano < 2013 || ano > 2017)){
        alert("Por favor, digite um ano de 2013 até 2017");
    //} else if (contcampos == 1){
    //    alert("Favor preencher 0 ou 2 campos");
    } else {

        // formulário válido, início da requisição Ajax
        var pais;
        var estado;
        // pais
        if (p > 0) {
            if (p==1) {pais = "África do Sul";}
            else if (p==2) {pais = "Alemanha";}
            else if (p==3) {pais = "Angola";}
            else if (p==4) {pais = "Argentina";}
            else if (p==5) {pais = "Arábia Saudita";}
            else if (p==6) {pais = "Austrália";}
            else if (p==7) {pais = "Áustria";}
            else if (p==8) {pais = "Bangladesh";}
            else if (p==9) {pais = "Bolívia";}
            else if (p==10) {pais = "Bulgária";}
            else if (p==11) {pais = "Bélgica";}
            else if (p==12) {pais = "Cabo Verde";}
            else if (p==13) {pais = "Canadá";}
            else if (p==14) {pais = "Chile";}
            else if (p==15) {pais = "China";}
            else if (p==16) {pais = "China, Hong Kong";}
            else if (p==17) {pais = "Cingapura";}
            else if (p==18) {pais = "Colômbia";}
            else if (p==19) {pais = "Costa Rica";}
            else if (p==20) {pais = "Croácia";}
            else if (p==21) {pais = "Cuba";}
            else if (p==22) {pais = "Dinamarca";}
            else if (p==23) {pais = "Egito";}
            else if (p==24) {pais = "El Salvador";}
            else if (p==25) {pais = "Equador";}
            else if (p==26) {pais = "Eslováquia";}
            else if (p==27) {pais = "Eslovênia";}
            else if (p==28) {pais = "Espanha";}
            else if (p==29) {pais = "Estados Unidos";}
            else if (p==30) {pais = "Estônia";}
            else if (p==31) {pais = "Filipinas";}
            else if (p==32) {pais = "Finlândia";}
            else if (p==33) {pais = "França";}
            else if (p==34) {pais = "Gana";}
            else if (p==35) {pais = "Grécia";}
            else if (p==36) {pais = "Guatemala";}
            else if (p==37) {pais = "Guiana";}
            else if (p==38) {pais = "Guiana Francesa";}
            else if (p==39) {pais = "Haiti";}
            else if (p==40) {pais = "Holanda";}
            else if (p==41) {pais = "Honduras";}
            else if (p==42) {pais = "Hungria";}
            else if (p==43) {pais = "Índia";}
            else if (p==44) {pais = "Indonésia";}
            else if (p==45) {pais = "Irlanda";}
            else if (p==46) {pais = "Irã";}
            else if (p==47) {pais = "Israel";}
            else if (p==48) {pais = "Itália";}
            else if (p==49) {pais = "Japão";}
            else if (p==50) {pais = "Letônia";}
            else if (p==51) {pais = "Lituânia";}
            else if (p==52) {pais = "Luxemburgo";}
            else if (p==53) {pais = "Líbano";}
            else if (p==54) {pais = "Malásia";}
            else if (p==55) {pais = "Marrocos";}
            else if (p==56) {pais = "Moçambique";}
            else if (p==57) {pais = "México";}
            else if (p==58) {pais = "Nicarágua";}
            else if (p==59) {pais = "Nigéria";}
            else if (p==60) {pais = "Noruega";}
            else if (p==61) {pais = "Nova Zelândia";}
            else if (p==62) {pais = "Outros países";}
            else if (p==63) {pais = "Panamá";}
            else if (p==64) {pais = "Paquistão";}
            else if (p==65) {pais = "Paraguai";}
            else if (p==66) {pais = "Países não especificados";}
            else if (p==67) {pais = "Peru";}
            else if (p==68) {pais = "Polônia";}
            else if (p==69) {pais = "Portugal";}
            else if (p==70) {pais = "Quênia";}
            else if (p==71) {pais = "Reino Unido";}
            else if (p==72) {pais = "República Dominicana";}
            else if (p==73) {pais = "República Tcheca";}
            else if (p==74) {pais = "República da Coreia";}
            else if (p==75) {pais = "Romênia";}
            else if (p==76) {pais = "Rússia";}
            else if (p==77) {pais = "Suriname";}
            else if (p==78) {pais = "Suécia";}
            else if (p==79) {pais = "Suíça";}
            else if (p==80) {pais = "Sérvia";}
            else if (p==81) {pais = "Síria";}
            else if (p==82) {pais = "Tailândia";}
            else if (p==83) {pais = "Taiwan";}
            else if (p==84) {pais = "Trinidad e Tobago";}
            else if (p==85) {pais = "Tunísia";}
            else if (p==86) {pais = "Turquia";}
            else if (p==87) {pais = "Ucrânia";}
            else if (p==88) {pais = "Uruguai";}
            else if (p==89) {pais = "Venezuela";}
            console.log(pais);
        }

        // estado
        if (e > 0) {
            if (e==1) {estado = "Acre";}
            else if (e==2) {estado = "Amapá";}
            else if (e==3) {estado = "Amazonas";}
            else if (e==4) {estado = "Bahia";}
            else if (e==5) {estado = "Ceará";}
            else if (e==6) {estado = "Distrito Federal";}
            else if (e==7) {estado = "Mato Grosso do Sul";}
            else if (e==8) {estado = "Minas Gerais";}
            else if (e==9) {estado = "Pará";}
            else if (e==10) {estado = "Paraná";}
            else if (e==11) {estado = "Pernambuco";}
            else if (e==12) {estado = "Rio de Janeiro";}
            else if (e==13) {estado = "Rio Grande do Norte";}
            else if (e==14) {estado = "Rio Grande do Sul";}
            else if (e==15) {estado = "Roraima";}
            else if (e==16) {estado = "Santa Catarina";}
            else if (e==17) {estado = "São Paulo";}
            else if (e==18) {estado = "Outras Unidades da Federação";}
            console.log(estado);
        }

        // document.getElementById("grafico").innerHTML = "\
        //     <section>\
        //         <iframe src='assets/turistas_conv.xml' id='iframeguia' name='iframeguia'></iframe>\
        //     </section>";
        
        if (p==0 && e==0 && ano==""){
            console.log("Entrou no VAZIO");
            displayResult();
            $("#facebookApi").empty();
            $("#video-container").hide();

            new Chart(document.getElementById("pie-chart"), {
                type: 'pie',
                data: {
                    labels: ["2013", "2014", "2015", "2016", "2017"],
                    datasets: [{
                        label: "Turistas",
                        backgroundColor: ["#0000ff", "#ff0000","#00ff00","cyan","yellow"],
                        data: [5813342,6429852,6305838,6546696,6588770]
                    }]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Total de turistas em todo o Brasil'
                    }
                }
            });
        }
        else if (p>0 && e>0 && ano!=""){
            $("#facebookApi").empty();
            $("#video-container").h
            $("#pie-chart").hide();ide();
            $("#pie-chart").hide();
            console.log("Entrou no PEA");
            displayResultPEA(pais,estado,ano);
            facebookApi(pais);
            requestVideo(estado,link);
        }
        else if (p>0 && e>0){
             $("#facebookApi").empty();
            $("#video-container").hide()
            $("#pie-chart").hide();;
            console.log("Entrou no PE");
            displayResultPE(pais,estado);
            facebookApi(pais);
            requestVideo(estado,link);
        }
        else if (p>0 && ano!=""){
             $("#facebookApi").empty();
            $("#video-container").hide()
            $("#pie-chart").hide();;
            console.log("Entrou no PA");
            textano = "ano"+ano;
            console.log(ano);
            displayResultPA(pais,ano);
            facebookApi(pais);
            requestVideo(pais,link);
        }
        else if (e>0 && ano!=""){
             $("#facebookApi").empty();
            $("#video-container").hide()
            $("#pie-chart").hide();;
            console.log("Entrou no EA");
            displayResultEA(estado,ano);
            facebookApi(estado); 
            requestVideo(estado,link);  
        }
        else if (ano!=""){
             $("#facebookApi").empty();
            $("#video-container").hide();
            $("#pie-chart").hide();
            console.log("Entrou no Ano");
            displayResultA(ano);
        }
        else if (p>0){
             $("#facebookApi").empty();
            $("#video-container").hide();
            $("#pie-chart").hide();
            console.log("Entrou no País");
            displayResultP(pais);
            facebookApi(pais);
        }
        else if (e>0){
             $("#facebookApi").empty();
            $("#video-container").hide();
            $("#pie-chart").hide();
            console.log("Entrou no Estado");
            displayResultE(estado);
            facebookApi(estado);
        }
    }
    //displayResult(pais,estado,ano);
}

// função que seleciona aleatoriamente um elemento do vetores de sugestões
function aleatorio(min, max) {
    var x = Math.floor((Math.random() * max) + min);
    return x;
}

// método para buscar video pela API YouTube
function requestVideo(q, link) {
    console.log(q+" pontos turisticos");
    var options = {
        part: 'snippet, id',
        q: q+" pontos turisticos",
        //playlistId: playlistId,
        maxResults: 1,
        type: 'video',
        key: "AIzaSyA9wOhieB8Tk7giEZRnHrGTSnAXlL6NiUE"
    };

    $.get("https://www.googleapis.com/youtube/v3/search",options,
    function (data) {
        var playlistItems = data.items;
            if (playlistItems) {
                $.each(playlistItems, function(index, item) {
                mostrarResultadoVideo(item);
            });
        } else {
            $('#video-container').html('Desculpe-me, não temos videos para sua pesquisa. Tente novamente.');
        } 
    });

    // Buscar e guardar video.
    function mostrarResultadoVideo(videoSnippet) {

        var title = videoSnippet.snippet.title;
        var videoId = videoSnippet.id.videoId;
        var url = "";
        if (typeof videoSnippet.snippet.thumbnails !== 'undefined') {
            url = videoSnippet.snippet.thumbnails.medium.url;
        }
        
        $('#video-container').attr({width:"315" ,height:"315", src:"https://www.youtube.com/embed/"+videoId, frameborder:"0", allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; allowfullscreen"});
        $('#video-container').show();
    }
    displayNovosTrailers(link);
}

// exibir div com link para página de resposta de busca no YouTube
function displayNovosTrailers(link){
    var conteudo;
    conteudo = "<br><a href='"+link+"' target='_blank'>Ver outros trailers</a>";
    document.getElementById("novostrailers").innerHTML = conteudo;
}

// limpar todos os campos do formulario
function limparCampos(){
    document.getElementById('pais').value=0;
    document.getElementById('ano').value='';
    document.getElementById('estado').value=0
}

function SomenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>47 && tecla<58)) return true;
    else{
        if (tecla==8 || tecla==0) return true;
        else return false;
    }
}
function loadXMLDoc(filename) {
    if (window.ActiveXObject)
        xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    else
        xhttp = new XMLHttpRequest();
    
    xhttp.open("GET", filename, false);
    try {xhttp.responseType = "msxml-document"}
    catch(err) {} // Helping IE11
    xhttp.send("");

    return xhttp.responseXML;
}

function displayResult() {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismo.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultPEA(pais,estado,ano) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoPEA.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "pais", pais);
        xsltProcessor.setParameter(null, "estado", estado);
        xsltProcessor.setParameter(null, "ano", ano);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultPA(pais,ano,textano) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoPA.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "pais", pais);
        xsltProcessor.setParameter(null, "ano", ano);

        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultPE(pais,estado) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoPE.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "pais", pais);
        xsltProcessor.setParameter(null, "estado", estado);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultEA(estado,ano) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoEA.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "estado", estado);
        xsltProcessor.setParameter(null, "ano", ano);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultA(ano) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoA.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "ano", ano);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultP(pais) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoP.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "pais", pais);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function displayResultE(estado) {
    xml = loadXMLDoc("assets/turistas_conv.xml");
    xsl = loadXMLDoc("assets/turismoE.xsl");

    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        ex = xml.transformNode(xsl);
        document.getElementById("grafico").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        xsltProcessor.setParameter(null, "estado", estado);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        $("#grafico").empty();
        document.getElementById("grafico").appendChild(resultDocument);
    }
}

function facebookApi(textoBusca) {
    var token="342008343285075|I_qQvvG4un6CCEszGN7gkuGixi8";
    $.ajax({
        type: "GET",
        dataType: "json",
        url: "https://graph.facebook.com/search?type=place&q="+textoBusca+"&fields=name,link,description,picture&access_token="+token,
        success:function(data){
            var dados=data.data;
            console.log(dados);
            $("#facebookApi").empty();
            //$("#facebookApi").append("<img src='"+dados[0].picture.data.url+"' id='banner'><br>");
            $("#facebookApi").append("<h2 id='corpo1'>"+dados[0].name+"</h2>");

            if (dados[0].description == undefined) {
                $("#facebookApi").append("<p id='corpo1'>Resultado sem descrição. Você pode consultar pelo link abaixo</p>");                
            } else {
                $("#facebookApi").append("<p id='corpo1'>"+dados[0].description+"</p>");
            }
            $("#facebookApi").append("<a id='corpo1' href='"+dados[0].link+"'>Link da pagina no Facebook</a><br>");
            
            console.log(dados[0]);
        },
        error:function(data){
            console.log(data);
        }
    });
}
function carregarPagina(){

    // variáveis:
    var categoria, ano, atores, infos;
    var quemTemImagens = [];
    var sugestoes = [],sugestoesAtores = [],sugestoesCatergorias = [],sugestoesAno = [],sugestoesTitulo = [],sugestoesSinopsi = [];
    var listatores = [];
    var link = "https://www.youtube.com/results?search_query=";
    var image_path = "https://raw.githubusercontent.com/leandrojsa/leandrojsa.github.io/master/";

    // recebe valores de entrada do formulário
    categoria = document.getElementById("categoria").value;
    ano       = document.getElementById("ano").value;
    atores    = document.getElementById("atores").value.split(",");
    infos     = document.getElementById("infos").value;

    // verificação do parâmetro do ano de entrada
    if (ano!="" && (ano > 2012 || ano < 1909)){
        alert("Por favor, digite um ano de 1909 até 2012");
    } else {
        // formulário válido, início da requisição Ajax
        document.getElementById('btnEnviar').disabled=true;
        document.getElementById("situacao").innerHTML = "Enviando requisição...";
        var http = false;
        http = new XMLHttpRequest();

        var url ="https://leandrojsa.github.io/movies.html";
        http.open("GET",url,true);
        http.onreadystatechange=function() {

            // tratamento e exibição da situação da requisição
            if (http.status==404) {
                document.getElementById("situacao").innerHTML = "Página não encontrada";
            }
            if (http.readyState==1) {
                document.getElementById("situacao").innerHTML = "Estabelendo conexão com o servidor...";
            }
            if (http.readyState==2) {
                document.getElementById("situacao").innerHTML = "Requisição recebida";
            }
            if (http.readyState==3) {
                document.getElementById("situacao").innerHTML = "Processando requisição...";
            }
            if(http.readyState==4){
                document.getElementById("situacao").innerHTML = "Requisição finalizada e resposta pronta.";
                document.getElementById('btnEnviar').disabled = false;

                // variáveis auxiliares
                var html = http.responseText;
                var html = new DOMParser().parseFromString(html, "text/html");
                var conteudo = "";

                // leitura e armazenamento do conteúdo da página
                var filmes = html.querySelectorAll("div");
                var todos_anos = html.querySelectorAll("div > p > span > span");
                var todos_titulos = html.querySelectorAll("div > h2");
                var todas_imagens = html.querySelectorAll("div > img");
                var todas_sinopses = html.querySelectorAll(".sinopsis");
                var todas_categorias = html.querySelectorAll(".categories");
                var todos_atores = html.querySelectorAll(".actors");
                
                // busca de sugestão por ano
                if(ano != "") {
                    if ((ano > 1919 && ano != 1927) || ano == 1909) {
                        for (var i = 0; i < filmes.length; ++i) {
                            if (ano.indexOf(todos_anos[i].childNodes[0].textContent) > -1) {
                                sugestoesAno.push(i);
                            }
                        }
                    }
                }
                
                // busca de sugestão por categoria
                if (categoria > 0) {
                    var cat;
                    if (categoria==0) {cat = "";}
                    else if (categoria==1) {cat = "Ação";}
                    else if (categoria==2) {cat = "Animação";}
                    else if (categoria==3) {cat = "Aventura";}
                    else if (categoria==4) {cat = "Comédia";}
                    else if (categoria==5) {cat = "Clássico";}
                    else if (categoria==6) {cat = "Documentário";}
                    else if (categoria==7) {cat = "Drama";}
                    else if (categoria==8) {cat = "Épico";}
                    else if (categoria==9) {cat = "Faroeste";}
                    else if (categoria==10) {cat = "Ficção";}
                    else if (categoria==11) {cat = "Guerra";}
                    else if (categoria==12) {cat = "Infantil";}
                    else if (categoria==13) {cat = "Musical";}
                    else if (categoria==14) {cat = "Policial";}
                    else if (categoria==15) {cat = "Romance";}
                    else if (categoria==16) {cat = "Suspense";}
                    else if (categoria==17) {cat = "Terror";}
                    console.log(cat);
                    for (var i = 0; i < filmes.length; ++i) {
                        for (var j = 0; j < todas_categorias[i].children.length; ++j) {
                            if (cat == todas_categorias[i].children[j].textContent) {
                                sugestoesCatergorias.push(i);
                            }
                        }
                    }
                }

                // busca de sugestão por título
                if (infos != "") {
                    for (var i = 0; i < filmes.length; ++i) {
                        if (todos_titulos[i].childNodes[0].textContent.toLowerCase().indexOf(infos.toLowerCase()) > -1) { 
                            sugestoesTitulo.push(i);
                        } else if (todas_sinopses[i].childNodes[0].textContent.toLowerCase().indexOf(infos.toLowerCase()) > -1) { 
                            sugestoesTitulo.push(i);
                            
                        }
                    }
                }

                // busca de sugestão por atores
                if (atores[0] != "") {
                    console.log(atores);
                    for (var i = 0; i < filmes.length; ++i) {
                        var certificação=[],cont=0;
                        $(atores).each(function (a,ator){
                            certificação[a]=false;
                        for (var j = 0; j < todos_atores[i].children.length; ++j) {
                            
                            if (todos_atores[i].children[j].textContent.toLowerCase().indexOf(ator.toLowerCase().trim()) > -1) { 
                                certificação[a]=true;
                            }
                        
                        }});if(certificação.length===atores.length && !certificação.includes(false)){
                            sugestoesAtores.push(i);
                        }
                    }
                }
                
                if(sugestoesAno.length===0){
                    if(sugestoesCatergorias.length===0){
                        if(sugestoesAtores.length===0){
                            if(sugestoesTitulo.length===0){
                                // continue
                            }else{
                                var tem;
                            $(sugestoesTitulo).each(function(a,san){
                                sugestoes.push(san);
                            });
                            }

                        }else{
                            var tem;
                            $(sugestoesAtores).each(function(a,san){
                            tem=[false];
                            if(sugestoesTitulo.length!=0){
                                if(sugestoesTitulo.includes(san))tem[0]=true;
                            }else if(infos == "")tem[0]=true;
                            if(!tem.includes(false)){
                                sugestoes.push(san);
                                
                            }
                        });
                    }

                    }else{
                        var tem;
                        $(sugestoesCatergorias).each(function(a,san){
                            tem=[false,false];
                            if(sugestoesAtores.length!=0){
                                if(sugestoesAtores.includes(san))tem[0]=true;
                            }else if(atores[0] == "")tem[0]=true;
                            if(sugestoesTitulo.length!=0){
                                if(sugestoesTitulo.includes(san))tem[1]=true;
                            }else if(infos == "")tem[1]=true;
                            if(!tem.includes(false)){
                                sugestoes.push(san);
                                
                            }
                        });
                        
                    }

                }else{
                    var tem;
                    $(sugestoesAno).each(function(a,san){
                        tem=[false,false,false];
                        if(sugestoesCatergorias.length!=0){
                            if(sugestoesCatergorias.includes(san))tem[0]=true;
                        }else if(categoria ==0)tem[0]=true;
                        if(sugestoesAtores.length!=0){
                            if(sugestoesAtores.includes(san))tem[1]=true;
                        }else if(atores[0] == "")tem[1]=true;
                        if(sugestoesTitulo.length!=0){
                            if(sugestoesTitulo.includes(san))tem[2]=true;
                        }else if(infos == "")tem[2]=true;
                        if(!tem.includes(false)){
                            sugestoes.push(san);
                            
                        }

                    });
                }

                console.log(sugestoes);

                // seleciona filmes com base nas sugestões
                if (sugestoes.length != 0) {
                    var escolhido = sugestoes[Math.round(Math.random()*(sugestoes.length - 1))];
                    var aux = todos_titulos[escolhido].childNodes[0].textContent;

                    for (var i = 0; i < aux.length; ++i) {
                        if(aux.indexOf(" ") >= 0) {
                            aux = aux.replace(" ", "+")
                        }
                    }
                    // LINK de direcionamento para resultados de busca no YouTube
                    link += aux+"+trailer"+"+"+todos_anos[escolhido].childNodes[0].textContent;
                    console.log(link);
                    
                    // constrói section de exibição do filme selecionado
                    conteudo += "<section class='cartaz'>\
                                <h1 id='titulo'>"+todos_titulos[escolhido].childNodes[0].textContent+"</h1>\
                                <div id='banner'>";
                                if (todas_imagens[escolhido].getAttribute("src") == "") {
                                    conteudo += "<img src='imagens/semfoto.jpg'>";    
                                } else {
                                    conteudo += "<img src='"+image_path+todas_imagens[escolhido].getAttribute("src")+"'>";
                                }
                                
                                conteudo += "\
                                </div>\
                                <div id='corpo1'>\
                                    <p class='texto'><b>Ano:</b> "+todos_anos[escolhido].childNodes[0].textContent+"</p>\
                                    <p class='texto'>";

                                    if (todas_categorias[escolhido].children.length > 1) {
                                        conteudo += "<b>Categorias: </b>";
                                    } else {
                                        conteudo += "<b>Categoria: </b>";
                                    }

                                    for (var i = 0; i < todas_categorias[escolhido].children.length; ++i) {
                                        conteudo += todas_categorias[escolhido].children[i].textContent;
                                        if (i != todas_categorias[escolhido].children.length - 1) {
                                            conteudo += ", ";
                                        }
                                    }
                                    conteudo += "</p>";

                                    conteudo += "<p class='texto'><b>Sinopse:</b><br><br>"+todas_sinopses[escolhido].childNodes[0].textContent+"</p>\
                                             <p class='texto'><b>Atores:</b><br><br>";

                                            for (var i = 0; i < todos_atores[escolhido].children.length; ++i) {
                                                conteudo += todos_atores[escolhido].children[i].textContent;
                                                if (i != todos_atores[escolhido].children.length - 1) {
                                                    conteudo += ", ";
                                                }
                                            }
                                            conteudo += "</p>";

                document.getElementById("resultadoBusca").innerHTML = conteudo;
                requestVideo(todos_titulos[escolhido].childNodes[0].textContent, todos_anos[escolhido].childNodes[0].textContent, link);
                }else{
                    if(infos == "" && atores[0] == "" && categoria ==0 && ano == ""){
                        var escolhido = Math.round(Math.random()*(filmes.length - 1));
                        var aux = todos_titulos[escolhido].childNodes[0].textContent;

                    for (var i = 0; i < aux.length; ++i) {
                        if(aux.indexOf(" ") >= 0) {
                            aux = aux.replace(" ", "+")
                        }
                    }
                    // LINK de direcionamento para resultados de busca no YouTube
                    link += aux+"+trailer"+"+"+todos_anos[escolhido].childNodes[0].textContent;
                    console.log(link);
                    
                    // constrói section de exibição do filme selecionado
                    conteudo += "<section class='cartaz'>\
                                    <h1 id='titulo'>"+todos_titulos[escolhido].childNodes[0].textContent+"</h1>\
                                    <div id='banner'>";
                                    if (todas_imagens[escolhido].getAttribute("src") == "") {
                                        conteudo += "<img src='imagens/semfoto.jpg'>";    
                                    } else {
                                        conteudo += "<img src='"+image_path+todas_imagens[escolhido].getAttribute("src")+"'>";
                                    }
                                    
                                    conteudo += "\
                                    </div>\
                                    <div id='corpo1'>\
                                        <p class='texto'><b>Ano:</b> "+todos_anos[escolhido].childNodes[0].textContent+"</p>\
                                        <p class='texto'>";

                                        if (todas_categorias[escolhido].children.length > 1) {
                                            conteudo += "<b>Categorias: </b>";
                                        } else {
                                            conteudo += "<b>Categoria: </b>";
                                        }

                                        for (var i = 0; i < todas_categorias[escolhido].children.length; ++i) {
                                            conteudo += todas_categorias[escolhido].children[i].textContent;
                                            if (i != todas_categorias[escolhido].children.length - 1) {
                                                conteudo += ", ";
                                            }
                                        }
                                        conteudo += "</p>";

                                        conteudo += "<p class='texto'><b>Sinopse:</b><br><br>"+todas_sinopses[escolhido].childNodes[0].textContent+"</p>\
                                                <p class='texto'><b>Atores:</b><br><br>";

                                                for (var i = 0; i < todos_atores[escolhido].children.length; ++i) {
                                                    conteudo += todos_atores[escolhido].children[i].textContent;
                                                    if (i != todos_atores[escolhido].children.length - 1) {
                                                        conteudo += ", ";
                                                    }
                                                }
                                                conteudo += "</p>";

                    document.getElementById("resultadoBusca").innerHTML = conteudo;
                    requestVideo(todos_titulos[escolhido].childNodes[0].textContent, todos_anos[escolhido].childNodes[0].textContent, link);

                    }else{
                        // limpar video e outros trailer de busca anterior
                        $('#novostrailers').empty();
                        $('#video-container').hide();
                        document.getElementById("resultadoBusca").innerHTML = "Não há video que atenda esses parametros";
                    } 
                } 
            }
        }
        http.send(null);
    }
}

// função que seleciona aleatoriamente um elemento do vetores de sugestões
function aleatorio(min, max) {
    var x = Math.floor((Math.random() * max) + min);
    return x;
}

// método para buscar video pela API YouTube
function requestVideo(q, r, link) {
    console.log(q+" "+r+" trailer");
    var options = {
        part: 'snippet, id',
        q: q+" "+r+" trailer",
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
                displayResult(item);
            });
        } else {
            $('#video-container').html('Desculpe-me, não temos videos para sua pesquisa. Tente novamente.');
        } 
    });

    // Buscar e guardar video.
    function displayResult(videoSnippet) {

        var title = videoSnippet.snippet.title;
        var videoId = videoSnippet.id.videoId;
        var url = "";
        if (typeof videoSnippet.snippet.thumbnails !== 'undefined') {
            url = videoSnippet.snippet.thumbnails.medium.url;
        }
        
        $('#video-container').attr({width:"560" ,height:"315", src:"https://www.youtube.com/embed/"+videoId, frameborder:"0", allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; allowfullscreen"});
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
    document.getElementById('categoria').value=0;
    document.getElementById('ano').value='';
    document.getElementById('atores').value='';
    document.getElementById('infos').value='';    
}

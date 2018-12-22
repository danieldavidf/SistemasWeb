var tentativas;
var levatadas;
var ultima
var atual;
var respostas = new Array();
var total;

var imagens = new Array();
imagens[0] = "img1.jpg";
imagens[1] = "img2.jpg";
imagens[2] = "img3.jpg";
imagens[3] = "img4.jpg";
imagens[4] = "img5.jpg";
imagens[5] = "img6.jpg";
imagens[6] = "img1.jpg";
imagens[7] = "img2.jpg";
imagens[8] = "img3.jpg";
imagens[9] = "img4.jpg";
imagens[10]= "img5.jpg";
imagens[11]= "img6.jpg";
var preBuffer = new Array();
for(i=0; i<imagens.length; i++) {
    preBuffer[i] = new Image();
    preBuffer[i].src = imagens[i];
}

function gerarTabuleiro(qtdImagens) {
   tentativas = 0; levantadas = 0; total = 0;
    for(i=0; i<qtdImagens; i++) {
        indImg = Math.round(Math.random()*(imagens.length - 1));
        foto = imagens[indImg];
        del = imagens.splice(indImg,1);

        if (i==0) document.write("<tr>");
        
        document.write("<td>\
                            <img style='opacity: 0.00; onselectstart='return false'; ondragstart='return false;' onClick='virarCarta("+i+")' style='display=block' src='imgs/" + foto + "' id='"+ i + "' class='carta' alt='' />\
                        </td>");
        
        respostas[i] = foto;

        if (i>0 && i<11 && (i+1)%4 == 0)
            if (i<(qtdImagens-1))
                document.write("</tr><tr>");
        
    }
    document.write("</tr>");
}

function virarCarta(el) {

    var display = document.getElementById(el).style.opacity;
    if (display == 0.00) {
        document.getElementById(el).style.opacity = 1.00;
        levantadas++;
        console.log("Levantadas: "+levantadas);
        if (levantadas==1) {
            atual = el;
        } else if (levantadas == 2) {
            ultima = atual;
            atual = el;
            console.log("Ultima: "+ultima);
            console.log("Atual: "+atual);
            if (respostas[ultima] === respostas[atual]) {
                console.log("Iguais.");
                levantadas=0;
                total += 1;

            } else {
                console.log("Diferentes.");
                console.log("analisando carta...");
                levantadas=0;
                setTimeout(analisarCartas, 1500, ultima, atual);                
            }
            tentativas++;
            atualizarTentativas();
            if (total == 6) {
                alert("Você precisou de "+tentativas+" tentativas.");
            }
        }
    }
}

function analisarCartas (ultima, atual){
    document.getElementById(ultima).style.opacity = 0.00;
    document.getElementById(atual).style.opacity = 0.00;
}

function atualizarTentativas (){
    var pontDiv = document.getElementById("pontuacao");
    if(tentativas<=3)
        pontDiv.innerHTML =  tentativas+" tentativa";
    else
        pontDiv.innerHTML =  tentativas+" tentativas";
}

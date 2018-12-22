#include <stdio.h>
#include <string.h>

char nomes_arquivos[30][60];
int qtde_arquivos = 5;

int main(int argc, char *argv[]) {

	strcpy(nomes_arquivos[0], "database/chegadas_2017.csv");
	strcpy(nomes_arquivos[1], "database/chegadas_2016.csv");
	strcpy(nomes_arquivos[2], "database/chegadas_2015.csv");
	strcpy(nomes_arquivos[3], "database/chegadas_2014.csv");
	strcpy(nomes_arquivos[4], "database/chegadas_2013.csv");
	//strcpy(nomes_arquivos[5], "database/chegadas_2012.csv");
	//strcpy(nomes_arquivos[6], "database/chegadas_2011.csv");
	//strcpy(nomes_arquivos[7], "database/chegadas_2010.csv");
	//strcpy(nomes_arquivos[8], "database/chegadas_2009.csv");
	//strcpy(nomes_arquivos[9], "database/chegadas_2008.csv");
	//strcpy(nomes_arquivos[10],"database/chegadas_2007.csv");

	int inicial, final, tam, inclui;	
	int pos, i, j, cont, linha;
	char texto[255], conteudo[255];
	char caract, ano[5], ano_anterior[5];

	FILE * arq = fopen("turistas_conv22.xml", "w");
	
	fprintf(arq, "<?xml version=\"1.0\" encoding=\"ISO-8859-9\"?>\n");
	fprintf(arq, "<?xml-stylesheet href='turismo.xsl' type='text/xsl'?>\n\n");

	fprintf(arq, "<dados>\n\t");

	for (int z=0; z<qtde_arquivos; z++) {
		
		FILE * fp = fopen(nomes_arquivos[z], "r");		
		linha = 0; cont = 0;
	
		tam = strlen(nomes_arquivos[z]); 

		printf("%s\n", ano);

		while(1) {
			fgets(texto, 255, fp);
			inicial=0; final=0;

			if (linha > 0) {
				inclui = 1;				
				for (i=0; i<strlen(texto); i++) {
					caract = texto[i];

					if(caract == ';' || i==strlen(texto)-1) {
						if(cont == 0){
							//fprintf(arq, "\t<entrada>\n\t");
							strcpy(conteudo,"\t<entrada>\n\t");
						}
							
						final = i;
						if (i==strlen(texto)-1 && caract!='\n')
							final++;
						
						pos=0;
						
						//printf("inicial=%d / final=%d\n", inicial, final);
						char palavra[30];
						// formacao da palavra
						if (inicial == final) {
							strcpy(palavra," ");
						}
						else {
							for(j=inicial; j<final; j++) {
								palavra[pos] = texto[j];
								pos++;
							}
							palavra[pos] = '\0';
						}
						inicial = final+1;
						
						//continente
						if (cont == 0) {
							//printf("%s\n", palavra);
							strcat(conteudo, "\t\t<continente>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</continente>\n\t");
							//nao inclui entradas com continente = Continente não especificado
							//if (strlen(palavra)>10 && strncmp(palavra, "Continente não especificado", 10)==0){
							//	inclui = 0;
							//	printf("entrou aqui (%s)\n",palavra);
							//}
						}
						//pais
						if (cont == 2) {
							//printf("%s\n", palavra);
							strcat(conteudo, "\t\t<pais>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</pais>\n\t");
							//nao inclui entradas com pais = Outros paises
							//if (strlen(palavra)>6 && strncmp(palavra, "Outros países", 6)==0){
							//	inclui = 0;
							//	printf("entrou aqui (%s)\n", palavra);
							//}

						}
						//uf
						if (cont == 4) {
							//printf("%s\n", palavra);
							strcat(conteudo, "\t\t<uf>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</uf>\n\t");
							//nao inclui entradas com uf = Outras Unidades da Federação
							//if (strlen(palavra)>6 && strncmp(palavra, "Outras Unidades da Federação", 6)==0){
							//	printf("entrou aqui (%s)\n", palavra);
							//	inclui = 0;
							//}
						}
						//via
						if (cont == 6) {
							//printf("%s\n", palavra);
							strcat(conteudo, "\t\t<via>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</via>\n\t");
						}
						//ano
						if (cont == 8) {
							//printf("%s\n", palavra);
							strcat(conteudo, "\t\t<ano>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</ano>\n\t");
						}
						//mes
						if (cont == 9) {
							//printf("%s\n", palavra);
							strcat(conteudo, "\t\t<mes>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</mes>\n\t");
						}
						//chegadas
						if (cont == 11) {
							//printf("%s\n", palavra);
							tam = strlen(palavra);
							if (palavra[tam-1] != '1' && palavra[tam-1] != '2' && palavra[tam-1] != '3' &&
								palavra[tam-1] != '4' && palavra[tam-1] != '5' && palavra[tam-1] != '6' &&
								palavra[tam-1] != '7' && palavra[tam-1] != '8' && palavra[tam-1] != '9' &&
								palavra[tam-1] != '0') {

								palavra[tam-1] = '\0';	
							}
							//nao inclui entradas com nro de chegadas = 0 ou
							//tratamento em caso de chegadas ser vazio
							if (strcmp(palavra, "0")==0 || strcmp(palavra, "")==0)
								inclui = 0;

							strcat(conteudo, "\t\t<chegadas>");
							strcat(conteudo, palavra);
							strcat(conteudo, "</chegadas>\n\t");
						}
						cont++;
						if(cont == 12) {
							cont = 0;
							strcat(conteudo, "\t</entrada>\n\t");

							if (inclui==1)
								fprintf(arq, "%s", conteudo);
						}
					}
					final++;
				}
			}
			
			linha++;
			if (feof(fp)) break;
		}
		fclose(fp);
	}

	fprintf(arq, "\n</dados>");
	fclose(arq);

	return 0;      
}

#include <stdio.h>
#include <string.h>

char nomes_arquivos[30][60];
int qtde_arquivos = 1;

char continente[40],pais[40],uf[30],via[30], ano[5], mes[3], chegadas[10];

int main(int argc, char *argv[]) {

	strcpy(nomes_arquivos[0], "database/teste.csv");
	//strcpy(nomes_arquivos[0], "database/chegadas_2017.csv");
	//strcpy(nomes_arquivos[1], "database/chegadas_2016.csv");
	//strcpy(nomes_arquivos[2], "database/chegadas_2015.csv");
	//strcpy(nomes_arquivos[3], "database/chegadas_2014.csv");
	//strcpy(nomes_arquivos[4], "database/chegadas_2013.csv");
	//strcpy(nomes_arquivos[5], "database/chegadas_2012.csv");
	//strcpy(nomes_arquivos[6], "database/chegadas_2011.csv");
	//strcpy(nomes_arquivos[7], "database/chegadas_2010.csv");
	//strcpy(nomes_arquivos[8], "database/chegadas_2009.csv");
	//strcpy(nomes_arquivos[9], "database/chegadas_2008.csv");
	//strcpy(nomes_arquivos[10],"database/chegadas_2007.csv");

	int inicial, final, tam, inclui;	
	int pos, i, j, cont, linha;
	char texto[255], caract;

	FILE * arq = fopen("turismo.sql", "w");
	
	fprintf(arq,"CREATE TABLE turismo (\n\tid INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,\n\tcontinente VARCHAR(40) NOT NULL,\n\tpais VARCHAR(40) NOT NULL,\n\tuf VARCHAR(30) NOT NULL,\n\tvia VARCHAR(30) NOT NULL,\n\tmes INT NOT NULL,\n\tano INT NOT NULL,\n\tchegadas INT NOT NULL\n);\n\n");

	for (int z=0; z<qtde_arquivos; z++) {
		
		FILE * fp = fopen(nomes_arquivos[z], "r");		
		linha = 0; cont = 0;
	
		tam = strlen(nomes_arquivos[z]); 
		//printf("%s\n", ano);

		//fprintf(arq, "<ano%s>\n\t", ano);
		//INSERT INTO turismo(continente,pais,uf,via,mes,ano,chegadas) VALUES ('Casillas',1);,

		while(1) {
			fgets(texto, 255, fp);
			inicial=0; final=0;
			
			if (linha > 0) {
				inclui = 1;				
				for (i=0; i<strlen(texto); i++) {
					caract = texto[i];

					if(caract == ';' || i==strlen(texto)-1) {
							
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
							strcpy(continente, palavra);
						}
						//pais
						if (cont == 2) {
							//printf("%s\n", palavra);
							strcpy(pais, palavra);
						}
						//uf
						if (cont == 4) {
							//printf("%s\n", palavra);
							strcpy(uf, palavra);
						}
						//via
						if (cont == 6) {
							//printf("%s\n", palavra);
							strcpy(via, palavra);
						}
						//ano
						if (cont == 8) {
							//printf("%s\n", palavra);
							strcpy(ano, palavra);
						}	
						//mes
						if (cont == 9) {
							//printf("%s\n", palavra);
							strcpy(mes, palavra);
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

							strcpy(chegadas, palavra);
						}
						cont++;
						if(cont == 12) {
							cont = 0;

							if (inclui==1)
								fprintf(arq, "INSERT INTO turismo(continente,pais,uf,via,mes,ano,chegadas) VALUES (\'%s\',\'%s\',\'%s\',\'%s\',%s,%s,%s);",continente,pais,uf,via,mes,ano,chegadas);
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

	fclose(arq);

	return 0;      
}

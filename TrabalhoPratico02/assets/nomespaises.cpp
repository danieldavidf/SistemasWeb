#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <algorithm>
#include <iterator>

using namespace std;

struct myclass {
  bool operator() (int i,int j) { return (i<j);}
} myobject;

vector<string> paises;
vector<string> continentes;
vector<string> ufs;

int cont_continentes=1;
int cont_paises=0;
int cont_ufs=0;

char nomes_arquivos[30][60];
int qtde_arquivos = 11;

int main(int argc, char *argv[]) {

	strcpy(nomes_arquivos[0], "database/chegadas_2017.csv");
	strcpy(nomes_arquivos[1], "database/chegadas_2016.csv");
	strcpy(nomes_arquivos[2], "database/chegadas_2015.csv");
	strcpy(nomes_arquivos[3], "database/chegadas_2014.csv");
	strcpy(nomes_arquivos[4], "database/chegadas_2013.csv");
	strcpy(nomes_arquivos[5], "database/chegadas_2012.csv");
	strcpy(nomes_arquivos[6], "database/chegadas_2011.csv");
	strcpy(nomes_arquivos[7], "database/chegadas_2010.csv");
	strcpy(nomes_arquivos[8], "database/chegadas_2009.csv");
	strcpy(nomes_arquivos[9], "database/chegadas_2008.csv");
	strcpy(nomes_arquivos[10],"database/chegadas_2007.csv");

	int inicial, final, tam, inclui;
	int pos, i, j, tem, cont, linha;
	char texto[255], conteudo[255];
	char caract, ano[5], ano_anterior[5];

	for (int z=0; z<qtde_arquivos; z++) {
		
		FILE * fp = fopen(nomes_arquivos[z], "r");		
		linha = 0; cont = 0;

		while(1) {
			fgets(texto, 255, fp);
			inicial=0; final=0;
			
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
						
						tem = 0;
					    for (int i=0; i<continentes.size(); i++) {
					    	if (continentes[i]==palavra){
					    		tem = 1;
					    		break;
					    	}
					    }
					    if (tem == 0 && strcmp(palavra, "País")!=0)
					    	continentes.push_back(palavra);
					}
					//pais
					if (cont == 2) {
						tem = 0;
					    for (int i=0; i<paises.size(); i++) {
					    	if (paises[i]==palavra){
					    		tem = 1;
					    		break;
					    	}
					    }
					    if (tem == 0)
					    	paises.push_back(palavra);

					}
					//uf
					if (cont == 4) {
						tem = 0;
					    for (int i=0; i<ufs.size(); i++) {
					    	if (ufs[i]==palavra){
					    		tem = 1;
					    		break;
					    	}
					    }
					    if (tem == 0)
					    	ufs.push_back(palavra);
					}
					
					cont++;
					if(cont == 12) {
						cont = 0;
					}
				}
				final++;
			}
		if (feof(fp)) break;
		}
		fclose(fp);
	}
/*
	cont_continentes=0;
	for (int i=0; i<continentes.size(); i++) {
		cout << "<option value=\"" << cont_continentes << "\">"; 
    	cout << continentes[i];
    	cout << "</option>" << endl;
    	cont_continentes++;
    }
*/
	sort (paises.begin(), paises.end());

    cont_paises=1;
	for (int i=0; i<paises.size(); i++) {
		cout << "<option value=\"" << cont_paises << "\">"; 
    	cout << paises[i];
    	cout << "</option>" << endl;
    	cont_paises++;
    }
/*
    cont_ufs=0;
	for (int i=0; i<ufs.size(); i++) {
		cout << "<option value=\"" << cont_ufs << "\">"; 
    	cout << ufs[i];
    	cout << "</option>" << endl;
    	cont_ufs++;
    }
*/
	return 0;      
}

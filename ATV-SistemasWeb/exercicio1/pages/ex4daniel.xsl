<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/Graphics/SVG/SVG-19990812.dtd">
<xsl:output method="xml" doctype-system="about:legacy-compat" omit-xml-declaration = "yes" encoding="UTF-8" indent="yes" />
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8"></meta>
		<title>exercicio 4 - Daniel David</title>
	</head>
	<body>
		<h2>Exercício 4 - Daniel David - XML + XSL (XSLT) + SVG</h2>
		<p>Quantidade de universidades federais existentes de 2000 a 2014 em cada estado da federação.</p>
		<table style="min-width: 600px">
			<tr>
				<td>
					<p><a href="http://api.pgi.gov.br/api/1/serie/2139.xml" target="_blank">Base de dados</a></p>
				</td>
				<td>
					<p><a href="http://dados.gov.br/dataset/ensino-superior/resource/35b030d8-a990-40a2-af3e-6b34413e4110?inner_span=True" target="_blank">Mais informações</a></p>
				</td>
				<td>
					<p><a href="http://www.lgncontabil.com.br/icms/Tabela-Codigo-de-UF-do-IBGE.pdf" target="_blank">Código IBGE de cada estado</a></p>
				</td>
			</tr>
		</table>
			
		<table>
			<tr>
				<td>
					<h3>11-Rondônia/RO</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='11']">
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>12-Acre/AC</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='12']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>

			<tr>
				<td>
					<h3>13-Amazonas/AM</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='13']">
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>14-Roraima/RR</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='14']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>

			<tr>
				<td>
					<h3>15-Pará/PA</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='15']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>16-Amapá/AP</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='16']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>17-Tocantins/TO</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='17']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>21-Maranhão/MA</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='21']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>22-Piauí/PI</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='22']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>23-Ceará/CE</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='23']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>24-Rio Grande do Norte/RN</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='24']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>25-Paraíba/PB</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='25']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>26-Pernambuco/PE</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='26']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>27-Alagoas/AL</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='27']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>28-Sergipe/SE</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='28']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>29-Bahia/BA</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='29']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>31-Minas Gerais/MG</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='31']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>32-Espírito Santo/ES</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='32']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>33-Rio de Janeiro/RJ</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='33']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>35-São Paulo/SP</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='35']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>41-Paraná/PR</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='41']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>42-Santa Catarina/SC</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='42']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>43-Rio Grande do Sul/RS</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='43']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>50-Mato Grosso do Sul/MS</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='50']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>51-Mato Grosso/MT</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='51']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					<h3>52-Goiás/GO</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='52']">
								<xsl:sort select="ano"/>

								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
			</tr>
			<tr>
				<td>
					<h3>53-Distrito Federal/DF</h3>
					<svg xmlns="http://www.w3.org/2000/svg" width="16.5cm" height="10cm">
						<g style = "stroke: #000000"> 
							<!-- draw the axes -->
							<text x="45" y="12">Quantidade</text>
							<line x1="40" y1="170" x2="1200" y2="170"/>
							<line x1="40" y1="0" x2="40" y2="170"/>

							<text x="{40*1}" y="180" font-size="9">2000</text>
							<text x="{40*2}" y="180" font-size="9">2001</text>
							<text x="{40*3}" y="180" font-size="9">2002</text>
							<text x="{40*4}" y="180" font-size="9">2003</text>
							<text x="{40*5}" y="180" font-size="9">2004</text>
							<text x="{40*6}" y="180" font-size="9">2005</text>
							<text x="{40*7}" y="180" font-size="9">2006</text>
							<text x="{40*8}" y="180" font-size="9">2007</text>
							<text x="{40*9}" y="180" font-size="9">2008</text>
							<text x="{40*10}" y="180" font-size="9">2009</text>
							<text x="{40*11}" y="180" font-size="9">2010</text>
							<text x="{40*12}" y="180" font-size="9">2011</text>
							<text x="{40*13}" y="180" font-size="9">2012</text>
							<text x="{40*14}" y="180" font-size="9">2013</text>
							<text x="{40*15}" y="180" font-size="9">2014</text>

							<xsl:for-each select="valores/entry[estado_ibge='53']">
								<xsl:sort select="ano"/>
								
								<xsl:variable name="pos" select="(position()*40)+1"/>
								<xsl:variable name="height" select="valor*10"/>

								<rect x="{$pos}" y="{170-$height}" width="20" height="{$height}"/>

								<text x="{$pos+4}" y="{165-$height}">
									<xsl:value-of select="valor"/>
								</text>
							</xsl:for-each>
						</g>
					</svg>
				</td>
				<td>
					
				</td>
			</tr>
		</table>		
	</body>
</html>

</xsl:template>
</xsl:stylesheet>

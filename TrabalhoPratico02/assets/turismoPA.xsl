<?xml version="1.0" encoding="UTF-8"?>

<!-- DWXMLSource="teste.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="iso-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:param name="pais"/>
	<xsl:param name="ano"/>

	<xsl:template match="/">

		<h1 style="text-align: center;">
			De <xsl:value-of select="$pais"/> para o Brasil em <xsl:value-of select="$ano"/>
		</h1>
		<svg xmlns="http://www.w3.org/2000/svg" width="36cm" height="10cm">
			<g style = "stroke: #000000">					
				
				<xsl:variable name="somaTotalJaneiro" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='janeiro']/chegadas)"/>
				<xsl:variable name="somaTotalFevereiro" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='fevereiro']/chegadas)"/>
				<xsl:variable name="somaTotalMarco" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='março']/chegadas)"/>
				<xsl:variable name="somaTotalAbril" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='abril']/chegadas)"/>
				<xsl:variable name="somaTotalMaio" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='maio']/chegadas)"/>
				<xsl:variable name="somaTotalJunho" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='junho']/chegadas)"/>
				<xsl:variable name="somaTotalJulho" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='julho']/chegadas)"/>
				<xsl:variable name="somaTotalAgosto" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='agosto']/chegadas)"/>
				<xsl:variable name="somaTotalSetembro" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='setembro']/chegadas)"/>
				<xsl:variable name="somaTotalOutubro" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='outubro']/chegadas)"/>
				<xsl:variable name="somaTotalNovembro" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='novembro']/chegadas)"/>
				<xsl:variable name="somaTotalDezembro" select="sum(dados/entrada[pais=$pais and ano=$ano and mes='dezembro']/chegadas)"/>

				<text x="45" y="12">Chegadas</text>
				<line x1="40" y1="340" x2="1400" y2="340"/>
				<line x1="40" y1="0" x2="40" y2="340"/>

				<text x="{100*1}" y="360" font-size="12">Janeiro</text>
				<text x="{100*2}" y="360" font-size="12">Fevereiro</text>
				<text x="{100*3}" y="360" font-size="12">Março</text>
				<text x="{100*4}" y="360" font-size="12">Abril</text>
				<text x="{100*5}" y="360" font-size="12">Maio</text>
				<text x="{100*6}" y="360" font-size="12">Junho</text>
				<text x="{100*7}" y="360" font-size="12">Julho</text>
				<text x="{100*8}" y="360" font-size="12">Agosto</text>
				<text x="{100*9}" y="360" font-size="12">Setembro</text>
				<text x="{100*10}" y="360" font-size="12">Outubro</text>
				<text x="{100*11}" y="360" font-size="12">Novembro</text>
				<text x="{100*12}" y="360" font-size="12">Dezembro</text>
	
				<xsl:variable name="heightJaneiro" select="$somaTotalJaneiro*0.00047"/>
				<rect x="{100*1}" y="{340-$heightJaneiro}" width="45" height="{$heightJaneiro}"/>
				<text x="{100*1}" y="{335-$heightJaneiro}">
					<xsl:value-of select="$somaTotalJaneiro"/>
				</text>

				<xsl:variable name="heightFevereiro" select="$somaTotalFevereiro*0.00047"/>
				<rect x="{100*2}" y="{340-$heightFevereiro}" width="45" height="{$heightFevereiro}"/>
				<text x="{100*2}" y="{335-$heightFevereiro}">
					<xsl:value-of select="$somaTotalFevereiro"/>
				</text>

				<xsl:variable name="heightMarco" select="$somaTotalMarco*0.00047"/>
				<rect x="{100*3}" y="{340-$heightMarco}" width="45" height="{$heightMarco}"/>
				<text x="{100*3}" y="{335-$heightMarco}">
					<xsl:value-of select="$somaTotalMarco"/>
				</text>

				<xsl:variable name="heightAbril" select="$somaTotalAbril*0.00047"/>
				<rect x="{100*4}" y="{340-$heightAbril}" width="45" height="{$heightAbril}"/>
				<text x="{100*4}" y="{335-$heightAbril}">
					<xsl:value-of select="$somaTotalAbril"/>
				</text>

				<xsl:variable name="heightMaio" select="$somaTotalMaio*0.00047"/>
				<rect x="{100*5}" y="{340-$heightMaio}" width="45" height="{$heightMaio}"/>
				<text x="{100*5}" y="{335-$heightMaio}">
					<xsl:value-of select="$somaTotalMaio"/>
				</text>

				<xsl:variable name="heightJunho" select="$somaTotalJunho*0.00047"/>
				<rect x="{100*6}" y="{340-$heightJunho}" width="45" height="{$heightJunho}"/>
				<text x="{100*6}" y="{335-$heightJunho}">
					<xsl:value-of select="$somaTotalJunho"/>
				</text>

				<xsl:variable name="heightJulho" select="$somaTotalJulho*0.00047"/>
				<rect x="{100*7}" y="{340-$heightJulho}" width="45" height="{$heightJulho}"/>
				<text x="{100*7}" y="{335-$heightJulho}">
					<xsl:value-of select="$somaTotalJulho"/>
				</text>

				<xsl:variable name="heightAgosto" select="$somaTotalAgosto*0.00047"/>
				<rect x="{100*8}" y="{340-$heightAgosto}" width="45" height="{$heightAgosto}"/>
				<text x="{100*8}" y="{335-$heightAgosto}">
					<xsl:value-of select="$somaTotalAgosto"/>
				</text>

				<xsl:variable name="heightSetembro" select="$somaTotalSetembro*0.00047"/>
				<rect x="{100*9}" y="{340-$heightSetembro}" width="45" height="{$heightSetembro}"/>
				<text x="{100*9}" y="{335-$heightSetembro}">
					<xsl:value-of select="$somaTotalSetembro"/>
				</text>

				<xsl:variable name="heightOutubro" select="$somaTotalOutubro*0.00047"/>
				<rect x="{100*10}" y="{340-$heightOutubro}" width="45" height="{$heightOutubro}"/>
				<text x="{100*10}" y="{335-$heightOutubro}">
					<xsl:value-of select="$somaTotalOutubro"/>
				</text>

				<xsl:variable name="heightNovembro" select="$somaTotalNovembro*0.00047"/>
				<rect x="{100*11}" y="{340-$heightNovembro}" width="45" height="{$heightNovembro}"/>
				<text x="{100*11}" y="{335-$heightNovembro}">
					<xsl:value-of select="$somaTotalNovembro"/>
				</text>

				<xsl:variable name="heightDezembro" select="$somaTotalDezembro*0.00047"/>
				<rect x="{100*12}" y="{340-$heightDezembro}" width="45" height="{$heightDezembro}"/>
				<text x="{100*12}" y="{335-$heightDezembro}">
					<xsl:value-of select="$somaTotalDezembro"/>
				</text>
			</g>
		</svg>
		
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="ISO-8859-9"?>

<!-- DWXMLSource="teste.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="iso-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

	<xsl:template match="/">
		<xsl:variable name="somaTotal2013" select="sum(dados/entrada[ano='2013']/chegadas)"/>
		<xsl:variable name="somaTotal2014" select="sum(dados/entrada[ano='2014']/chegadas)"/>
		<xsl:variable name="somaTotal2015" select="sum(dados/entrada[ano='2015']/chegadas)"/>
		<xsl:variable name="somaTotal2016" select="sum(dados/entrada[ano='2016']/chegadas)"/>
		<xsl:variable name="somaTotal2017" select="sum(dados/entrada[ano='2017']/chegadas)"/>

		<!--somatorio = 31684498-->
		<xsl:variable name="somatorio" select="$somaTotal2013+$somaTotal2014+$somaTotal2015+$somaTotal2016+$somaTotal2017"/>

		<h1>Total de turistas em todo o Brasil</h1>
		<svg xmlns="http://www.w3.org/2000/svg" width="16cm" height="10cm">
			<g style = "stroke: #000000">					

				<text x="45" y="12">Chegadas</text>
				<line x1="40" y1="340" x2="1200" y2="340"/>
				<line x1="40" y1="0" x2="40" y2="340"/>

				<text x="{100*1}" y="360" font-size="16">2013</text>
				<text x="{100*2}" y="360" font-size="16">2014</text>
				<text x="{100*3}" y="360" font-size="16">2015</text>
				<text x="{100*4}" y="360" font-size="16">2016</text>
				<text x="{100*5}" y="360" font-size="16">2017</text>

				<xsl:variable name="height2013" select="$somaTotal2013*0.000035555"/>
				<rect style="fill:rgb(0,0,255)" x="{100*1}" y="{340-$height2013}" width="45" height="{$height2013}" />
				<text x="{100*1}" y="{335-$height2013}">
					<xsl:value-of select="$somaTotal2013"/>
				</text>

				<xsl:variable name="height2014" select="$somaTotal2014*0.000035555"/>
				<rect style="fill:rgb(255,0,0)" x="{100*2}" y="{340-$height2014}" width="45" height="{$height2014}"/>
				<text x="{100*2}" y="{335-$height2014}">
					<xsl:value-of select="$somaTotal2014"/>
				</text>

				<xsl:variable name="height2015" select="$somaTotal2015*0.000035555"/>
				<rect style="fill:rgb(0,255,0)" x="{100*3}" y="{340-$height2015}" width="45" height="{$height2015}"/>
				<text x="{100*3}" y="{335-$height2015}">
					<xsl:value-of select="$somaTotal2015"/>
				</text>

				<xsl:variable name="height2016" select="$somaTotal2016*0.000035555"/>
				<rect style="fill:rgb(0,255,255)" x="{100*4}" y="{340-$height2016}" width="45" height="{$height2016}"/>
				<text x="{100*4}" y="{335-$height2016}">
					<xsl:value-of select="$somaTotal2016"/>
				</text>

				<xsl:variable name="height2017" select="$somaTotal2017*0.000035555"/>
				<rect style="fill:rgb(255,255,0)" x="{100*5}" y="{340-$height2017}" width="45" height="{$height2017}"/>
				<text x="{100*5}" y="{335-$height2017}">
					<xsl:value-of select="$somaTotal2017"/>
				</text>

			</g>
		</svg>

		<!--
		<svg style="margin-left: 300px;" xmlns="http://www.w3.org/2000/svg" width="16cm" height="10cm">
        	<path fill="#0000ff" d="M115,115 L115,0 A115,115 1 0,1 196.317, 33.6827 z" transform="rotate(0, 115, 115)"></path>
        	<path fill="#ff0000" d="M115,115 L115,0 A115,115 1 0,1 196.317, 33.6827 z" transform="rotate(72, 115, 115)"></path>
        	<path fill="#00ff00" d="M115,115 L115,0 A115,115 1 0,1 196.317, 33.6827 z" transform="rotate(144, 115, 115)"></path>
        	<path fill="#00ffff" d="M115,115 L115,0 A115,115 1 0,1 196.317, 33.6827 z" transform="rotate(216, 115, 115)"></path>
        	<path fill="yellow" d="M115,115 L115,0 A115,115 1 0,1 196.317, 33.6827 z" transform="rotate(288, 115, 115)"></path>
        </svg>-->

	</xsl:template>
</xsl:stylesheet>

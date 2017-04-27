<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: -->

<!-- Vypasani nastaveni detailu pro uzivatele s nastavenim kvality odlesku vetsi nez 1 a transformace do JSON -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="nastaveni/prednastaveni/grafika/detaily[kvalita_odlesku >= 1]"> 
			<xsl:sort select="kvalita_odlesku" order="ascending"/>
			{
			"Uzivatelske jmeno": "<xsl:value-of select="../../hra/@uzivatelske_jmeno"/>",
                        "Nastaveni kvality detailu:": "<xsl:value-of select="@kvalita_det"/>",
                        "Kvalita textur": "<xsl:value-of select="kvalita_textur"/>",
                        "Vykreslovaci rozliseni": "<xsl:value-of select="vykreslovaci_rozliseni"/>",
                        "Kvalita mraku": "<xsl:value-of select="kvalita_mraku"/>",
                        "Kvalita terenu": "<xsl:value-of select="kvalita_terenu"/>",
                        "Vykreslovaci vzdalenost": "<xsl:value-of select="vzdalenost_vykreslovani"/>",
			"Kvalita odlesku": "<xsl:value-of select="kvalita_odlesku"/>",
                        "Kvalita odrazu vody": "<xsl:value-of select="kvalita_odrazu_vody"/>",
                        "Kvalita fyziky": "<xsl:value-of select="kvalita_fyziky"/>",
                        "Deformace terenu": "<xsl:value-of select="deformace_terenu"/>",
                        "Kvalita stop pasu": "<xsl:value-of select="kvalita_stop_pasu"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>
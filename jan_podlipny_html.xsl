<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: -->

<!-- Vypsani nastaveni zvuku uzivatele Tiger88 a transformace do html -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	    <head>
		    <title>Transformace XML do HTML</title>
		    <meta charset="UTF-8"/>
	    </head>
		<body>
		<xsl:for-each select="nastaveni/prednastaveni/hra[@uzivatelske_jmeno = 'Tiger88']">	
                        <p><b>Uživatelske jmeno: </b><xsl:value-of select="@uzivatelske_jmeno"/></p>
                        <p><b>Verze hry: </b><xsl:value-of select="@verze"/></p>	
			<h2>Nastaveni zvuku</h2>
			<table border="1">
				<tr>
					<td>Zvuky:</td>
					<td>
                                        <xsl:choose>
							<xsl:when test="nastaveni/prednastaveni/zvuk/@zapnuto = '1'">Zapnuto</xsl:when>
							<xsl:otherwise>Vypnuto</xsl:otherwise>
					</xsl:choose></td>
				</tr>
                                <tr>
					<td>Kvalita zvuku:</td>
					<td><xsl:value-of select="../zvuk/@kvalita_zvuk"/></td>
				</tr>
				<tr>
					<td>Hlasitost:</td>
					<td><xsl:value-of select="../zvuk/hlasitost"/></td>
				</tr>
				<tr>
					<td>Hlasitost efektu:</td>
					<td><xsl:value-of select="../zvuk/hlasitost_efektu"/></td>
				</tr>
                                <tr>
					<td>Hlasitost motoru:</td>
					<td><xsl:value-of select="../zvuk/hlasitost_motoru"/></td>
				</tr>
                                <tr>
					<td>Hlasitost strelby:</td>
					<td><xsl:value-of select="../zvuk/hlasitost_strelby"/></td>
				</tr>
                                <tr>
					<td>Hlasitost komunikace:</td>
					<td><xsl:value-of select="../zvuk/hlasitost_komunikace"/></td>
				</tr>
                                <tr>
					<td>Zvuky v hangaru:</td>
					<td>
                                        <xsl:choose>
							<xsl:when test="../zvuk/zvuky_v_hangaru = '1'">Zapnuto</xsl:when>
							<xsl:otherwise>Vypnuto</xsl:otherwise>
					</xsl:choose></td>
				</tr>
			</table>
                </xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>

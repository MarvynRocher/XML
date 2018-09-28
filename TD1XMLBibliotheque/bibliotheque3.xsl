<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="bibliotheque">
        <html>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="allee">
        <tr>
            <h2>Allee  <xsl:value-of select="@numeroAllee"/> </h2>
            <xsl:apply-templates/>
        </tr>       
    </xsl:template>
    
    <xsl:template match="rayon">
        <tr>
            <h3>Rayon <xsl:value-of select="@numeroRayon"/> </h3>
            <xsl:apply-templates/>
        </tr>       
    </xsl:template>

</xsl:stylesheet>

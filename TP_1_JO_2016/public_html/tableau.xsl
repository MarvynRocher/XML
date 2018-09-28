<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="tableau">
        <html>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tableau">
        <table>
            <tr bgcolor="#ffff99">
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Pays</th>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Or</th>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Argent</th>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Bronze</th>
            </tr>
            <xsl:apply-templates />
        </table> 
       
    </xsl:template>
    <xsl:template match="ligne">
     <tr>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
    <xsl:template match="pays">
        <td>
            <xsl:value-of select="@nomDePays" />
        </td>
    </xsl:template>
    
    <xsl:template match="medaille">
        <td >
            <xsl:value-of select="." />
        </td>
    </xsl:template>  
    
</xsl:stylesheet>

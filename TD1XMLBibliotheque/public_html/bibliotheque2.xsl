<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="bibliotheque">
        <html>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="allee">
        <hr/>
        <h1> Allee <xsl:value-of select="@numero" /> </h1> 
        <hr/>
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="rayon">
        <h2>Rayon <xsl:value-of select="@numero" /> </h2>
        <table>
            <tr>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Categorie de l'ouvrage</th>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Titre</th>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Auteur</th>
                <th style="text-align: center; border: solid grey 1px; boder-collapse: collapse;">Numero</th>
            </tr>
            <xsl:apply-templates />
        </table> 
        <br/>
    </xsl:template>
    
    <xsl:template match="ouvrage">
        <tr>
            <td>
                <xsl:value-of select="@type" />
            </td>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
    
    <xsl:template match="titre">
        <td bgcolor="#ffcccc" >
            <xsl:value-of select="." />
        </td>
        <xsl:if test="../auteur = false()">
            <td bgcolor = "#000000">
                pas d'auteur
            </td>
            <xsl:if test="../numero = false()">
                <td bgcolor = "#000000">
                    pas de numero
                </td>
            </xsl:if>
        </xsl:if>        
    </xsl:template>
    
    <xsl:template match="auteur">
        <td bgcolor = "#ccffcc">
            <xsl:value-of select="." />
        </td>
        <xsl:if test="../numero = false()">
            <td bgcolor = "#000000">
                Pas de numéro
            </td>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="numero">   
        <td bgcolor ="#ccccff">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
</xsl:stylesheet>
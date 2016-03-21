<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"
        doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Prepositions</title>
            </head>
            <body>
                <h3>Prepositions: Connected</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Connected (Definite)</th>
                        <th>Connected (Indefinite)</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep[@connect]" mode="connected"/>
                </table>
                
                <h3>Prepositions: Unconnected</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Unconnected (Definite)</th>
                        <th>Unconnected (Indefinite)</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep[@connect]" mode="unconnected"/>
                </table>
                
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="excerpt" mode="connected">
        <tr>
            <td><xsl:value-of select="parent::excerpt/count(preceding-sibling::excerpt) + 1"/></td>
            <td><xsl:value-of select="@connect='y def'"/></td>
            <td><xsl:value-of select="@connect='y indef'"/></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="excerpt" mode="unconnected">
        <tr>
            <td><xsl:value-of select="parent::excerpt/count(preceding-sibling::excerpt) + 1"/></td>
            <td><xsl:value-of select="@connect='n def'"/></td>
            <td><xsl:value-of select="@connect='n indef'"/></td>
        </tr>
    </xsl:template>
    
    
</xsl:stylesheet>
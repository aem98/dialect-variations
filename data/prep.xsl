<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"
        doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>XSLT</title>
            </head>
            <body>
                <h3>Ellision</h3>
                <table>
                    <tr>
                        <th>Exceprt Number</th>
                        <th>Connected (Definite)</th>
                        <th>Connected (Indefinite)</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="prep">
        <tr>
            <td><xsl:apply-templates select="parent::*/position()"/></td> 
            <td><xsl:value-of select="@connect='y def'"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
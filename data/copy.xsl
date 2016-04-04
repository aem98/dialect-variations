<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
        <head>
        <title></title>
        </head>
        <body>
            <h3>Prep Totals</h3>
             <table>
                <tr>
                    <th>Excerpt Number</th>
                    <th>Connected (Def)</th>
                    <th>Connected (Indef)</th>
                    <th>Unconnected (Def)</th>
                    <th>Unconncected (Indef)</th>
                </tr>
                     <xsl:apply-templates select="//excerpt" mode="prep_2"/>
            </table>
        </body>
    </html>
    </xsl:template>
    
    <xsl:template match="excerpt" mode="prep_2">
        <xsl:if test="position() = last()">
            <tr>
                <td>Total</td>
                <td><xsl:value-of select="count(//prep[@connect='y def'])"/></td> 
                <td><xsl:value-of select="count(//prep[@connect='n def'])"/></td>
                <td><xsl:value-of select="count(//prep[@connect='y indef'])"/></td>
                <td><xsl:value-of select="count(//prep[@connect='n indef'])"/></td>
            </tr>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>
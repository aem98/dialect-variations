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
                <title>Jordanian Arabic | Excerpts</title>
            </head>
            <body>
                <h3>Excerpts</h3>
                <table>
                    <tr>
                        <th></th>
                        <th>Number</th>
                    </tr>
                <xsl:apply-templates select="//final_project"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="final_project">
        <tr>
            <td><xsl:value-of select="position()"/></td> 
            <td><xsl:value-of select="//excerpt"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
            </head>
            <body>
                <h3>Gender Agreement: Non-Agreements</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Non-Agreement Examples</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt" mode="gender"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="excerpt" mode="gender">
        <tr>
            <td><xsl:value-of select="position()"/></td> 
            <td><xsl:value-of select="gender[@agree='n']"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
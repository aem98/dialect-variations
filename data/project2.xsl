<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"
        doctype-system="about:legacy-compat"/>
    
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
                    <xsl:apply-templates select="//excerpt/gender[@agree='n']"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="gender">
        <tr>
            <td><xsl:value-of select="parent::*/position()"/></td> 
            <td><xsl:apply-templates/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
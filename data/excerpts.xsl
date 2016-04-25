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
                <h1>Excerpts</h1>
                <xsl:apply-templates select="//excerpt"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="excerpt">
        <div>
           <p><xsl:value-of select="position()"/></p>
           <p><xsl:apply-templates/></p>
        </div>
    </xsl:template>
    
</xsl:stylesheet>
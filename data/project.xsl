<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Amman</title>
            </head>
            <body>
                <h3>Gender</h3>
                <table>
                    <tr>
                        <td>Gender Agreement</td>
                    </tr>
                    <xsl:apply-templates select="//excerpt/gender"/>
                </table>
                
                <h3>Verbs</h3>
             <table>
                 <tr>
                     <xsl:apply-templates select="//excerpt/verb"/>
                 </tr>
             </table>
                
                <h3>Prep</h3>
                 <table>
                     <tr>
                         <xsl:apply-templates select="//excerpt/prep"/>
                     </tr>
                 </table>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="excerpt/gender">
        <tr>
            <td><xsl:apply-templates select="@agree"/></td>  
        </tr>
    </xsl:template>
    
    <xsl:template match="excerpt/verb">
        <tr>
            <td><xsl:apply-templates select="@prefix"/></td>  
        </tr>
    </xsl:template>
    
    <xsl:template match="excerpt/prep">
        <tr>
            <td><xsl:apply-templates select="@connect"/></td>  
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
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
                <title>Amman</title>
            </head>
            <body>
                <h3>Gender Agreement</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Yes</th>
                        <th>No</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt" mode="gender"/>
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
    
    <xsl:template match="excerpt" mode="gender">
        <tr>
            <td><xsl:value-of select="position()"/></td> 
            <td><xsl:value-of select="count(gender[@agree='y'])"/></td>  
            <td><xsl:value-of select="count(gender[@agree='n'])"/></td> 
        </tr>
        <xsl:if test="position() = last()">
            <tr>
                <td>Total</td>
                <td><xsl:value-of select="count(//gender[@agree='y'])"/></td>
                <td><xsl:value-of select="count(//gender[@agree='n'])"/></td>
            </tr>
        </xsl:if>
        
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
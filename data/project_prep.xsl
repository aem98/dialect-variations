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
                <h3>Prepositions: Connected with Definite Marker</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Text</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep[@connect='y def']" mode="y_def"/>
                </table>
                
                <h3>Prepositions: Connected without Definite Marker</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Text</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep[@connect='y indef']" mode="y_indef"/>
                </table> 
                
                <h3>Prepositions: Unconnected with Definite Marker</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Text</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep[@connect='n def']" mode="n_def"/>
                </table> 
                
                <h3>Prepositions: Unconnected with Indefinite Marker</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Text</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt/prep[@connect='n indef']" mode="n_indef"/>
                </table> 
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="prep" mode="y_def">
        <tr>
            <td><xsl:value-of select="parent::excerpt/count(preceding-sibling::excerpt) + 1"/></td>
            <td><xsl:apply-templates/></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="prep" mode="y_indef">
        <tr>
            <td><xsl:value-of select="parent::excerpt/count(preceding-sibling::excerpt) + 1"/></td>
            <td><xsl:apply-templates/></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="prep" mode="n_def">
        <tr>
            <td><xsl:value-of select="parent::excerpt/count(preceding-sibling::excerpt) + 1"/></td>
            <td><xsl:apply-templates/></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="prep" mode="n_indef">
        <tr>
            <td><xsl:value-of select="parent::excerpt/count(preceding-sibling::excerpt) + 1"/></td>
            <td><xsl:apply-templates/></td>
        </tr>
    </xsl:template>
    
    
</xsl:stylesheet>
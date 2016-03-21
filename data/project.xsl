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
                        <th>Excerpt Number</th>
                        <th>Yes (plain verb)</th>
                        <th>No (plain verb)</th>
                        <th>Yes (3m)</th>
                        <th>No (3m)</th>
                        <th>Yes (future)</th>
                        <th>No (future)</th>
                        <th>Yes (past)</th>
                        <th>No (past)</th>
                        <th>Yes (knt)</th>
                        <th>No (knt)</th>
                        <th>Yes (negation)</th>
                        <th>No (negation)</th>
                        <th>Yes (second verb)</th>
                        <th>No (second verb)</th>
                        <th>Yes (participle)</th>
                        <th>No (participle)</th>
                        <th>Yes (auxillary)</th>
                        <th>No (auxillary)</th>
                 </tr>
                    <xsl:apply-templates select="//excerpt" mode="verb_1"/>
             </table>
                
                <h3>Verb Totals</h3>
                <table>
                    <tr>
                        <th>Excerpt Number</th>
                        <th>Yes (plain verb)</th>
                        <th>No (plain verb)</th>
                        <th>Yes (3m)</th>
                        <th>No (3m)</th>
                        <th>Yes (future)</th>
                        <th>No (future)</th>
                        <th>Yes (past)</th>
                        <th>No (past)</th>
                        <th>Yes (knt)</th>
                        <th>No (knt)</th>
                        <th>Yes (negation)</th>
                        <th>No (negation)</th>
                        <th>Yes (second verb)</th>
                        <th>No (second verb)</th>
                        <th>Yes (participle)</th>
                        <th>No (participle)</th>
                        <th>Yes (auxillary)</th>
                        <th>No (auxillary)</th>
                    </tr>
                    <xsl:apply-templates select="//excerpt" mode="verb_2"/>
                </table>
                
                <h3>Prep</h3>
                 <table>
                     <tr>
                         <th>Excerpt Number</th>
                         <th>Connected (Def)</th>
                         <th>Connected (Indef)</th>
                         <th>Unconnected (Def)</th>
                         <th>Unconncected (Indef)</th>
                     </tr>
                     <xsl:apply-templates select="//excerpt" mode="prep_1"/>
                 </table>
                
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
    
    <xsl:template match="excerpt" mode="verb_1">
        <tr>
            <td><xsl:value-of select="position()"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y'])"/></td>  
            <td><xsl:value-of select="count(verb[@prefix='n'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y 3m'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n 3m'])"/></td>
            <td><xsl:value-of select="count(verb[@prefix='y future'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n future'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y past'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n past'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y knt'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n knt'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y neg'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y neg'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y 2nd'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n 2nd'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y part'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n part'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='y aux'])"/></td> 
            <td><xsl:value-of select="count(verb[@prefix='n aux'])"/></td> 
        </tr>
        <xsl:if test="position() = last()">
            <tr>
                <td>Total</td>
                <td><xsl:value-of select="count(//verb[@prefix='y'])"/></td>  
                <td><xsl:value-of select="count(//verb[@prefix='n'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y 3m'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n 3m'])"/></td>
                <td><xsl:value-of select="count(//verb[@prefix='y future'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n future'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y past'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n past'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y knt'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n knt'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y neg'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y neg'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y 2nd'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n 2nd'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y part'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n part'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y aux'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n aux'])"/></td>
            </tr>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="excerpt" mode="verb_2">
        <xsl:if test="position() = last()">
            <tr>
                <td>Total</td>
                <td><xsl:value-of select="count(//verb[@prefix='y'])"/></td>  
                <td><xsl:value-of select="count(//verb[@prefix='n'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y 3m'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n 3m'])"/></td>
                <td><xsl:value-of select="count(//verb[@prefix='y future'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n future'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y past'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n past'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y knt'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n knt'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y neg'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y neg'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y 2nd'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n 2nd'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y part'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n part'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='y aux'])"/></td> 
                <td><xsl:value-of select="count(//verb[@prefix='n aux'])"/></td>
            </tr>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="excerpt" mode="prep_1">
        <tr>
            <td><xsl:value-of select="position()"/></td> 
            <td><xsl:value-of select="count(prep[@connect='y def'])"/></td>
            <td><xsl:value-of select="count(prep[@connect='n def'])"/></td>
            <td><xsl:value-of select="count(prep[@connect='y indef'])"/></td>
            <td><xsl:value-of select="count(prep[@connect='n indef'])"/></td>
        </tr>
        
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
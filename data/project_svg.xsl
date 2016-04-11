<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg"
    version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:variable name="verb_y" select="count(//verb[@prefix='y'])"/>
        <xsl:variable name="verb_n" select="count(//verb[@prefix='n'])"/>
        <xsl:variable name="pert_y" select="$verb_y div ($verb_y + $verb_n)*100"/>
        
        <xsl:variable name="verb_y_3m" select="count(//verb[@prefix='y 3m'])"/>
        <xsl:variable name="verb_n_3m" select="count(//verb[@prefix='n 3m'])"/>
        <xsl:variable name="pert_y_3m" select="$verb_y_3m div ($verb_y_3m + $verb_n_3m)*100"/>
        
        <xsl:variable name="verb_y_future" select="count(//verb[@prefix='y future'])"/>
        <xsl:variable name="verb_n_future" select="count(//verb[@prefix='n future'])"/>
        <xsl:variable name="pert_y_future" select="$verb_y_future div ($verb_y_future + $verb_n_future)*100"/>
        
        <xsl:variable name="verb_y_past" select="count(//verb[@prefix='y past'])"/>
        <xsl:variable name="verb_n_past" select="count(//verb[@prefix='n past'])"/>
        <xsl:variable name="pert_y_past" select="$verb_y_past div ($verb_y_past + $verb_n_past)*100"/>
        
        <xsl:variable name="verb_y_knt" select="count(//verb[@prefix='y knt'])"/>
        <xsl:variable name="verb_n_knt" select="count(//verb[@prefix='n knt'])"/>
        <xsl:variable name="pert_y_knt" select="$verb_y_knt div ($verb_y_knt + $verb_n_knt)*100"/>
        
        <xsl:variable name="verb_y_neg" select="count(//verb[@prefix='y neg'])"/>
        <xsl:variable name="verb_n_neg" select="count(//verb[@prefix='n neg'])"/>
        <xsl:variable name="pert_y_neg" select="$verb_y_neg div ($verb_y_neg + $verb_n_neg)*100"/>
        
        <svg height="375">
            <g transform="translate(30, 330)">
                <line x1="20" x2="20" y1="0" y2="-320" stroke="black" stroke-width="1"/>
                <line x1="20" x2="1550" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <line x1="{20}" x2="1550" y1="-150" y2="-150" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <text x="10" y="5" text-anchor="end">0%</text>
                <text x="10" y="-145" text-anchor="end">50%</text>
                <text x="10" y="-295" text-anchor="end">100%</text>
            <rect x='30' y='-300' height='300' fill='blue' width='20' stroke='black'/>    
            <rect x='30' y='-{$pert_y *3}' height='{$pert_y *3}' fill='red' width='20' stroke='black'/>
            <rect x='60' y='-300' height='300' fill='blue' width='20' stroke='black'/>    
            <rect x='60' y='-{$pert_y_3m *3}' height='{$pert_y_3m *3}' fill='red' width='20' stroke='black'/>
            <rect x='90' y='-300' height='300' fill='blue' width='20' stroke='black'/>    
            <rect x='90' y='-{$pert_y_future *3}' height='{$pert_y_future *3}' fill='red' width='20' stroke='black'/>
            <rect x='120' y='-300' height='300' fill='blue' width='20' stroke='black'/>    
            <rect x='120' y='-{$pert_y_past *3}' height='{$pert_y_past *3}' fill='red' width='20' stroke='black'/>
            <rect x='150' y='-300' height='300' fill='blue' width='20' stroke='black'/>    
            <rect x='150' y='-{$pert_y_knt *3}' height='{$pert_y_knt *3}' fill='red' width='20' stroke='black'/>
            <rect x='150' y='-300' height='300' fill='blue' width='20' stroke='black'/>    
            <rect x='150' y='-{$pert_y_neg *3}' height='{$pert_y_neg *3}' fill='red' width='20' stroke='black'/>
            </g>
        </svg>
    </xsl:template>
   
    
</xsl:stylesheet>
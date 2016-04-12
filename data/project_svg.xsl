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
        
        <xsl:variable name="verb_y_2nd" select="count(//verb[@prefix='y 2nd'])"/>
        <xsl:variable name="verb_n_2nd" select="count(//verb[@prefix='n 2nd'])"/>
        <xsl:variable name="pert_y_2nd" select="$verb_y_2nd div ($verb_y_2nd + $verb_n_2nd)*100"/>
        
        <xsl:variable name="verb_y_part" select="count(//verb[@prefix='y part'])"/>
        <xsl:variable name="verb_n_part" select="count(//verb[@prefix='n part'])"/>
        <xsl:variable name="pert_y_part" select="$verb_y_part div ($verb_y_part + $verb_n_part)*100"/>
        
        <xsl:variable name="verb_y_aux" select="count(//verb[@prefix='y aux'])"/>
        <xsl:variable name="verb_n_aux" select="count(//verb[@prefix='n aux'])"/>
        <xsl:variable name="pert_y_aux" select="$verb_y_aux div ($verb_y_aux + $verb_n_aux)*100"/>
        
        <svg height="375">
            <g transform="translate(30, 330)">
                <line x1="20" x2="20" y1="0" y2="-320" stroke="black" stroke-width="1"/>
                <line x1="20" x2="700" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <line x1="{20}" x2="700" y1="-150" y2="-150" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <text x="10" y="5" text-anchor="end">0%</text>
                <text x="10" y="-145" text-anchor="end">50%</text>
                <text x="10" y="-295" text-anchor="end">100%</text>
            <rect x='40' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='40' y='-{$pert_y *3}' height='{$pert_y *3}' fill='red' width='50' stroke='black'/>
                <text x='40' y='25'>plain</text>
            <rect x='110' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='110' y='-{$pert_y_3m *3}' height='{$pert_y_3m *3}' fill='red' width='50' stroke='black'/>
                <text x='110' y='25'>3m</text>
            <rect x='180' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='180' y='-{$pert_y_future *3}' height='{$pert_y_future *3}' fill='red' width='50' stroke='black'/>
                <text x='180' y='25'>future</text>
            <rect x='250' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='250' y='-{$pert_y_past *3}' height='{$pert_y_past *3}' fill='red' width='50' stroke='black'/>
                <text x='250' y='25'>past</text>
            <rect x='320' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='320' y='-{$pert_y_knt *3}' height='{$pert_y_knt *3}' fill='red' width='50' stroke='black'/>
                <text x='320' y='25'>knt</text>
            <rect x='390' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='390' y='-{$pert_y_neg *3}' height='{$pert_y_neg *3}' fill='red' width='50' stroke='black'/>
                <text x='390' y='25'>negation</text>
            <rect x='460' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='460' y='-{$pert_y_2nd *3}' height='{$pert_y_2nd *3}' fill='red' width='50' stroke='black'/>
                <text x='460' y='25'>2nd verb</text>
            <rect x='530' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='530' y='-{$pert_y_part *3}' height='{$pert_y_part *3}' fill='red' width='50' stroke='black'/>
                <text x='530' y='25'>participle</text>
            <rect x='600' y='-300' height='300' fill='blue' width='50' stroke='black'/>    
            <rect x='600' y='-{$pert_y_aux *3}' height='{$pert_y_aux *3}' fill='red' width='50' stroke='black'/>
                <text x='600' y='25'>auxillery</text>
            </g>
        </svg>
    </xsl:template>
   
    
</xsl:stylesheet>
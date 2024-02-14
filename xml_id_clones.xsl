<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">        
        
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="*[@xml:id = preceding::*/@xml:id or @xml:id = following::*/@xml:id]">
        <xsl:message>
            xml:id doppelt vergeben: <xsl:value-of select="@xml:id"/>
        </xsl:message>
    </xsl:template>
    
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- 001 Identity transform -->
    <xsl:variable name="dateTime">
        <xsl:value-of select="current-dateTime()"/>
    </xsl:variable>
    
    
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="messageId">
        <xsl:variable name="id">
            <xsl:value-of select="concat('OTCCallorPutSpread_', $dateTime)"/>
        </xsl:variable>
        <messageId messageIdScheme="http://www.drkw.com/messageId/OTC">
            <xsl:value-of select="$id"/>
        </messageId>
    </xsl:template>
    
    <xsl:template match="creationTimestamp">
        <creationTimestamp><xsl:value-of select="$dateTime"/></creationTimestamp>
    </xsl:template>
    
    <xsl:template match="correlationId">
        <xsl:variable name="id">
            <xsl:value-of select="concat('OTCCallorPutSpread_', $dateTime)"/>
        </xsl:variable>
        <correlationId correlationIdScheme="http://www.drkw.com/conversationId/OTC">
            <xsl:value-of select="$id"/>
        </correlationId>
    </xsl:template>
    
    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:param name="text-encoding" as="xs:string" select="'iso-8859-1'"/>
    <xsl:param name="text-uri" as="xs:string" select="'file:///challenge/web-serveur/ch50/index.php'"/>

    <xsl:template name="text2xml">
        <xsl:variable name="text" select="unparsed-text($text-uri, $text-encoding)"/>
        <xsl:analyze-string select="$text" regex="!(.*)\n(.*)">
            <xsl:matching-substring>
                <xsl:element name="{normalize-space(regex-group(1))}">
                    <xsl:value-of select="normalize-space(regex-group(2))"/>
                </xsl:element>
            </xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:template>

    <xsl:template match="/">
        <document>
            <xsl:choose>
                <xsl:when test="unparsed-text-available($text-uri, $text-encoding)">
                    <xsl:call-template name="text2xml"/>                                
                </xsl:when>
                <xsl:otherwise>
                    <xsl:variable name="error">
                        <xsl:text>Error reading "</xsl:text>
                        <xsl:value-of select="$text-uri"/>
                        <xsl:text>" (encoding "</xsl:text>
                        <xsl:value-of select="$text-encoding"/>
                        <xsl:text>").</xsl:text>
                    </xsl:variable>
                    <xsl:message><xsl:value-of select="$error"/></xsl:message>
                    <xsl:value-of select="$error"/>
                </xsl:otherwise>
            </xsl:choose>
        </document>
    </xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>

 <xsl:variable name="vText" select=
 "replace(unparsed-text('file:///challenge/web-serveur/ch50/index.php'),'\r','')"/>

 <xsl:template match="/">
  <document>
      <xsl:analyze-string select="$vText" regex="(!(.+?)\n([^\n]+))+">
       <xsl:matching-substring>
         <xsl:element name="{regex-group(2)}">
                <xsl:sequence select="regex-group(3)"/>
         </xsl:element>
       </xsl:matching-substring>
       <xsl:non-matching-substring><xsl:sequence select="."/></xsl:non-matching-substring>
      </xsl:analyze-string>
  </document>
 </xsl:template>
</xsl:stylesheet>
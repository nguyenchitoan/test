<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:value-of select="document('/challenge/web-serveur/ch50/index.php')"/>
</xsl:template>
</xsl:stylesheet>
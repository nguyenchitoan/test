<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl">
	
	<xsl:output method="html"/>
	<xsl:template match="/">
		<xsl:variable name="dir" select="/challenge/web-serveur/ch50/"></xsl:variable>
		
		<xsl:value-of select="php:function('scandir','$dir')" />
	</xsl:template>
</xsl:stylesheet>

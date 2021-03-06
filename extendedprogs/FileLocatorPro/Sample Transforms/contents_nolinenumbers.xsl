<?xml version="1.0"?>
<!-- No line numbers Transform
    Copyright (C) Mythicsoft Ltd 2008. All rights reserved.
    
    Produces output that contains just the found contents without any line numbers.
    -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
			xmlns:rslt="http://www.mythicsoft.com/FileLocator_16Aug2005"
           version="1.0">

  <xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:apply-templates select="//rslt:line[@rslt:linetype='found']"/>
  </xsl:template>

  <xsl:template match="rslt:line">
    <xsl:value-of select="rslt:text"/>
    <xsl:text>&#13;&#10;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
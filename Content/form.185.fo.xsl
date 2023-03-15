<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xml:lang="en" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:d = "http://docbook.org/ns/docbook" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:exsl="http://exslt.org/common"  xmlns:egonp="http://schemas.gov.sk/form/App.GeneralAgenda/1.9" exclude-result-prefixes="d" version="1.0">
  <xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">      
		<fo:layout-master-set>
    <fo:simple-page-master master-name="A4"
      page-height="842px" page-width="595px"
      margin-top="10px" margin-bottom="10px"
      margin-left="10px" margin-right="10px">
      <fo:region-body margin-bottom="20mm"/>
      <fo:region-after region-name="footer" extent="10mm"/>
    </fo:simple-page-master>
    <fo:page-sequence-master master-name="document">
      <fo:repeatable-page-master-alternatives>
        <fo:conditional-page-master-reference master-reference="A4"/>
      </fo:repeatable-page-master-alternatives>
    </fo:page-sequence-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="document" font-family="Arial">
    <fo:static-content flow-name="footer">
      <fo:block text-align="end"><fo:page-number/></fo:block>
    </fo:static-content>
          <fo:flow flow-name="xsl-region-body">		
						<fo:block font-size='20pt' text-align='center'>Všeobecná agenda</fo:block><fo:block color='white'>|</fo:block><fo:block/>
					     				
				<xsl:apply-templates/>
			</fo:flow>
           </fo:page-sequence>
          </fo:root>
         </xsl:template>
		 <xsl:template name="string-replace-all">
            <xsl:param name="text"/>
            <xsl:param name="replace"/>
            <xsl:param name="by"/>
            <xsl:choose>
            <xsl:when test="contains($text, $replace)">
            <xsl:value-of select="substring-before($text,$replace)"/>
            <xsl:value-of select="$by"/>
            <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="substring-after($text,$replace)"/>
            <xsl:with-param name="replace" select="$replace"/>
            <xsl:with-param name="by" select="$by" />
            </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
            <xsl:value-of select="$text"/>
            </xsl:otherwise>
            </xsl:choose>
            </xsl:template>
							<xsl:template match="egonp:GeneralAgenda">
<fo:block start-indent='5mm'>
<fo:block background-color='black' color='white'>Všeobecná agenda</fo:block><fo:block color='white'>|</fo:block><fo:table space-before='2mm'><fo:table-column column-width='285px'/><fo:table-column/><fo:table-body><fo:table-row><fo:table-cell><fo:block >Predmet</fo:block></fo:table-cell><fo:table-cell border-width='0.6pt' border-style='solid' background-color='white' padding='1pt'><fo:block><xsl:call-template name="string-replace-all"><xsl:with-param name="text" select="egonp:subject" /><xsl:with-param name="replace" select="'%0A'" /><xsl:with-param name="by" select="'&#13;&#10;'" /></xsl:call-template><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body></fo:table><fo:block color='white'>|</fo:block>
<fo:table space-before='2mm'><fo:table-column column-width='285px'/><fo:table-column/><fo:table-body><fo:table-row><fo:table-cell><fo:block >Text</fo:block></fo:table-cell><fo:table-cell height='100px' border-width='0.6pt' border-style='solid' background-color='white' padding='1pt'><fo:block hyphenate='true' linefeed-treatment='preserve'><xsl:call-template name="string-replace-all"><xsl:with-param name="text" select="egonp:text" /><xsl:with-param name="replace" select="'%0A'" /><xsl:with-param name="by" select="'&#13;&#10;'" /></xsl:call-template></fo:block></fo:table-cell></fo:table-row></fo:table-body></fo:table><fo:block color='white'>|</fo:block>
</fo:block>
</xsl:template>
	
        </xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:egonp="http://schemas.gov.sk/form/App.GeneralAgenda/1.9" exclude-result-prefixes="egonp">
<xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="no" omit-xml-declaration="yes"/>
<xsl:template match="/">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>Všeobecná agenda</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="language" content="sk-SK"/>
<style type="text/css">
body { 
	font-family: 'Open Sans', 'Segoe UI', 'Trebuchet MS', 'Geneva CE', lucida, sans-serif;
	background : #ffffff !important ;
}
.ui-tabs {
	padding: .2em;
	position: relative;
	zoom: 1;
}								
.clear { clear: both; height: 0;}
.layoutMain {
	margin: 0px auto;
	padding: 5px 5px 5px 5px;	
}				
.layoutRow { margin-bottom: 5px; }				
.caption { /*width: 100%; border-bottom: solid 1px black;*/ }
.nocaption &gt; .caption { border: 0px !important; }
.nocaption &gt; .caption span {
	background: none !important;
	display: none;
} 
.caption .title { padding-left: 5px; }
.headercorrection {	
	margin: 0px;
    font-size : 1em;
    font-weight: bold;
}				
.labelVis {
	float: left;
	font-weight: bold;
	font-family: 'Open Sans', 'Segoe UI', 'Trebuchet MS', 'Geneva CE', lucida, sans-serif;
	line-height: 25px;
	margin: 0px 18px 0px 0px;
	padding-left: 3px;
	width: 190px;
	word-wrap: break-word;
    font-size: 0.8em;
}
.contentVis {    	     
	float: left;	
	line-height: 25px;
	margin: 0px;
	padding: 0px;
	vertical-align: top;
    font-size: 0.75em;			
}
.wordwrap { 
    white-space: pre-wrap;      
    white-space: -moz-pre-wrap; 
    white-space: -pre-wrap;     
    white-space: -o-pre-wrap;   
    word-wrap: break-word;      
}	
.ui-widget-content {
	background : 50% 50% repeat-x #ffffff;
	border : #d4d4d4 solid 2px;
	color : #4f4e4e;
	border-radius : 3px;
}
.ui-widget-header {
	cursor : pointer;
	font-size : 0.8em;
	color : #494949;
	padding-left : 2px;
	border : #eae9e8 solid 1px;
	background-color : #eae9e8;
	margin-bottom: 3px;
	border-radius : 3px;
}			
</style>
</head>
<body>
<div id="main" class="layoutMain">
<xsl:apply-templates/>
</div>
</body>
</html>
</xsl:template>
<xsl:template match="/egonp:GeneralAgenda">
<div class="layoutRow ui-tabs ui-widget-content" >
<div class="caption ui-widget-header">
<div class="headercorrection">Všeobecná agenda</div>
</div>
<xsl:apply-templates select="./egonp:subject"/>
<xsl:apply-templates select="./egonp:text"/>
</div>
</xsl:template>
<xsl:template match="egonp:GeneralAgenda/egonp:subject">
<xsl:if test="./text()">
<div><label class="labelVis">Predmet: </label><span class="contentVis wordwrap"><xsl:call-template name="string-replace-all"><xsl:with-param name="text" select="." /><xsl:with-param name="replace" select="'%0A'" /><xsl:with-param name="by" select="'&#13;&#10;'" /></xsl:call-template></span></div><div class="clear">&#xa0;</div></xsl:if>
</xsl:template>
<xsl:template match="egonp:GeneralAgenda/egonp:text">
<xsl:if test="./text()">
<div><label class="labelVis">Text: </label><span class="contentVis wordwrap"><xsl:call-template name="string-replace-all"><xsl:with-param name="text" select="." /><xsl:with-param name="replace" select="'%0A'" /><xsl:with-param name="by" select="'&#13;&#10;'" /></xsl:call-template></span></div><div class="clear">&#xa0;</div></xsl:if>
</xsl:template>
<xsl:template name="formatToSkDate">
<xsl:param name="date" />
<xsl:variable name="dateString" select="string($date)" />
<xsl:choose>
<xsl:when test="$dateString != '' and string-length($dateString)=10 and string(number(substring($dateString, 1, 4))) != 'NaN' ">
<xsl:value-of select="concat(substring($dateString, 9, 2), '.', substring($dateString, 6, 2), '.', substring($dateString, 1, 4))" />
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$dateString"></xsl:value-of>
</xsl:otherwise>
</xsl:choose>
</xsl:template>
<xsl:template name="booleanCheckboxToString">
<xsl:param name="boolValue" />
<xsl:variable name="boolValueString" select="string($boolValue)" />
<xsl:choose>
<xsl:when test="$boolValueString = 'true' ">
<xsl:text>Áno</xsl:text>
</xsl:when>
<xsl:when test="$boolValueString = 'false' ">
<xsl:text>Nie</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$boolValueString"></xsl:value-of>
</xsl:otherwise>
</xsl:choose>
</xsl:template>
<xsl:template name="formatTimeTrimMinutes">
<xsl:param name="time" />
<xsl:variable name="timeString" select="string($time)" />
<xsl:if test="$timeString != ''">
<xsl:value-of select="substring($timeString, 1, 5)" />
</xsl:if>
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
</xsl:stylesheet>


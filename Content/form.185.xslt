<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#xa0;">]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:egonp="http://schemas.gov.sk/form/App.GeneralAgenda/1.9" exclude-result-prefixes="egonp"> 
<xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="no" omit-xml-declaration="yes"/>
<xsl:template match="/">
<html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=8" />
	<title>Všeobecná agenda</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="language" content="sk-SK" />
		<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/jquery-ui.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/jquery.multiselect.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/jquery.multiselect.filter.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/base.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/ego.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/treeselect.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/chosentree.css" rel="stylesheet" type="text/css"/>
	<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Styles/p_upvs.css" rel="stylesheet" type="text/css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400italic,bold,600&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery-migrate.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.mask.min.js" type="text/javascript"></script>	
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery-ui.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.multiselect.filter.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.multiselect.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.validate.min.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.validate.customRules.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/ego.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.form.plugins.js" type="text/javascript"></script>			
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/ego.statusDialog.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.chosentree.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/jquery.treeselect.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/fillerSaver.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/wrapper.js" type="text/javascript"></script>
	<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Scripts/p_upvs.js" type="text/javascript"></script>
		<script type="text/javascript">
		var projectType = 'UPVS';
		
					<xsl:text disable-output-escaping="yes">
					/* <![CDATA[ */
		
		
		
		
		function GetExternalResourceIndex(resourcetype) {
  switch (resourcetype) {
    default:
      return null;
  }
  return null;
}
function GetExternalResource(resourcetype, index) {
  switch (resourcetype) {
    default:
      return null;
  }
  return null;
}

		function SetDefaultValue(key, value) {
  if (value == '' || key == '') {
    return;
	}
}
function GetDefaultValue() {
  var retString = '';
  return retString;
}

				function InitConditionalRules(context, sid) {
			if (sid == null) {

			
			
			
			
			
			}
		}
						

		var validatorObject = null;
		
		function InitValidation() {
			validatorObject = $("#GeneralAgenda").validate({
							errorLabelContainer: $("#errorsContainer"),
				wrapper: "li",
				onkeyup: false,
				onclick: false,
		        ignore: ".disableValidators",
								rules: {
			  		
subject: {required:true},

text: {required:true}

			  	},
				messages: {			
			   		
subject: {required:"Prosím, vyplňte pole 'Predmet'!"},

text: {required:"Prosím, vyplňte pole 'Text'!"}
	  	
			  	}
			});
	  	}
	/* ]]> */
					</xsl:text>
			</script>
	<style type="text/css">
		.textBox4 INPUT  {  width:660px; }  .textBox4 TEXTAREA {  width:662px; }

	</style>
</head>
<body>
	<noscript><p class="noscript">Pre kompletnú funkčnosť aplikácie je potrebné povoliť JavaScript</p></noscript>
	<div id="errorsContainerDiv" class="errorsContainerDiv"> <ul id="errorsContainer" class="errorsContainer"><li/></ul> </div>
	<form id="GeneralAgenda" action="">
		<div id="main" class="layoutMain ui-widget-content">	
						 
			<!-- LF <xsl:for-each select="/egonp:GeneralAgenda/egonp:PrvaSekcia"> -->		
		<div id="layoutRow736" class="ui-tabs ui-widget-content   "   title="" style="margin-bottom: 5px;" >   <!-- LF z class vymazane layoutRow a pridane style -->
						<!-- LF <input type="hidden" name="PrvaSekcia" /> -->
							<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Všeobecná agenda">Všeobecná agenda			</div>
			<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
				<div id="layoutRowContentlayoutRow736" class="columns">
				
				<div id="layoutColumn975" class="column first" >
											
<div id="layoutCell1978" class="cell " >		
			
		<label class="fieldLabel" title="" for="subject"  style="width:100px;"><xsl:text disable-output-escaping="yes">Predmet </xsl:text><em>*</em> </label><span class="fieldContent"><input id="subject" name="subject" title="" type="text" class="xsd_string textBox " spellcheck="true" maxlength="400" size="190"  alt="" value="" style="width:662px;" ><xsl:if test="boolean(./*[name() = 'subject']/@isReadOnly = 'true')"><xsl:attribute name="readonly">readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'subject']"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'subject']"/></xsl:attribute></xsl:if></input>
</span>	
		<div class="clear"> </div>
</div>							
											
<div id="layoutCell1977" class="cell  textBox4" >		
			
		<label class="fieldLabel" title="" for="text"  style="width:100px;"><xsl:text disable-output-escaping="yes">Text </xsl:text><em>*</em> </label><span class="fieldContent"><textarea id="text" name="text" title="" class="xsd_string textArea " spellcheck="true"  cols="100" rows="22"  ><xsl:if test="boolean(./*[name() = 'text']/@isReadOnly = 'true')"><xsl:attribute name="readonly">readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:choose><xsl:when test="./*[name() = 'text']"><xsl:value-of select="./*[name() = 'text']"/></xsl:when><xsl:otherwise><xsl:text></xsl:text></xsl:otherwise></xsl:choose></textarea>
</span>	
						<div class="info">
							<div class="dialog-modal" title="Nápoveda">
								<p>
									<style type="text/css">
										p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; } 
										body { font-family: 'Verdana';font-size: 16px; } 
										.p_6AAD5060 { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; } 
										.s_A73DE0BF { font-family: 'Arial';font-size: 14.6666666666667px; }
										<!-- .s_9613C8BC { font-family: 'Arial';font-size: 13.3333333333333px;color: #000000; } --> 
									</style>
									<p class="p_6AAD5060">
										<span class="s_A73DE0BF">Uveďte všetky náležitosti elektronického podania 
										(napr.: adresa odosielateľa, vec).
										Pokiaľ sa vaše podanie viaže k už prebiehajúcemu
										konaniu uveďte aj číslo tohto konania
										alebo spisovú značku.
										</span>
									</p>
									<!-- <p class="p_6AAD5060">
										<span class="s_9613C8BC"> </span>
									</p> -->
								</p>
							</div>
						</div>
		<div class="clear"> </div>
</div>							
						
				</div>	
				
			<div class="clear"> </div>
		</div>
			</div>	
			<!-- </xsl:for-each> -->	
					
			<div id="buttonsPlaceholder">
									<input id="validateForm" type="button" class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="Skontrolovať" alt="Skontrolovať" accesskey="S" />
										<input id="clearForm" type="button" class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="Vyčisti"  alt="Vyčisti" accesskey="V" />
					<input id="loadFormXml" type="button" class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="Načítať"  alt="Načítať" accesskey="N" />
					<input id="saveToXml" type="button" class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="Uložiť"  alt="Uložiť" accesskey="U" />
									<input id="cancelForm" type="button" class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="Zrušiť"  alt="Zrušiť" accesskey="Z" />			
			</div>		
		</div>
		<div id="statusDialog" title="Status">
			<img id="statusLoader" src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.15/Images/ajax-loader.png" alt="Čakajte prosím" />
			<p id="statusMessage" class="statusMessage"></p>
		</div>
		<div id="savedFormsContainer" class="layoutMain ui-widget-content" style="display:none">
		  <div id="savedFormsContainerRow" class="layoutRow ui-tabs ui-widget-content"  title="" >
			<input type="hidden" name="Basic" />
			<div class="caption ui-widget-header">
			  <div class="headercorrection" title="Uložené formuláre">Uložené formuláre</div>
			  <span class="arrow ui-icon ui-icon-carat-1-n"></span>
			</div>
			<div id="layoutRowSavedForms" class="columns">
			  <div id="lcolumnSavedForms" class="column first" >
				<div id="lcellSavedForms" class="cell">          				  
				</div>				
			  </div>
			  <div class="clear"> </div>
			</div>
		  </div>
		</div>
		<div id="mtd_formMetaData" style="display:none"><span id="mtd_version">1.9</span><span id="mtd_idp">484</span><span id="mtd_namespace">http://schemas.gov.sk/form/App.GeneralAgenda/1.9</span></div>
	</form>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

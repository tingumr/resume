<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="personalInfo" name="header">
<div id="header" hidden="true">
	<div id="headerinfo">
		<div class="info">
			<span class="value">
				<xsl:value-of select="/resume/personalInfo/name" /> 
			</span>
			<span class="value">
				<label>Phone</label><xsl:value-of select="/resume/personalInfo/phone" /> 
			</span>
			<span class="value">
				<label>Email</label><xsl:value-of select="/resume/personalInfo/email" />
			</span>
		</div>

	</div>

</div>
</xsl:template>
</xsl:stylesheet>

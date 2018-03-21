<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="personalInfo" name="header">
<div id="header">
	<div id="headerinfo">
		<div class="info">
			<span class="value">
				<xsl:value-of select="/resume/personalInfo/name" />
			</span>
		</div>
		<!--
		<div class="info">
			<span class="value">
				ATG Consultant
			</span>

		</div>
		 -->

		<div class="info">
			<span class="hlabel">
			Phone
			</span>

			<span class="value">
				<xsl:value-of select="/resume/personalInfo/phone" />
			</span>


		</div>

		<div class="info">
			<span class="hlabel">
			Email
			</span>

			<span class="value">
				<xsl:value-of select="/resume/personalInfo/email" />
			</span>
		</div>


	</div>

		<div class="sun_logo">

		</div>
		<div>
		<br />
		<br />
		</div>
</div>
</xsl:template>
</xsl:stylesheet>

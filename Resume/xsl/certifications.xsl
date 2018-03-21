<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="certifications" name="certifications">
<div class="certifications">
<div class="heading2">
Certifications
</div>


	<xsl:for-each select = "/resume/certifications/certification">
			<div class="info">
			<span class="edu_course_value">
			<xsl:value-of select="name" />
			</span>

			</div>
			<div class="info">
			<span class="value">
			<!--<xsl:value-of select="date" />-->
			</span>

			</div>
	</xsl:for-each>
</div>
</xsl:template>

</xsl:stylesheet>

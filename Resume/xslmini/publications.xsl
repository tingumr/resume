<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:template match="publications" name="publications">
<div class="publications">
<div class="heading2">
Papers Published
</div>
<xsl:for-each select = "publication">
			<div class="info">
			<span class="label">
			Title
			</span>
			
			<span class="value">
			<xsl:value-of select="title" />
			</span>
		
			</div>
			<div class="info">
			<span class="label">
			URL
			</span>
			
			<span class="value">
			<xsl:value-of select="URL" />
			</span>
		
			</div>
	</xsl:for-each>
</div>

</xsl:template>



</xsl:stylesheet>





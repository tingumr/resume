<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="summary" name="summary">
		<div id="summary">
			<div class="heading2">
				Summary
			</div>
			
			<ul>
			<xsl:for-each select = "info">
				<li>
				<span class="bulleted_info">
					<xsl:value-of select="." />	
				</span>
				</li>
			</xsl:for-each>
			</ul>
					
		</div>
	</xsl:template>


</xsl:stylesheet>





<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="skills" name="skills">
<div id="skills">
	<div class="heading2">
				Skills
			</div>

	<xsl:for-each select = "technologyArea">
		<div class="technologyArea">
			<div class="heading3">
				<xsl:value-of select="name" />
			</div>				
			
			<div class="technology">
				<xsl:for-each select = "technology">
					<span class="technology_name">
						<xsl:value-of select="name" />


					</span>
					
					<xsl:if test = "position() != last()">, </xsl:if>
				</xsl:for-each>
			</div>
		</div>
	</xsl:for-each>

</div>
</xsl:template>
	

</xsl:stylesheet>





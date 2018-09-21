<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


   <xsl:template match="education">
      <div class="education">
         <div class="heading2">Education</div>
			
         <xsl:for-each select="course[2]">
         
         <div class="info">
			<span class="label">
			Course
			</span>
			
			<span class="edu_course_value">
			<xsl:value-of select="name" />
			</span>
		
			</div>
		
		  	
         <div class="info">
			<span class="label">
			Date
			</span>
			
			<span class="value">
			<xsl:value-of select="endDate" />
			</span>
		
			</div>
		<!--
		 
		<div class="info">
			<span class="label">
			Grade
			</span>
			
			<span class="value">
			<xsl:value-of select="grade" />
			</span>
		
			</div>	
		
		-->	
         <div class="info">
			<span class="label">
			Institution
			</span>
			
			<span class="value">
			<xsl:value-of select="institution/name" />
		
			<xsl:if test = "institution/City">
				,<xsl:value-of select="institution/City" />
			</xsl:if>
			<xsl:if test = "institution/City">
				,<xsl:value-of select="institution/State" />
			</xsl:if>
			
			</span>
		
		
			</div>
			
			
         </xsl:for-each>
      </div>
   </xsl:template>
</xsl:stylesheet>


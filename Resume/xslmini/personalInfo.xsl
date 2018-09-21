<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


   <xsl:template name="personalInfo">
      <div id="personalInfo" hidden="true">
         <div class="heading2">Contact Information</div>



         <div class="info">
            <span class="label">Name</span>

            <span class="value">
               <xsl:value-of select="/resume/personalInfo/name" />
            </span>
         </div>

         <div class="info">
            <span class="label">Phone</span>

            <span class="value">
               <xsl:value-of select="/resume/personalInfo/phone" />
            </span>
         </div>

         <div class="info">
            <span class="label">Email</span>

            <span class="value">
               <xsl:value-of select="/resume/personalInfo/email" />
            </span>
         </div>

         <!-- div class="info">
            <span class="label">Date of Birth</span>

            <span class="value">
               <xsl:value-of select="/resume/personalInfo/DOB" />
            </span>
          
         </div>
  
         <div class="info">
            <span class="label">Citizenship</span>

            <span class="value">
               <xsl:value-of select="/resume/personalInfo/citizenship" />
            </span>
         </div>
	-->
		<!-- 
         <xsl:for-each select="/resume/personalInfo/addressCommunication | /resume/personalInfo/addressPremanent">
            <xsl:call-template name="addressInfo" />
         </xsl:for-each>
          -->
      </div>
   </xsl:template>


   <xsl:template name="addressInfo">
      <div class="addressInfo">
         <div class="info">
         
         	
         	<xsl:choose>
         		<xsl:when test="name()='addressCommunication'">
         			<span class="addresslabel">Address for Communication</span>	
         		</xsl:when>
         	  
         	  <xsl:when test="name()='addressPremanent'">
         			<span class="addresslabel">Permanent Address</span>	
         		</xsl:when>
         		<xsl:otherwise>
         		 
         		</xsl:otherwise>
         	</xsl:choose>
            
<div class="info">
               <span class="avalue">
                  <xsl:for-each select="AddressLine">
            
                      <xsl:value-of select="." /> 
		      <xsl:if test="position()!=last()">
	                      <xsl:value-of select="', '" /> 
		      </xsl:if>
            
                  </xsl:for-each>
               </span>
            </div>            
            <div class="info">
					
			<span class="avalue">
				<xsl:value-of select="City" />,<xsl:value-of select="zip" />		
			</span>
		</div>	

            <div class="info">
			
			
			<span class="avalue">
				<xsl:value-of select="State" />	
			</span>
		</div>	
            
            <div class="info">
		
			<span class="avalue">
				<xsl:value-of select="Country" />	
			</span>
		</div>	
            
         </div>
      </div>
   </xsl:template>
</xsl:stylesheet>


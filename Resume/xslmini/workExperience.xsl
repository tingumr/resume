<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="workExperience" name="workExperience">
		
		<div id="workExperience">
			<div class="heading2">
				Work Experience
			</div>
			
			
			<xsl:for-each select = "experience">
				<div class="experience">
					
					<xsl:apply-templates select = "company" />

						
					<div class="info">
						<span class="label">
						Designation
						</span>
						
						<span class="evalue">
							<xsl:value-of select="designation" />
						</span>
					
					</div>
					
					<div class="info">
						<span class="label">
						Date
						</span>
						
						<span class="evalue">
							<xsl:value-of select="startDate" /> - <xsl:value-of select="endDate" />
						</span>
					
					</div>
					
					
					<xsl:for-each select = "project">
						<xsl:call-template name = "project" />
					</xsl:for-each>
					
					
					
					<xsl:if test = "extraInfo">

					<div class="extraInfo">
					<div class="heading2">
						<xsl:value-of select="./extraInfo/title" />	
						</div>
							
						<div class="info_extra">					
<ul>		
						<xsl:for-each select = "./extraInfo/info">
<li>
							<div class="bulleted_info_extra">
								<xsl:value-of select="." />
							</div>
</li>
						</xsl:for-each>
						</ul>
						</div>
					
						
					</div>
					</xsl:if>
					
					

					
					
				</div>

	<xsl:if test = "position()!=last()">
		<div class="divider1"></div>	
	</xsl:if>		
			</xsl:for-each>
			

		</div>
	
	</xsl:template>
	
	
	<xsl:template match="company">
	<div class="company">
	
		<div class="info">
			<span class="label">
			Company Name
			</span>
			
			<span class="company_name">
				<xsl:value-of select="name" />	
				<span class="company_location">
					<xsl:value-of select="addressPremanent/City" /> ,<xsl:value-of select="addressPremanent/Country" />
				</span>
			</span>
		</div>
	
		<div class="info" hidden="true">
			<span class="label">
			Location
			</span>
			
			<span class="evalue">
				<xsl:value-of select="addressPremanent/City" /> ,<xsl:value-of select="addressPremanent/Country" />
			</span>
		
		</div>
	
	</div>
	</xsl:template>


	<xsl:template name="project">
		<div class="project">
			
			<div class="info">
				<span class="label projectName">
				Project
				</span>
				
				<div class="heading3_project_mini">
				<xsl:value-of select="name"/> - <xsl:value-of select="URL" />
				</div>
			
			</div>	
			
			
			<div class="info" hidden="true"> 
				<span class="label">
				Client
				</span>
				
				<span class="evalue">
					<xsl:value-of select="client" />
				</span>
			
			</div>	
		
			<xsl:if test = "URL">
				<div class="info" hidden="true">
					<span class="label">
					URL
					</span>
					
					<span class="evalue">
						<xsl:value-of select="URL" />
					</span>
				
				</div>	
				</xsl:if>

				<div class="info">
				<div class="wlabel">
				Work Description
				</div>
				
				<div class="wevalue">
					<xsl:value-of select="description" />
				</div>
			
				</div>	

			<xsl:if test = "startDate != ''">
				<div class="info" hidden="true">
				<div class="wlabel">
				Work Period: 
				</div>
				
				<div class="wevalue">
					<xsl:value-of select="startDate" /> - <xsl:value-of select="endDate" />
				</div>
			
				</div>		
				
			</xsl:if>
				
		
			<div class="info" hidden="true">
				<div class="wlabel">
				Responsibilities
				</div>
				
				
				<div class="responsibilities">
				<ul>
					<xsl:for-each select = "responsibilities">
						<li>
						<div class="bulleted_info">
						<xsl:value-of select="." />
						</div>
						</li>
					</xsl:for-each>
					</ul>
				</div>
				
			</div>	
			
				<div class="info">
					<span class="wlabel">
					Technologies Used
					</span>
			<div class="project_technologies">		
				<xsl:for-each select = "technology">
					
					<xsl:value-of select="name" />
					<xsl:if test = "position() != last()">, </xsl:if>
						
					
				</xsl:for-each>

				</div>	
		</div>
		
		</div>
	</xsl:template>

</xsl:stylesheet>






<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:import href="xsl/header.xsl" />

   <xsl:import href="xsl/summary.xsl" />

   <xsl:import href="xsl/skills.xsl" />

   <xsl:import href="xsl/workExperience.xsl" />

   <xsl:import href="xsl/certifications.xsl" />

   <xsl:import href="xsl/publications.xsl" />

   <xsl:import href="xsl/education.xsl" />
   
   <xsl:import href="xsl/personalInfo.xsl" />

   <xsl:template match="/">
   <html>
   <head>

   	   <link rel="stylesheet" type="text/css" media="print" href="css/print/common.css" />
           <link rel="stylesheet" type="text/css" media="print" href="css/print/header.css" />
	   <link rel="stylesheet" type="text/css" media="print" href="css/print/experience.css" />
           <link rel="stylesheet" type="text/css" media="print" href="css/skills.css" />

	   <link rel="stylesheet" type="text/css" media="screen" href="css/common.css" />
           <link rel="stylesheet" type="text/css" media="screen" href="css/header.css" />
	   <link rel="stylesheet" type="text/css" media="screen" href="css/experience.css" />
           <link rel="stylesheet" type="text/css" media="screen" href="css/skills.css" />
	   <link rel="stylesheet" type="text/css" href="css/summary.css" />
	   <link rel="stylesheet" type="text/css" href="css/education.css" />
	   <link rel="stylesheet" type="text/css" href="css/address.css" />
	   <link rel="stylesheet" type="text/css" href="css/publications.css" />
   	   <link rel="stylesheet" type="text/css" href="css/certifications.css" />
       <link rel="stylesheet" type="text/css" href="css/personalInfo.css" />

               
   </head>
   <body>
   <div id="resume">
     <div style="width:100%;height:20px;"/>
      <xsl:if test="resume/personalInfo">
         <xsl:call-template name="header" />
      </xsl:if>

	<div id="summaryBlock">
      <xsl:if test="resume/summary[1]">
         <xsl:apply-templates select="resume/summary[1]" />
      </xsl:if>
	</div>
      <xsl:if test="resume/skills[1]">
         <xsl:apply-templates select="resume/skills[1]" />
      </xsl:if>

      <xsl:if test="resume/workExperience[1]">
         <xsl:apply-templates select="resume/workExperience[1]" />
      </xsl:if>

      <xsl:if test="resume/education">
         <xsl:apply-templates select="resume/education" />
      </xsl:if>

      <xsl:if test="resume/certifications">
         <xsl:apply-templates select="resume/certifications[1]" />
      </xsl:if>

      <xsl:if test="resume/publications">
         <xsl:apply-templates select="resume/publications" />
      </xsl:if>

      <xsl:if test="resume/personalInfo">
         <xsl:call-template name="personalInfo" />
      </xsl:if>
      </div>
	 <div style="width:100%;height:80px;"/>
      </body>
      </html>
   </xsl:template>

  
</xsl:stylesheet>


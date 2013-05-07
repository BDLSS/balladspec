<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
    xmlns:oa="http://www.w3.org/ns/oa#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ns="http://www.w3.org/2006/vcard/ns#"
    
    
    >
    <xsl:preserve-space elements="*"/>
    <xsl:output method="text" encoding="iso-8859-1"/>
    <!-- author: Tanya Gray
    date: 7 May 2013
    purpose:  extract comment and label for each class and property from balladspec.rdf , output as csv file, to import into spreadsheet software and allow value updates
    
    
    -->
    
    
    <xsl:template match="/">

<xsl:text>
CLASS 

</xsl:text>
        <xsl:apply-templates mode="annotation" select="//owl:Class[@rdf:ID]"/>
     
      

<xsl:text>

PROPERTY  (LITERAL VALUE)
</xsl:text>        
        <xsl:apply-templates mode="annotation" select="//owl:DatatypeProperty"/>
   
<xsl:text>

PROPERTY (OBJECT VALUE)
</xsl:text>     
        <xsl:apply-templates mode="annotation" select="//owl:ObjectProperty"/>
    </xsl:template>
    
    
   
        
    
 <xsl:template mode="annotation" match="*">     
|<xsl:value-of select="@rdf:ID"/>|<xsl:value-of select="rdfs:label"/>|<xsl:value-of select="rdfs:comment"/>
</xsl:template>
    

    
    
    
</xsl:stylesheet>
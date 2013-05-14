<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns="http://vocab.ox.ac.uk/balladspec#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
    xmlns:oa="http://www.w3.org/ns/oa#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ns="http://www.w3.org/2006/vcard/ns#"
    >
    
    <xsl:output method="xml" indent="yes"/>
    
    
    <xsl:param name="file" select="'balladspec.xml'"/>
    
    <xsl:variable name="defs" select="document($file)"/>
    
    
    <xsl:template match="/">
        
        <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
            xmlns="http://vocab.ox.ac.uk/balladspec#"
            xmlns:owl="http://www.w3.org/2002/07/owl#"
            xmlns:dc="http://purl.org/dc/elements/1.1/"
            xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
            xmlns:oa="http://www.w3.org/ns/oa#"
            xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
            xmlns:ns="http://www.w3.org/2006/vcard/ns#"
            xml:base="http://vocab.ox.ac.uk/balladspec">
            
            <xsl:copy-of select="rdf:RDF/owl:Ontology"/>
            
            <xsl:apply-templates mode="annotation" select="/rdf:RDF/owl:Class"/>           
            <xsl:apply-templates mode="annotation" select="/rdf:RDF/owl:ObjectProperty"/>
            <xsl:apply-templates mode="annotation" select="/rdf:RDF/owl:DatatypeProperty"/>
           
                   
        </rdf:RDF>
         
    </xsl:template>
    
    
    <xsl:template mode="annotation" match="*">
        
    <xsl:variable name="id" select="@rdf:ID"/>  
    <xsl:variable name="newLabel" select="$defs//object[id=$id]/label"/>
    <xsl:variable name="newComment" select="$defs//object[id=$id]/comment"/>
     

        <xsl:copy>
            <xsl:copy-of select="@rdf:ID"/>
            <xsl:copy-of select="*[name() != 'rdfs:label' and name() != 'rdfs:comment']"/>
        <rdfs:label >
           <xsl:copy-of select="rdfs:label/@*"/>         
            <xsl:value-of select="$newLabel"/>
        </rdfs:label>
            
       <rdfs:comment>
           <xsl:copy-of select="rdfs:comment/@*"/>
           <xsl:value-of select="$newComment"/>
       </rdfs:comment>     
            
          
        </xsl:copy>
        
    </xsl:template>
    
   
    
    

    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>
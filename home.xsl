<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT" 
>  

  <xsl:output method = "html"/> 
  <xsl:param name="id" />

  <xsl:template match="/">

    <xsl:result-document href ="#home">

        <h1>"Mio nonno deportato ad Armenstein, il suo diario inedito"</h1>
        <img src="nicola.jpg"/><br/>
        <h2> Informazioni sull'opera </h2>

        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition" />
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt"/>
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/> 
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/>
        <h3>Edizione originale</h3>
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title"/>
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/>
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:publisher"/>
        <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:pubPlace"/>
        </xsl:result-document> 
    </xsl:template> 
</xsl:stylesheet> 

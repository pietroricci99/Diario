<?xml version="1.0" encoding="UTF-8" indent="yes"?>

<xsl:stylesheet version="2.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:tei="http://www.tei-c.org/ns/1.0"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT" 
      >   

    <xsl:output method = "html"/> 
    <xsl:param name="id" />

    <xsl:template match="/">
        <xsl:result-document href="#testo"> 
            <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div" />
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id=$id]">
        <xsl:value-of select="tei:p "/>
    </xsl:template>

    <xsl:template match="//tei:text/tei:body/tei:div/tei:p/tei:lb">
            <br />
    </xsl:template>
    <!--TEMPLATE PER LE CANCELLATURE-->
    <xsl:template match="//tei:del[@rend='overstrike']">
    <span style="text-decoration: line-through">
    <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER GLI ELEMENTI TERMINOLOGICI-->
    <xsl:template match="//tei:term">
        <span style="color:red">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER I NOMI PROPRI-->
    <xsl:template match="//tei:name[@type='person']">
        <span style="color: #ff00ff ">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE CHE SOTTOLINEA E COLORA DI GIALLO I TERMINI FRANCESI-->
    <xsl:template match="//tei:foreign[@xml:lang='fr']">
        <span style= "color:yellow; text-decoration:underline"> 
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE CHE SOTTOLINEA E COLORA DI GIALLO I TERMINI TEDESCHI-->
    <xsl:template match="//tei:mentioned[@xml:lang='ger']">
        <span style="color:lime, text-decoration: underline">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER I NOMI DI LUOGO-->
    <xsl:template match="//tei:placeName">
        <span style="color:green">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER LE CITAZIONI DI DANTE-->
     <xsl:template match="//tei:hi">
        <span style="Color: #0066ff">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER I TERMINI DANTESCHI -->
      <xsl:template match="//tei:term[@type='dantesco']">
        <span style="color:#ff8c66, text-decoration: underline">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER I DISCORSI DIRETTI-->
    <xsl:template match="//tei:said">
        <span style="color:Aqua">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER  LE DATE-->
    <xsl:template match="//tei:date">
        <span style="color:#ffcccc">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER LE SOSTITUZIONI DI CARATTERE-->
    <xsl:template match="//tei:del[@rend='overtype']">
        <span style="text-decoration: line-through">
        <xsl:value-of select="."/></span>
    </xsl:template>
    <!--TEMPLATE PER EVIDENZIARE I CARATTERI AGGIUNTI-->
        <xsl:template match="//tei:add">
        <span style="color:brown">
        <xsl:value-of select="."/></span>
    </xsl:template>
    
</xsl:stylesheet>
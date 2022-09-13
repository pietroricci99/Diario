<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:tei="http://www.tei-c.org/ns/1.0"
      xmlns="http://www.w3.org/1999/xhtml"> 

    <xsl:output method = "html"/> 

    <xsl:template match="/">

        <xsl:result-document href="#about"> 
            <h2> About</h2>

            <div id="title_info" class="info_list">
                  <h3>Responsabili di codifica:</h3>
                  <xsl:apply-templates select="tei:TEI/tei:teiHeader//tei:editionStmt//tei:respStmt[(contains(tei:resp, 'Codificato da:'))]/tei:persName"/>
              </div> 

            <div id="title_info" class="info_list">
                <h3>Supervisione alla codifica:</h3>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader//tei:editionStmt//tei:respStmt[(contains(tei:resp, 'Supervisionato da:'))]/tei:persName"/>
            </div> 

            <div id="publication_info" class="info_list">
                <h3>Pubblicazione e distribuzione:</h3>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader//tei:publicationStmt"/>
            </div>

            <div id="publication_info" class="info_list">
                <h3>Ente di appartenenza:</h3>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader//tei:titleStmt/tei:respStmt/tei:name"/>
            </div>

        </xsl:result-document> 
   </xsl:template> 

</xsl:stylesheet> 
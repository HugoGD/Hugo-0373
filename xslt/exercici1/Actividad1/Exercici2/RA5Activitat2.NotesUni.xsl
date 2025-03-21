<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="text" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <xsl:apply-templates select="/notes/assignatura"/>
    </xsl:template>

    <!-- Plantilla para cada asignatura -->
    <xsl:template match="assignatura">
        <!-- Añadir salto de línea antes de 'Bases de dades' -->
        <xsl:if test="nom_assignatura = 'Bases de dades'">
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
        
        <xsl:value-of select="nom_assignatura"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>--------------------</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="alumnes/alumne"/>
    </xsl:template>

    <!-- Plantilla para cada alumno -->
    <xsl:template match="alumne">
        <xsl:value-of select="nom"/>
        <xsl:text> -- </xsl:text>
        <xsl:value-of select="nota"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>

</xsl:stylesheet>

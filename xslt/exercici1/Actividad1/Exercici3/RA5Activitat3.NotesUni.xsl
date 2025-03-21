<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    .red-background {
                        background-color: red;
                    }
                </style>
            </head>
            <body>
                <h2>Programació 1</h2>
                <table>
                    <tr>
                        <th>Nom</th>
                        <th>Nota</th>
                    </tr>
                    <xsl:apply-templates select="/notes/assignatura[nom_assignatura = 'Programació 1']/alumnes/alumne"/>
                </table>

                <h2>Bases de dades</h2>
                <table>
                    <tr>
                        <th>Nom</th>
                        <th>Nota</th>
                    </tr>
                    <xsl:apply-templates select="/notes/assignatura[nom_assignatura = 'Bases de dades']/alumnes/alumne"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla para cada alumno -->
    <xsl:template match="alumne">
        <tr>
            <!-- Si la nota es menor a 5, se aplica el fondo rojo -->
            <xsl:if test="nota &lt; 5">
                <td class="red-background"><xsl:value-of select="nom"/></td>
                <td class="red-background"><xsl:value-of select="nota"/></td>
            </xsl:if>
            <xsl:if test="nota >= 5">
                <td><xsl:value-of select="nom"/></td>
                <td><xsl:value-of select="nota"/></td>
            </xsl:if>
        </tr>
    </xsl:template>

</xsl:stylesheet>

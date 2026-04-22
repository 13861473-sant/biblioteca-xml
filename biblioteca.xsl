<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteca XML</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        background-color: #f4f4f4;
                    }

                    h1, h2 {
                        color: #333;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        background-color: white;
                    }

                    th, td {
                        border: 1px solid black;
                        padding: 10px;
                        text-align: left;
                    }

                    th {
                        background-color: #333;
                        color: white;
                    }

                    .ficha {
                        margin-top: 30px;
                        padding: 15px;
                        background-color: white;
                        border: 1px solid #ccc;
                    }

                    a {
                        text-decoration: none;
                        color: blue;
                    }
                </style>
            </head>

            <body>
                <h1>Biblioteca</h1>

                <h2>Índice de Libros</h2>

                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autor</th>
                    </tr>

                    <xsl:for-each select="biblioteca/libro">
                        <tr>
                            <td>
                                <a href="#{@id}">
                                    <xsl:value-of select="titulo"/>
                                </a>
                            </td>
                            <td>
                                <xsl:value-of select="autor"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Información Completa</h2>

                <xsl:for-each select="biblioteca/libro">
                    <div class="ficha" id="{@id}">
                        <h3>
                            <xsl:value-of select="titulo"/>
                        </h3>

                        <p>
                            <strong>Autor:</strong>
                            <xsl:value-of select="autor"/>
                        </p>

                        <p>
                            <strong>Año:</strong>
                            <xsl:value-of select="anio"/>
                        </p>

                        <p>
                            <strong>Páginas:</strong>
                            <xsl:value-of select="paginas"/>
                        </p>

                        <p>
                            <strong>Sinopsis:</strong>
                            <xsl:value-of select="sinopsis"/>
                        </p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
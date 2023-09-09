<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Person List</title>
      </head>
      <body>
        <h1>People</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Age</th>
          </tr>
          <xsl:for-each select="root/person">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="age"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

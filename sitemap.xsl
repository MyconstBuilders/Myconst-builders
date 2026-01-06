<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  exclude-result-prefixes="s">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>Sitemap - Myconst Builders</title>
        <style>
          body{font-family:system-ui,Segoe UI,Roboto,Arial;margin:24px}
          table{border-collapse:collapse;width:100%}
          th,td{border:1px solid #ddd;padding:8px;text-align:left}
          th{background:#f4f4f4}
        </style>
      </head>
      <body>
        <h1>Sitemap</h1>
        <table>
          <thead>
            <tr><th>URL</th><th>Last modified</th><th>Changefreq</th><th>Priority</th></tr>
          </thead>
          <tbody>
            <xsl:for-each select="//s:url">
              <tr>
                <td><a><xsl:attribute name="href"><xsl:value-of select="s:loc"/></xsl:attribute><xsl:value-of select="s:loc"/></a></td>
                <td><xsl:value-of select="s:lastmod"/></td>
                <td><xsl:value-of select="s:changefreq"/></td>
                <td><xsl:value-of select="s:priority"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

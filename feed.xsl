---
---
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  exclude-result-prefixes="atom"
>
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <title>Web Feed • <xsl:value-of select="atom:feed/atom:title"/></title>
        <style type="text/css">
            :root {
                --white: #eaeaea;
                --black: #252a34;
                --orange: #fb802f;
                --orange-muted: #c96626;
                --wood: #bd4b00;
                --wood-muted: #6c3714;
                --green-light: #00d19d;
                --green-dark: #007053;
            }
            @font-face {
                font-family: "Atkinson-Hyperlegible";
                src: url('./assets/fonts/atkinson-hyperlegible-regular-102a.woff2');
                font-weight: 400;
                font-style: normal;
                font-display: swap;
                }
            
            @font-face {
                font-family: "Cartridge";
                src: url('./assets/fonts/Cartridge-Regular.woff2');
                font-weight: 400;
                font-style: normal;
                font-display: swap;
                }
        
            body {
                background-color: var(--white);
                color: var(--black);
                max-width:768px;
                margin:0 auto;
                font-family: "Atkinson-Hyperlegible",-apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
                font-size: 20px;
                line-height:1.5em;
            }
            section {
                margin: 30px 15px;
            }
            h1,h2,h3 {
                font-family: "Cartridge",-apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
                line-height:1.5em;
            }
            h1 {
                font-size: 30px;
                margin: .67em 0;
            }
            h2 {
                border-bottom: 1px solid var(--green-dark);
                padding-bottom: .3em;
            }
            .alert {
                padding: 0em 1em 0em 1em;
                border-radius: 4px;
                border-width: 2px;
                border-style: solid;
                border-color: var(--green-dark);
                color: var(--black);
            }
            a {
                text-decoration: underline;
                color: var(--wood);
            }
            a:visited {
                color: var(--wood-muted);
            }
            .entry h3 {
                margin-bottom:0;
            }
            .entry p {
                margin: 4px 0;
            }
        @media (prefers-color-scheme: dark) {
            :root {
                --white: #eaeaea;
                --black: #252a34;
                --orange: #fb802f;
                --orange-muted: #c96626;
                --wood: #bd4b00;
                --wood-muted: #6c3714;
                --green-light: #00d19d;
                --green-dark: #007053;
            }
            a { 
                color: var(--orange);
            }
            a:visited {
                color: var(--orange-muted);
            }
            .alert {
                border-color: var(--green-light);
                color: var(--white);
            }
            body {
                background-color: var(--black);
                color: var(--white);
            }
            h2 {
                border-bottom: 1px solid var(--green-light);
            }
            }

        </style>
      </head>
      <body>
        <main>
        <section>
          <div class="alert">
            <p>Welcome to this <strong>RSS feed</strong>! You can <strong>subscribe</strong> by copying the URL from the address bar into your favorite newsreader.</p>
            <p>Visit <a href="https://aboutfeeds.com/">About Feeds</a> to learn more about newsreaders and subscribing to feeds.</p>
            <p>To <strong>subscribe by email</strong>, you might try a feed-to-email service like <a href="https://feedrabbit.com/">Feedrabbit</a>.</p>
          </div>
        </section>
        <section>
          <xsl:apply-templates select="atom:feed" />
        </section>
        <section>
          <h2>Recent Items</h2>
          <xsl:apply-templates select="atom:feed/atom:entry" />
        </section>
        </main>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="atom:feed">
    <h1><xsl:value-of select="atom:title"/>'s Web Feed Preview</h1>
    <p>This RSS feed provides the latest posts from <xsl:value-of select="atom:title"/>'s blog.

    <a class="head_link" target="_blank">
      <xsl:attribute name="href">
        <xsl:value-of select="atom:link[@rel='alternate']/@href"/>
      </xsl:attribute>
      Visit Website &#x2192;
    </a>

    </p>
  </xsl:template>

  <xsl:template match="atom:entry">
    <div class="entry">
      <h3>
        <a target="_blank">
          <xsl:attribute name="href">
            <xsl:value-of select="atom:id"/>
          </xsl:attribute>
          <xsl:value-of select="atom:title"/>
        </a>
      </h3>
      <p>
        <xsl:value-of select="atom:summary"  disable-output-escaping="yes" />
      </p>
      <small>
        Published: <xsl:value-of select="atom:updated" />
      </small>
    </div>
  </xsl:template>

</xsl:stylesheet>
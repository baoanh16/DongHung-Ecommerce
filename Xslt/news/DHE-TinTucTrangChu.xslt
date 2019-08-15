<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="wrapper">
			<div class="row no-gutters">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
			<div class="button">
				<a href="/blog">Xem tất cả</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6 item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<div class="small">
							<span>blog</span>
						</div>
						<div class="title">
							<p>
								<xsl:value-of select="Title"></xsl:value-of>
							</p>
						</div>
						<div class="time">
							<span>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</span>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
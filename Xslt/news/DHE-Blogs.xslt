<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="ajaxresponse">
			<div class="row no-gutters ajaxresponsewrap">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				<xsl:if test="/NewsList/NextPageUrl!=''">
					<div class="viewAll">
						<a class="ajaxpagerlink">
							<xsl:attribute name="href">
								<xsl:value-of select="/NewsList/NextPageUrl" />
							</xsl:attribute>
							<em class="mdi-arrow-down mdi"></em>
						</a>
					</div>
				</xsl:if>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6 blog-item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Title"></xsl:value-of>
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
						<div class="title">
							<h5>
								<xsl:value-of select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h5>
						</div>
						<div class="time">
							<p>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<section class="dh-tuyendung-1">
				<div class="dh-container">
					<div class="item">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2">
			<section class="dh-tuyendung-2">
				<div class="dh-container">
					<div class="dh-wrapper">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<div class="row list-item">
							<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="row no-gutters">
			<div class="col content">
				<h5>
					<xsl:value-of select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h5>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="row no-gutters">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-lg item">
			<figure>
				<div class="icon">
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
					<h5>
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>
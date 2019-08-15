<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="breadcrumb-banner">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="title">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>